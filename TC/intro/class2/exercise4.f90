! --------- Declaration Zone -----------

program exercise4

implicit none

integer :: i, ndim
integer :: input, output

real(4), allocatable :: vec(:)

! ---------- Execution Zone ------------

output = 10
input = 12

open(unit=input, file="exercise4.input", form="formatted")
read(input,*) ndim

allocate(vec(ndim))
read(input,*) vec

close(input)

do i=1,ndim
    if (vec(i)<5) then
        vec(i) = 5.0
    endif
enddo

! write the output
open(unit=output, file = "exercise4.out", form ="formatted")
write(output,fmt="(1X10F4.1)") vec

! ----------- Ending zone --------------

stop
end program exercise4
