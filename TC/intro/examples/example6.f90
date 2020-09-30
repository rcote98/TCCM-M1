! --------- Declaration Zone -----------

program example6

implicit none
integer :: ndim, i, j
integer, allocatable :: A(:,:)

! ---------- Execution Zone ------------

open(unit=55, file="example6.input", form="formatted")
read(55,*) ndim

allocate(A(ndim, ndim))
do j=1,ndim
    read(55,*) (A(i,j), i=1,ndim)
enddo
close(55)

write(*,*) "matrix A", A
deallocate(A)

open(unit=55, file="input_ex6.dat", form="formatted")
read(55,*) ndim

allocate(A(ndim, 2))
do j=1,2
    read(55,*) (A(i,j), i=1,ndim)
enddo
close(55)

write(*,*) A(1,2)


! ----------- Ending zone --------------

stop
end program example6
