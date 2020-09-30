! --------- Declaration Zone -----------

PROGRAM example4

IMPLICIT NONE

INTEGER :: age

! ---------- Execution Zone ------------

read(5, *) age

if (age >= 18) then
    write(6,*) "I can drive now"
else
    write(6,*) "I have to wait to drive"
endif

! ----------- Ending zone --------------

STOP
END PROGRAM example4
