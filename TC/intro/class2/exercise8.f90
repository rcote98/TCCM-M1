! --------- Declaration Zone -----------

program exercise8

implicit none

integer :: i, ndim1, ndim2
integer :: input, output

real(4), allocatable :: vec1(:), vec2(:), result(:)

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
    write(6,*) "ERROR: Vectors have different size."
    stop
endif

allocate(result(ndim1)) 

! do operations
do i = 1,ndim1
    result(i) = vec1(i)*vec2(i)
enddo

! write output
open(unit=output, file = "exercise8.out", form ="formatted")
write(output,*) result
close(output)

! ----------- Ending zone --------------

stop
end program exercise8
