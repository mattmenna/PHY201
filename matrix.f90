MODULE matrix

IMPLICIT none

CONTAINS

!===============================================

SUBROUTINE makematrix(L,S,NEWS)

IMPLICIT NONE
INTEGER I,J,L
INTEGER :: S(L,L)
INTEGER :: NEWS(L+2,L+2)

DO i=1, L+2
	DO j=1, L+2
		IF(i.eq.1) THEN
			NEWS(1,j)=0
		ELSE IF(i.eq.L+2) THEN
			NEWS(L+2,j)=0
		ELSE IF(j.eq.1) THEN
			NEWS(i,1)=0
		ELSE IF(j.eq.L+2) THEN
			NEWS(i,L+2)=0
		ELSE 
			NEWS(i,j)=S(i-1,j-1)
		END IF
	END DO 
END DO

END SUBROUTINE makematrix

!==============================================

SUBROUTINE randomspin(L,NEWS,X,Y)

IMPLICIT NONE

INTEGER L,X,Y
INTEGER :: NEWS(L,L)
REAL rand

x=Ceiling(rand()*L)
y=Ceiling(rand()*L)

IF(x.eq.1) x=2
IF(y.eq.1) y=2

END SUBROUTINE randomspin

!==============================================

SUBROUTINE energy(x,y,L,ktj,NEWS)
	
IMPLICIT NONE

INTEGER x,y,i,j,L
REAL boltzman, ktj,e,eprime
INTEGER :: NEWS(L,L)
REAL rand
INTEGER top,bot,left,right
INTEGER spin

left=NEWS(x-1,y)
right=NEWS(x+1,Y)
top=NEWS(x,Y-1)
bot=NEWS(x,Y+1)

	e=left
	e=right+e
	e=top+e
	e=bot+e
	e=NEWS(x,y)*e
	e=ktj*e
	!PRINT *, 'E= ', e

IF( NEWS(x,y).eq.1 ) THEN 
	spin=NEWS(x,y)
	NEWS(x,y)= spin-2
ELSE IF( NEWS(x,y).eq.-1 ) THEN 
	spin=NEWS(x,y)
	NEWS(x,y)= spin+2
END IF

	eprime=left
	eprime=right+eprime
	eprime=top+eprime
	eprime=bot+eprime
	eprime=NEWS(x,y)*eprime
	eprime=ktj*eprime

	boltzman=exp( (e-eprime)/ktj )

IF( boltzman.lt.rand() ) THEN

	IF( NEWS(x,y).eq.1 ) THEN 
		spin=NEWS(x,y)
		NEWS(x,y)= spin-2
	ELSE IF( NEWS(x,y).eq.-1 ) THEN 
		spin=NEWS(x,y)
		NEWS(x,y)= spin+2
	END IF

END IF

END SUBROUTINE energy

!===============================================

SUBROUTINE magnet(x,y,L,ktj,NEWS,mag)
	
IMPLICIT NONE

INTEGER x,y,i,j,L
REAL boltzman, ktj,e,eprime
INTEGER :: NEWS(L,L)
REAL rand, mag, mag2

mag=0

DO i=1, L
	DO j=1, L
		mag=mag+NEWS(i,j)
	END DO
END DO

END SUBROUTINE magnet

END MODULE matrix
