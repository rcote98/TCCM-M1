! --------- Declaration Zone -----------

program exercise5

implicit none

real(4) :: a, b, c, d

integer:: suma_int, prod_int
real(4) :: suma_real, prod_real
real(8) :: suma_double, prod_double
complex :: suma_complex, prod_complex

! ---------- Execution Zone ------------

a = 1.4
b = 2.3
c = 5.3
d = 2.4

suma_int = a+b+c+d
prod_int = a*b*c*d

write(6,*) "INTEGER VARIABLES:"
write(6,*) "Sum result:", suma_int
write(6,*) "Product result:", prod_int

suma_real = a+b+c+d
prod_real = a*b*c*d

write(6,*) ""
write(6,*) "REAL VARIABLES:"
write(6,*) "Sum result:", suma_real
write(6,*) "Product result:", prod_real

suma_double = a+b+c+d
prod_double = a*b*c*d

write(6,*) ""
write(6,*) "DOUBLE PRECISION VARIABLES:"
write(6,*) "Sum result:", suma_double
write(6,*) "Product result:", prod_double

suma_complex = a+b+c+d
prod_complex = a*b*c*d

write(6,*) ""
write(6,*) "COMPLEX VARIABLES:"
write(6,*) "Sum result:", suma_complex
write(6,*) "Product result:", prod_complex

! ----------- Ending zone --------------

stop
end program exercise5
