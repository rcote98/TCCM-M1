! --------- Declaration Zone -----------

program exercise2

implicit none

integer :: i, j, ndim
integer :: input, output

real(4) :: suma
real(4), parameter :: pi = 3.1415927
real(4), allocatable :: vec(:), mat(:,:)

! ---------- Execution Zone ------------

output = 10
input = 12

! read input 
open(unit=input, file="exercise1.input", form="formatted")
read(input,*) ndim
close(input)

! allocate the vector
allocate(vec(ndim))

! assign vector values
suma = 0
do i = 1,ndim 
    if(i <= 3) then
        vec(i) = 1
        suma = suma + 1
    else if(i >= 4 .and. i <= 7) then 
        vec(i) = 2
        suma = suma + 2
    else
        vec(i) = suma
        suma = 2*suma
    endif
enddo


! write the output
open(unit=output, file = "exercise2.out", form = "formatted")
write(output,*) vec

! allocate the matrix
allocate(mat(3,3))

! assign middle column
mat(:,2) = 0 
! assign lateral columns
do i = 1,3
    mat(i,1) = vec(i)
    mat(i,3) = vec(ndim-3+i)
enddo

write(output,*) ""

! write matrix in math sense
do j = 1,3
    write(output,*) mat(j,1), mat(j,2), mat(j,3)
enddo


! ----------- Ending zone --------------

stop
end program exercise2
