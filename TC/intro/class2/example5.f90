! --------- Declaration Zone -----------

program example5

implicit none
integer :: ndim, i, j
integer, allocatable :: A(:,:)

! ---------- Execution Zone ------------

read(5, *) ndim

allocate(A(ndim, ndim))
do j = 1, ndim
    read(5,*) (A(i,j), i=1,ndim)
enddo

write(6,*) A


! ----------- Ending zone --------------

stop
end program example5
