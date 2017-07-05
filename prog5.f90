PROGRAM coulomb

! Worksheet 3
! prog5.exe
! Calculates electric field at origin due to charged particles on unit circle


IMPLICIT NONE
INTEGER n

EXTERNAL charges

PRINT *, 'Number of Charges'
READ *, n

CALL charges(N)

END PROGRAM coulomb

!==========================================================

SUBROUTINE charges(N)

IMPLICIT NONE

REAL, ALLOCATABLE :: C(:), X(:), Y(:)

INTEGER n, j, i
REAL a, rand, interval

interval = (2*3.14159265358979323)/n

PRINT *, 'Interval = ', interval

ALLOCATE(x(N),C(N),Y(N))

DO j=1, n
        a=RAND()/100000
        C(J) = a
END DO

DO j=1, n
        a=COS(interval*j)
        X(j)=a
END DO

DO j=1, n
        a=SIN(interval*REAL(j))
        Y(j)=a
END DO

CALL efield(n,x,y,c)

DEALLOCATE(X,Y,C)

END SUBROUTINE charges

!======================================

Subroutine efield(n,x,y,c)

IMPLICIT none

REAL  X(n), Y(n), C(n)
REAL dEX, dEY
REAL, ALLOCATABLE :: P(:)
REAL EX(N), EY(N)
INTEGER i, n
REAL E, k, position
REAL sumx, sumy

k=1
e=0
sumx=0
sumy=0

ALLOCATE(P(N))

DO i=1,n

      position = SQRT( (0-X(i))**2 + (0-Y(i))**2 )
      P(I)=position

	PRINT *, ' X() ', ' Y() ', ' P() ', ' C() '
	PRINT *, X(i), Y(i), P(i), C(i)

	dEX =( k*C(i)* X(i) )/(P(i)*P(i)*P(i))
	dEY =( k*C(i)* Y(i) )/(P(i)*P(i)*P(i))

	sumx=sumx+dEX
	sumy=sumy+dEY


	!PRINT *, 'EX = ', dEX
	!PRINT *, 'EY = ', dEY

END DO

PRINT *, 'Sum of force in X direction = ', sumx
PRINT *, 'Sum of force in Y direction = ', sumy


DEALLOCATE(P)

END SUBROUTINE efield
