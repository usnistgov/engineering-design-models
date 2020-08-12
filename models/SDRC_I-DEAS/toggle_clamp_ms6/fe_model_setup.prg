C :
C : ----- Change Task to Boundary Conditions
C : ----- Create a FE model of the current part.
K : /TA BO
K : /cr re
K :  GEO Y
K : OKAY
K : $
C :
C : ----- Turn off the display of nodes and elements.
K : /do df tx1 vi nv : appl canc canc
K : /do df tx1 vi ev : appl canc canc
C :
E : **** END OF SESSION ****
