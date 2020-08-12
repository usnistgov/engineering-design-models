      PROGRAM SPINSUM
C
C      Spinsum
C
C      Sums heat fluxes for individual spins to a single time value.
C
C      Create an array into which to sum the heat fluxes for each element.
C      We must determine the number of calculation points per spin by
C      reading file spinnum.
C
      dimension heat(20,10000), time(2,20), listelem(50)
      character*90 longline
      character*80 line
      data heat/200000*0.0/
C
      open(unit=1,file='modlcf')
      open(unit=2,file='MODLCF')
      open(unit=3,file='spinnum')
      open(unit=4,file='orbtemp')
C
C
C
      read(3,'(7x,i4)')ncalc
      print *,' Number of calc points is ',ncalc
      read(3,'(i5)')listlen
      read(3,'(i5)')(listelem(i),i=1,listlen)
C
C      Get times from orbtemp. Start by skipping orbit cards, then read period.
C      then get times.
C
      read(4,'(a90)')longline
      read(4,'(a90)')longline
      read(4,'(a90)')longline
      read(4,'(e20.10)')p
      deltat=p/500.0
      ntimes=0
      do 10 i=1,1000000
        read(4,'(a80)',end=15)line
        if(line(1:6).eq.'orbpos')then
          read(line,'(7x,e15.8,1x,e15.8)')tstart,tfin
          ntimes=ntimes+1
          if (ntimes.gt.20)then
            goto 1000
          end if
C
C            Open up times slightly to allow for rounding errors etc.
C
          dt=(tfin-tstart)*.05
          if (tstart.eq.0.0)then
            time(1,ntimes)=tstart
          else
            time(1,ntimes)=tstart-dt
          end if
          time(2,ntimes)=tfin+dt
        end if
10    continue
15    continue
C
C        Report calculation times
C
      print *,'Flux data available for the following time ranges:'
      print '(e12.5,'' - '',e12.5)',(time(1,i),time(2,i),i=1,ntimes)
      rewind 1
C
C
C
C      Now process lines in modlcf.
C
      ntimflag=0
20    continue
        read(1,'(a80)',end=100)line
        if(line(1:3).eq.'HTF')then
          read(line,'(3x,I5,5x,2e11.4)')ielem,q,t
          iflag1=0
          do 30 i=1,ntimes
            if(t.ge.time(1,i).and.t.le.time(2,i))then
              heat(i,ielem)=heat(i,ielem)+q
              iflag1=1
            end if
30        continue 
          if(iflag1.eq.0)then
            print *, 'Error - no time match. Elem ',ielem,' Time ',t
          end if
        else if(line(1:3).eq.'TIM' .and. ntimflag.eq.0)then
C
C        Write out loads as HTF cards
C
          do 50 i=1,10000
            do 40 j=1,ntimes
              if (heat(j,i).ne.0.0)then
                q=heat(j,i)/ncalc
                write(2,'(''HTF'',i5,5x,2e11.4)')i,q,time(1,j)
              end if
40          continue
50        continue
          ntimflag=1
C
C         Write out times as TIM cards
C
          do 60 i=1,ntimes
            write(2,'(''TIM'',10x,e11.4)')time(1,i)
60        continue
C
C         End of translation
C
          goto 100
        else
          call strout(2,line)
        end if
      goto 20
100   continue
C
C            Write output for selected elements in a format
C            suitable for importing to a spreadsheet.
C
      if(listlen.ne.0)then
        open(unit=4,file='loadout')
        izero=0
        write(4,'(i5,'','',20(e11.4,'',''))')izero,
     +              (time(1,i),i=1,ntimes)
        do 120 j=1,listlen
          write(4,'(i5,'','',20(e11.4,'',''))')listelem(j),
     +               (heat(i,listelem(j)),i=1,ntimes)
120     continue
      end if
      stop
c
C
C
1000  print *,'Error - too many orbit times'
      end
C     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      SUBROUTINE STROUT(LUN,STRING)
C
C          This subroutine write a caharacter string
C          without trailing spaces.
C
      CHARACTER*(*) STRING
      CHARACTER*120  OUTPUT
      CHARACTER*1   OUTEQV(120)
      EQUIVALENCE   (OUTPUT,OUTEQV(1))
      OUTPUT=STRING
      LEN=ISLEN(OUTPUT)
      WRITE(LUN,'(120A1)')(OUTEQV(I),I=1,LEN)
      RETURN
      END
      FUNCTION ISLEN(STRING)
C
C
C   *******                                          *******
C   * TMG *                                          * TMG *
C   *******                                          *******
C
C
C             Written by:-C.J.Pye
C                         MAYA Heat Transfer Technologies Ltd.
C                         Sept,1986
C
C            String Length
C            -------------
C        This function returns the length of a string
C        that contains characters. The string is scanned from
C        right to left, if a character is not a space
C        then ISLEN is set to its position
C
C::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
C:             :       :                                          :
C: Variable    : Type  :            Decription                    :
C:             :       :                                          :
C::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
C:             :       :                                          :
C: STRING      : C**   :  The string to be scanned                :
C:             :       :                                          :
C::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
C     INTEGER ISLEN
      CHARACTER*(*) STRING
      DO 10 I=LEN(STRING),1,-1
      IF(STRING(I:I).NE.' ') GOTO 20
10    CONTINUE
      ISLEN=0
      RETURN
20    ISLEN=I
      RETURN
      END

