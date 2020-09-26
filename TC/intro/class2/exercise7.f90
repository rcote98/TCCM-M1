! --------- Declaration Zone -----------

program exercise7

implicit none

integer :: ndim1, ndim2
integer :: input, output

real(4) :: result
real(4), allocatable :: vec1(:), vec2(:)

! ---------- Execution Zone ------------

output = 10
input = 12

! read vector 1
open(unit=input, file="exercise7.input1", form="formatted")
read(input,*) ndim1
allocate(vec1(ndim1))
read(input,*) vec1
close(input)

! read vector 2
open(unit=input, file="exercise7.input2", form="formatted")
read(input,*) ndim2
allocate(vec2(ndim2))
read(input,*) vec2
close(input)

! check they are both the same dimension
if (ndim1 /= ndim2) then
    write(6,*) "ERROR: Vectors have different sizes."
    stop
endif

! do operations
result = dot_product(vec1, vec2)

! write output
open(unit=output, file = "exercise7.out", form ="formatted")
write(output,*) result
close(output)

! ----------- Ending zone --------------

stop
end program exercise7
