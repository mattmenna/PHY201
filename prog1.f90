PROGRAM math

! Worksheet 1
! prog1.exe
! performs mathematical operations on two integers

IMPLICIT NONE
INTEGER x,y,result 

PRINT *, 'Input two integers'
READ *, x, y

PRINT *, x, '+', y ,' = ', x+y
PRINT *, x, '-', y ,' = ', x-y
PRINT *, x, '*', y ,' = ', x*y
PRINT *, x, '/', y ,' = ', FLOAT(x)/FLOAT(y)

END PROGRAM math
