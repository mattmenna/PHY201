PROGRAM diagonal


! Worksheet 3
! prog4sub.exe
! repeated operations on array with two diagonals, one above and one below the major diagonal
! also uses subroutines

IMPLICIT NONE
EXTERNAL normalize

INTEGER i, j, n, it, nit

REAL, ALLOCATABLE :: X(:,:), Y(:), YN(:)
PRINT *, 'Size of array N (Odd) ?'
READ *, n

ALLOCATE (X(N,N))
ALLOCATE (Y(N))
ALLOCATE (YN(N))

DO i=1, n-1
	X(i, i+1) =1
	X(i+1, i) =1
END DO

y=0
y((n+1)/2) = 1

PRINT *, 'How many iterations?'
READ *, nit

CALL normalize(X, Y, YN, nit,n )

END PROGRAM diagonal

!=======================================================

SUBROUTINE normalize(X, Y, YN, nit, n)

IMPLICIT NONE

REAL :: X(n,n), Y(n), YN(n)
REAL norm
INTEGER i, j, n, it, nit

OPEN(10,FILE='prog4subresults.log')

DO it=1, nit

	yn=MATMUL(X,Y)
	norm=0

	DO i=1, n
		norm = norm+YN(I)
	END DO

	yn= yn/norm
	y=yn

	Do I=1, N
		WRITE(10,*) i, YN(I)
	END DO

	WRITE(10,*) ' '

END DO

CLOSE(10)

END SUBROUTINE normalize