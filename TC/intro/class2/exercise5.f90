! --------- Declaration Zone -----------

program exercise5

implicit none

integer :: i, j, ndim
integer :: input, output

real(4), allocatable :: mat1(:,:), mat2(:,:), mat(:,:)

! ---------- Execution Zone ------------

output = 10
input = 12

! read input
open(unit=input, file="exercise5.input", form="formatted")
read(input,*) ndim

allocate(mat1(ndim,ndim), mat2(ndim,ndim), mat(ndim,ndim))

do j = 1,ndim
    read(input,*) (mat1(i,j), i=1,ndim) 
enddo

do j = 1,ndim
    read(input,*) (mat2(i,j), i=1,ndim) 
enddo

close(input)

! do operations
mat = 0.
mat = mat1 + mat2


! write output
open(unit=output, file = "exercise5.out", form ="formatted")

do j=1,ndim
    write(output,*) (mat(i,j), i=1,ndim) 
enddo

close(output)

! ----------- Ending zone --------------

stop
end program exercise5
