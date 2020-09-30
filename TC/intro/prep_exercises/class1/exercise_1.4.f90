! --------- Declaration Zone -----------

program exercise4

implicit none

real(4) :: a, b, c, d, suma, prod

! ---------- Execution Zone ------------

a = 1.4
b = 2.3
c = 5.3
d = 2.4

suma = a+b+c+d
prod = a*b*c*d

write(6,*) "Sum result:", suma
write(6,*) "Product result:", prod

! ----------- Ending zone --------------

stop
end program exercise4
