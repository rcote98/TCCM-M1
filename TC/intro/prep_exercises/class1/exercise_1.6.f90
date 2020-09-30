! --------- Declaration Zone -----------

program exercise6

implicit none

character(len=4) :: char4
character(len=5) :: char5
character(len=6) :: char6
character(len=7) :: char7
character(len=8) :: char8
character(len=9) :: char9

! ---------- Execution Zone ------------

char4 = "LENGTH"
char5 = "LENGTH"
char6 = "LENGTH"
char7 = "LENGTH"
char8 = "LENGTH"
char9 = "LENGTH"

write(6, *) char4
write(6, *) char5
write(6, *) char6
write(6, *) char7
write(6, *) char8
write(6, *) char9

write(6, *) ""

char4 = "VELOCITY"
char5 = "VELOCITY"
char6 = "VELOCITY"
char7 = "VELOCITY"
char8 = "VELOCITY"
char9 = "VELOCITY"

write(6, *) char4
write(6, *) char5
write(6, *) char6
write(6, *) char7
write(6, *) char8
write(6, *) char9


! ----------- Ending zone --------------

stop
end program exercise6
