! --------- Declaration Zone -----------

program exercise2

implicit none

integer :: input5, output
real(4) :: buf
integer :: stat, ic
real(4), allocatable :: vec(:)

! ---------- Execution Zone ------------

input5 = 16
output = 17

! count the number of lines
open(unit=input5, file="input5.dat", action="read", form="formatted")
ic = 0
do
    read(input5, *, iostat=stat) buf
    if (stat /= 0) exit
    ic = ic +1
enddo
write(*,*) "number of lines:", ic

! store everything in a vector
allocate(vec(ic))
rewind(input5)
read(input5, *) vec(:)

! calculate the square root
vec = sqrt(abs(vec))

! write the output 
open(unit=output, file = "exercise2.out", action="write", form ="formatted")
write(output, fmt="(1F6.3)") vec

! ----------- Ending zone --------------

stop
end program exercise2
