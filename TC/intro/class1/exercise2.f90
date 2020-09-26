! --------- Declaration Zone -----------

program exercise2

implicit none

integer(2) :: i
integer(4) :: suma

! ---------- Execution Zone ------------

suma = 0

do i = 1,100
    suma = suma + i
end do

write(6,*) "Sum result:", suma

! ----------- Ending zone --------------

stop
end program exercise2
