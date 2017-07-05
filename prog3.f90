PROGRAM innerproduct


! Worksheet 2
! prog3.exe
! calculates inner product of vector of size n

IMPLICIT NONE

INTEGER i
INTEGER j
REAL a
REAL rand
REAL dot
INTEGER n

REAL, ALLOCATABLE :: X(:), Y(:)

PRINT *, 'Length of Vector'
READ *, n

OPEN(10,FILE='prog3results.log')

DO j=1, n
ALLOCATE (X(j), Y(j))

	DO i=1, j
		X(I) = 1
		! PRINT *, 'X(',I,') =', X(I)
	END DO

	DO i=1, j
		A=RAND()*2-1
		Y(I) = A
		! PRINT *, 'Y(',I,') =', Y(I)
	END DO

DOT= DOT_PRODUCT(X,Y)
WRITE(10,*) j, dot
DEALLOCATE(X,Y)

END DO
        
CLOSE(10)

END PROGRAM innerproduct
