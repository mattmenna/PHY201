PROGRAM innerproduct

! Worksheet 3
! prog3sub.exe
! calculates inner product of vector of size n
! also uses subroutines


IMPLICIT NONE
EXTERNAL generatevector

INTEGER n

PRINT *, 'Upper Limit'
READ *, n

OPEN(10,FILE='prog3subresults.log')
CALL generatevector(N)
CLOSE(10)

END PROGRAM innerproduct

!=======================================================

SUBROUTINE generatevector(N)

IMPLICIT NONE

REAL RAND
REAL, ALLOCATABLE :: X(:), Y(:)
INTEGER j, i, n
REAL a

DO j=1, N

	ALLOCATE (X(J), Y(J))

	DO i=1, j
		X(I) = 1
	END DO

	DO i=1, j
		a=rand()*2-1
		Y(I) = a
	END DO

	CALL DOT(J,X,Y)
	DEALLOCATE(X,Y)

END DO

END SUBROUTINE generatevector

!=========================

SUBROUTINE DOT(J,X,Y)

IMPLICIT NONE

REAL dotprod
INTEGER j
REAL :: x(j), Y(j)

dotprod= DOT_PRODUCT(X,Y)
WRITE(10,*) j, dotprod

END SUBROUTINE DOT
