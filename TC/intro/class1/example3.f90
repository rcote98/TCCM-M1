! --------- Declaration Zone -----------

PROGRAM example3

IMPLICIT NONE
!
type :: student
    character(len=20) :: lastname
    integer :: year_master
    real :: row
end type
!

type(student) pepito

! ---------- Execution Zone ------------

pepito%lastname = "Herrero"
pepito%year_master = 8
pepito%row = 0

write(6,*) pepito

! ----------- Ending zone --------------

STOP
END PROGRAM example3
