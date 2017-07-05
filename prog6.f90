PROGRAM montecarlo

USE matrix

INTEGER L,dim,spin,rspin
INTEGER e,x,y,i,j,k,iterations
INTEGER, ALLOCATABLE :: S(:,:)
INTEGER, ALLOCATABLE :: NEWS(:,:)
REAL ktj, mag

PRINT *, 'MONTECARLO SIMULATION'
PRINT *, 'SIZE OF LATTICE'
READ *, L
PRINT *, 'kt/J [.5 and 2] '
READ *, ktj
PRINT *, 'NUMBER OF ITERATIONS'
READ *, iterations

OPEN(10,FILE='prog6results.log')

ALLOCATE(S(L,L))
ALLOCATE(NEWS(L+2,L+2))
S=1

CALL makematrix(L,S,NEWS)

L=L+2

DO i=1, iterations
	CALL randomspin(L,NEWS,X,Y)
	CALL energy(X,Y,L,ktj,NEWS)
	CALL magnet(X,Y,L,ktj,NEWS,mag)
	WRITE(10,*) i,mag
END DO

DEALLOCATE(S,NEWS)

END PROGRAM montecarlo

