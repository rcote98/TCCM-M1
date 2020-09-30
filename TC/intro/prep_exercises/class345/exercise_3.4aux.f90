! function definition 

function rmat(r1, mat, n)

    ! --------- Declaration Zone -----------

    implicit none

    integer(4), intent(in) :: n
    real(4), intent(in) :: r1, mat(n,n)
    real(4), dimension(n,n) :: rmat

    integer(4) :: i

    ! ---------- Execution Zone ------------

    rmat(:,:) = mat(:,:)

    do i = 1,n
        rmat(i,i) = r1*rmat(i,i)
    end do

    return 

end function rmat