! --------- Declaration Zone -----------

program exercise3

implicit none

integer :: i, n1, n2
integer :: input, output

integer(4), allocatable :: vec1(:)
real(4), allocatable :: vec2(:)

! ---------- Execution Zone ------------

output = 10
input = 12

open(unit=input, file="exercise3.input", form="formatted")
read(input,*) n1, n2
close(input)

open(unit=output, file = "exercise3.out", form ="formatted")

! allocate the vectors
allocate(vec1(n1), vec2(n2))

! assign vector values
do i=1,n1
    vec1(i) = i
enddo

do i=1,n2
    vec2(i) = i*1.1
enddo

! write the output
write(output,fmt="(1X10I4)") vec1
write(output,fmt="(1X9F4.1)") vec2

! ----------- Ending zone --------------

stop
end program exercise3
