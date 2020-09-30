! --------- Declaration Zone -----------

PROGRAM example1

IMPLICIT NONE

INTEGER :: a
REAL :: b, suma
character(len=20) :: c

! ---------- Execution Zone ------------

a = 3
b = 5.1
c = "first example"

suma = a + b

write(6,*) "The values of each declared variable are:"
write(6,*) a, b, c
write(6,*) "The sum of variables a and b is:"
write(6,*) suma

! ----------- Ending zone --------------

STOP
END PROGRAM example1
