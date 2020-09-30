! --------- Declaration Zone -----------

program exercise1

implicit none

integer :: i, ndim
integer :: input, output

real(4), parameter :: pi = 3.1415927

real(4), allocatable :: vec1(:), prod(:)
integer(4), allocatable :: vec2(:)


! ---------- Execution Zone ------------

output = 10
input = 12

! read input 
open(unit=input, file="exercise1.input", form="formatted")
read(input,*) ndim
close(input)

! allocate the vectors
allocate(vec1(ndim), vec2(ndim), prod(ndim))

! assign values to the vectors
do i = 1,ndim
    vec1(i) = i*pi
    vec2(i) = i
    prod(i) = i*i*pi
enddo

! write the output
output = 10
open(unit=output, file = "exercise1.out", form = "formatted")

! sum of the elements
write(output,*) "sums:", sum(vec1), sum(vec2)
write(output,*) ""

! vector sum
write(output,*) "vector sum:"
write(output, fmt="(9F7.3)") vec1 + vec2
write(output,*) ""

! dotwise product
write(output,*) "pointwise product:"
write(output, fmt="(9F7.3)") prod

close(output)

! ----------- Ending zone --------------

stop
end program exercise1
