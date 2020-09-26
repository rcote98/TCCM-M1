! --------- Declaration Zone -----------

PROGRAM example2

IMPLICIT NONE

REAL :: days, months

! ---------- Execution Zone ------------

read(5,*) days 
months = days/30.0
write(6,*) months

! ----------- Ending zone --------------

STOP
END PROGRAM example2
