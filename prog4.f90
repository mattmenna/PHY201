PROGRAM diagonal


! Worksheet 2
! prog4.exe
! repeated operations on array with two diagonals, one above and one below the major diagonal

IMPLICIT NONE

INTEGER i, j, n, it, nit
REAL norm

REAL, ALLOCATABLE :: X(:,:), Y(:), YN(:)
PRINT *, 'Size of array N (Odd) ?'
READ *, n

ALLOCATE (X(N,N))
ALLOCATE (Y(N))
ALLOCATE (YN(N))

OPEN(10,FILE='prog4results.log')

DO i=1, n-1
	X(I, I+1) =1
	X(I+1, I) =1
END DO

y=0
y((n+1)/2) = 1

PRINT *, 'How many iterations?'
READ *, nit

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

END PROGRAM diagonal
