! --------- Declaration Zone -----------

program exercise7

implicit none

real(4) :: a, b, c, d, suma

! ---------- Execution Zone ------------

a = 1.4
b = 2.3
c = 5.3
d = 2.4

suma = a**2 + b**2 + c**2 + d**2

write(6,*) "Squared sum result:", suma

! ----------- Ending zone --------------

stop
end program exercise7
