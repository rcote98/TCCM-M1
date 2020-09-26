!!
! Multiplies the diagonal elements of a matrix by a real number
!!
function realxdiag(r1, mat, n)

    ! --------- Declaration Zone -----------

    implicit none

    integer(4), intent(in) :: n
    real(4), intent(in) :: r1
    real(4), intent(in), dimension(n,n) :: mat
    real(4), dimension(n,n) :: realxdiag
    integer(4) :: i

    ! ---------- Execution Zone ------------
    
    realxdiag(:,:) = mat(:,:)

    do i = 1,n
        realxdiag(i,i) = r1*realxdiag(i,i)
    end do

    return 

end function realxdiag