      PROGRAM ORBTIM
C
C     Modified Sept, 11 1992 to improve handling of eccentirc orbits.
C                                                    C.J. Pye
C
C     This program reads orbit data from a file 'orbpos' and then
C     writes it with additional information to 'orbtemp'.
C
C     The additional information is used to define a complete
C     spacecraft spin at each orbit calculation point.
C
      real time(100),timef(100),theta(100),thetaf(100)
      real timeinit(100),thetainit(100)
      integer iflag(100)
      CHARACTER*90 LINE
      data iflag/100*0/
C
      PI=2*ASIN(1.0)
C
C       Open files: orbpos for input
C                   orbtemp for output
C                   spinnum for data
C
      open(unit=1,file='orbpos')
      open(unit=2,file='orbtemp')
      open(unit=3,file='spinnum')
C
C      Copy first line of spinnum to output
C
      read(3,'(A90)')line
      if(line(1:7).ne.'numspin') then
        print *, 'Error in file spinnum'
        stop
      end if
      read(line(8:),'(i10)')numcalc
      rcalc=numcalc
      write(2,'(A90)')line
C
C      Copy first line of input file
C
      read(1,'(A90)')line
      write(2,'(A90)')line
C
C       Read period from input.
C
      read(1,'(E12.5/F12.5)')p,exc
C
C         Minimum time separation (dtmin) is period*.002
C
      dtmin=p*.002
C
C      Now skip ORBADD line and then process each time
C
      read(1,'(A90)')line
      write(2,'(A90)')line
C
C         Read eclipse points
C
      read(1,*)etimes,ethetas
      read(1,*)etimef,ethetaf
C
C       Write period to output file.
C
      write(2,'(e20.10)')p
C
C        Note that next line contains TIMEI value so we must store it
C        separately.
C
      numpos=0
      do 100 i=1,100000
        read(1,5000,end=200)timed,thetad
        numpos=numpos+1
        if(numpos.gt.100)then
          print *, 'Too many calculation points in orbit'
          stop
        end if
        time(numpos)=timed
        timeinit(numpos)=timed
        theta(numpos)=thetad
        thetainit(numpos)=timed
100   continue
200   continue
C
C            Now adjust time around eclipse.
C
      do 300 i=2,numpos
        if(theta(i).gt.ethetas.and.theta(i-1).lt.ethetas)then
C
C           This and previous point straddle eclipse start.
C            Record this in iflag. Set reference to eclipse start.
C
          iflag(i)=2
          iflag(i-1)=1
          thetaref=ethetas
        else if(theta(i).gt.ethetaf.and.theta(i-1).lt.ethetaf)then
C
C           This and previous point straddle eclipse finish.
C            Record this in iflag. Set reference to eclipse finish.
C
          iflag(i)=4
          iflag(i-1)=3
          thetaref=ethetaf
        end if
        if(iflag(i).ne.0)then
C
C             Calculate reference time from eclipse theta value.
C
        call tim(thetaref,exc,p,time(1),timeref)

C
C             We must adjust times to that spins occur completely before
C             or completely after eclipse. However, we must work in theta not
C             time for setting calculation points. Therefore calculate
C             dtheta/dt. Do not do this from read in values as they are
C             truncated to fit format.
C
          thetatemp=thetaref-.1
          call tim(thetatemp,exc,p,time(1),timetemp)
          dthetadt=.1/(timeref-timetemp)
C
C             Set calculation points dtmin before and after eclipse.
C
          dthetamin=dthetadt*dtmin
          theta(i-1)=thetaref-dthetamin
          call tim(theta(i-1),exc,p,time(1),time(i-1))
          theta(i)=thetaref+dthetamin
          call tim(theta(i),exc,p,time(1),time(i))
        end if
300   continue  
C
C        Now we must scan all points and check that there are adequate gaps.
C
C        The general approach is that if an existing calculation point is 
C        too near an eclipse point then drop it.
C
      do 400 i=2,numpos
        if(iflag(i).eq.1.or.iflag(i).eq.3)then
C
C           The spacecraft is starting an eclipse change. Check time
C            before.
C
          dt=time(i)-time(i-1)
          if(dt.lt.dtmin)then
            iflag(i-1)=-1
          end if
        else if(iflag(i).eq.2.or.iflag(i).eq.4)then
C
C           The spacecraft is starting an eclipse change. Check time
C            before.
C
          dt=time(i+1)-time(i)
          if(dt.lt.dtmin)then
            iflag(i+1)=-1
          end if
        end if
400   continue
C
C                Now calculate thetaf and timef for each point.
C                Also calculate spin rates.
C
      do 500 i=1,numpos
      if(time(i).ge.p)then
        iadd=1
      else
        iadd=0
      end if

C
C       Thetaf for the orbit segment is theta+.08 degrees
C
        thetaf(i)=theta(i)+.08
C
C     Get theta and thetaf in radians
C
550   continue
C   
C       Now calculate the time that corresponds to thetaf
C
        call tim(thetaf(i),exc,p,timei,timef(i))
        call tim(theta(i),exc,p,timei,time(i))
C
C         Adjust for theta > 360
C
        if(iadd.eq.1)then
          time(i)=time(i)+p
          timef(i)=timef(i)+p
        end if
C
C         Given that TMG writes times to 5 decimal places the difference
C         between time and timef must be > p/1000. If not then recalculate
C         thefaf and try again. Add .01 to thetaf and retry.
C
        if((timef(i)-time(i)).lt.(dtmin/2.0))then
          thetaf(i)=thetaf(i)+0.02
          goto 550
        end if
C
C       Between time and timef the spacecraft must rotate 360 degrees.
C       The current spin rate should be set to 360 degrees in 1 orbit.
C       The required spin rate in degrees per orbit is:
C 
C                     360 * p
C                  ------------
C                  (timef-time)
C
C       The spin rate ratio, spinr, is therefore:
C
C                      p
C                  ------------
C                  (timef-time)
C 
        spinr=p/(timef(i)-time(i))
C
C       This however gives us a calculation point at the start and at the
C       end of the spin. To avoid this set:
C
C           spinr = spinr * ncalc - 1
C                          -------
C                            ncalc
C
C       where ncalc is the user specified number of calculation intervals 
C       per spin.
C
      spinr=spinr*(rcalc - 1.0)/(rcalc)
C
C       Now write data to output file so that awk can process it. Report
C       changes as we go.
C
        if(iflag(i).eq.-1)then
          write(*,5030)time(i)
        else 
          if(iflag(i).gt.0)then
            write(*,5020)timeinit(i),thetainit(i),time(i),theta(i)
          end if
          write(2,5010)time(i),timef(i),theta(i),thetaf(i),spinr
        end if
500   continue         
      stop
C
C         Formats
C
5000  FORMAT(2x,E12.5,6x,f7.2)
5010  format('orbpos ',6(e15.8,1x))
5020  format(' Calculcation point (time=',e13.5,' theta=',e13.5,')'/
     +       ' moved to           (time=',e13.5,' theta=',e13.5,')'/)
5030  format(' Calculation point at time ',e13.5,' deleted'/)
      end

      SUBROUTINE TIM(ANGDEG,EXC,P,TIMEI,TIME)
C
C     THIS CALCULATES THE TIME AS A FUNCTION OF THE
C     ORBIT PERIOD AND ECCENTRICITY.
C     NOTE:  WHEN TETA BECOMES LARGER THAN 180 DEG
C          THE FOLLOWING EQUATION IS NOT VALID.
C         EQUATION TO BE USED BECOMES:
C        TIME= (P + TIMEI) - T(TETA) WHERE TETA A NEW ANGLE
C        = 360 - (TETA > 180).
C
      PI=2*ASIN(1.0)
      ANG=ANGDEG*PI/180
      IF(ABS(ANG-PI).LT.1.E-6)ANG=PI
      HANG=ANG/2.0
      TI=TIMEI
      F=1.0
      IF(HANG.GE.(PI/2.0))THEN
        HANG=PI-HANG
        TI=P+TIMEI
        F=-1.0
      END IF
      E=TAN(HANG)
      E=E*SQRT((1-EXC)/(1+EXC))
      E=2*ATAN(E)
      TIME=E-EXC*SIN(E)
      IF(TIME.LT.0.0.AND.ANG.EQ.PI)TIME=ABS(TIME)
      TIME=TI+F*(P/(2*PI))*TIME
      RETURN
      END
