PROGRAM sum

! Worksheet 1
! prog2.exe
! sums 1/k^2 for three different values of k (3,10,100)

IMPLICIT NONE

REAL x
INTEGER i, k

PRINT *, 'Calculates sum of 1/k^2'

x=0
k=3

DO i=1,k
	x = x + 1/FLOAT(i)**2
END DO
PRINT *, 'If K=3'
PRINT *, 'Sum = ', x

x=0
k=10

DO i=1,k
	x = x + 1/FLOAT(i)**2
END DO
PRINT *, 'If K=10'
PRINT *, 'Sum = ', x

x=0
k=100

DO i=1,k
	x = x + 1/FLOAT(i)**2
END DO
PRINT *, 'If K=100'
PRINT *, 'Sum = ', x

END PROGRAM sum
