! --------- Declaration Zone -----------

program exercise8

implicit none

integer(2) :: i
integer(8) :: factorial

! ---------- Execution Zone ------------

write(6,*) "Integer", "           ", "Factorial"

factorial = 1
do i = 1,20
    factorial = factorial*i
    write(6,*) i, factorial
end do

! ----------- Ending zone --------------

stop
end program exercise8
