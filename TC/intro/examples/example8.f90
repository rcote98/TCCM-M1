! --------- Declaration Zone -----------

program example8

implicit none
integer :: ndim, i, j
integer, allocatable :: A(:,:)

! ---------- Execution Zone ------------

read(5,*) ndim
allocate(A(ndim,ndim))

do j= 1,ndim
    read(5,*) (A(i,j), i= 1,ndim)
enddo

write(6, fmt="(3E14.4)") A/7.
write(6, fmt="(1x,3I1)") A

! ----------- Ending zone --------------

stop
end program example8
