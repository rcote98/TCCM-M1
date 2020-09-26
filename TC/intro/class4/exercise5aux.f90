! subroutine definition 

subroutine rmat(r1, mat, n)

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

end subroutine rmat