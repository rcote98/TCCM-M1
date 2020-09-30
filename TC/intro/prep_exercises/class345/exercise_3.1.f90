! --------- Declaration Zone -----------

program exercise1

implicit none

integer :: input1, input2, input3, input4
integer, parameter :: n=2, m=3
real(8) :: a(n, m)
integer :: i, j

! ---------- Execution Zone ------------

input1 = 12
input2 = 13
input3 = 14
input4 = 15

open(unit=input1, file="input.dat", form="formatted")
open(unit=input2, file="input2.dat", form="formatted")
open(unit=input3, file="input3.dat", form="formatted")
open(unit=input4, file="input4.dat", form="formatted")

! reading individual elements
read(input1, *) a(1,1), a(1,2), a(1,3), a(2,1), a(2,2), a(2,3)
write(*,fmt="(a, 2x6f5.2)") "input.dat", a(1,1), a(1,2), a(1,3), a(2,1), a(2,2), a(2,3)
write(*,*) ""

! using do cycles, element by element
write(*,*) "input2.dat"
do i = 1,n
    do j = 1, m
        read(input2, *) a(i,j)
        write(*,fmt="(f5.2)") a(i,j)
    enddo
enddo
write(*,*) ""
a(:,:) = 0.0d0

! using do cycles, by rows or columns
write(*,*) "input3.dat, 1st writing"
do i = 1,n
    read(input3, *) (a(i,j), j= 1,m)
    write(*,fmt="(2x3f5.2)") (a(i,j), j= 1,m)
enddo
write(*,*) ""
a(:,:) = 0.0d0

! using do cycles, by blocks
rewind(input3)
write(*,*) "input3.dat, 2nd writing"
read(input3, *) ((a(i,j), i = 1,n), j = 1,m)
write(*, fmt="(2x3f5.2)") ((a(i,j), i = 1,n), j = 1,m)
write(*,*) ""
a(:,:) = 0.0d0

! using implicit do's, reading only 1 index
rewind(input3)
write(*,*) "input3.dat, 3rd writing"
do i = 1,n
    read(input3, *) a(i,:)
    write(*,fmt="(2x3f5.2)") a(i,:)
enddo
write(*,*) ""
a(:,:) = 0.0d0

! using implicit do's, reading both indexes
! can read any of the three input files
rewind(input3)
write(*,*) "input3.dat, 4th writing"
read(input3, *) a(:,:)
write(*,fmt="(2x3f5.2)") a(:,:)

! RESPONSE TO THE QUESTION:
!
! The direct read option reads by columns.

! ----------- Ending zone --------------

stop
end program exercise1
