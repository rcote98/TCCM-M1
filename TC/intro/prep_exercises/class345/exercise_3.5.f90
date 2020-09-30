! --------- Declaration Zone -----------

program exercise5

    implicit none

    integer, parameter :: input = 13, output = 14
    real(4), allocatable :: mat(:,:)
    integer :: ndim
    real(4) :: r1

    interface
        subroutine rmat(r1, mat, n)
            integer(4), intent(in) :: n
            real(4), intent(in) :: r1
            real(4), intent(inout) :: mat(n,n)
        end subroutine
    end interface

    ! ---------- Execution Zone ------------
    
    ! read the input
    open(unit=input, file="exercise4.input", action="read", form="formatted")
    read(input, *) r1
    read(input, *) ndim
    allocate(mat(ndim,ndim))
    read(input, *) mat(:,:)
    close(input)

    ! call the subroutine
    write(6, fmt="(2x3f7.1)") mat
    write(6, *) ""
    call rmat(r1, mat, ndim)
    write(6, fmt="(2x3f7.1)") mat

    ! write the output file
    open(unit=output, file = "exercise6diag.out", action="write", form ="formatted")
    write(output, *) ndim
    write(output, fmt="(2x3f7.1)") mat
    close(output)

    ! ----------- Ending zone --------------
    
    stop
    end program exercise5
    