!!
! General matrix-related operations
!!
module matrixops

    implicit none

    public :: realxdiag, realxnondiag

    contains

    !!
    ! Multiplies the diagonal elements of a matrix by a real number
    !!
    function realxdiag(r1, mat, n)

        ! --------- Declaration Zone -----------

        implicit none

        integer(4), intent(in) :: n
        real(4), intent(in) :: r1, mat(n,n)
        real(4), dimension(n,n) :: realxdiag

        integer(4) :: i

        ! ---------- Execution Zone ------------

        realxdiag(:,:) = mat(:,:)

        do i = 1,n
            realxdiag(i,i) = r1*realxdiag(i,i)
        end do

        return 

    end function realxdiag

    !!
    ! Multiplies the non-diagonal elements of a matrix by a real number
    !!
    subroutine realxnondiag(r1, mat, n)

        ! --------- Declaration Zone -----------

        implicit none

        integer(4), intent(in) :: n
        real(4), intent(in) :: r1
        real(4), intent(inout) :: mat(n,n)

        integer(4) :: i,j

        ! ---------- Execution Zone ------------

        do i = 1,n
            do j =1,n
                if(i /= j) then
                    mat(i,j) = r1*mat(i,j)
                end if
            end do
        end do

        return 

    end subroutine realxnondiag

end module matrixops