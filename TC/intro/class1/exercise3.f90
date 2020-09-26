! --------- Declaration Zone -----------

program exercise3

implicit none

integer(2) :: i
integer(4) :: suma, prod

! ---------- Execution Zone ------------

suma = 0
prod = 1

do i = 1,10
    suma = suma + i
    prod = prod*i
end do

write(6,*) "Sum result:", suma
write(6,*) "Product result:", prod

! ----------- Ending zone --------------

stop
end program exercise3
