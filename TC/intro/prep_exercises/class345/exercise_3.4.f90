! --------- Declaration Zone -----------

program exercise4

    implicit none

    integer, parameter :: input = 13, output = 14
    real(4), allocatable :: mat(:,:), result(:,:)
    integer :: ndim
    real(4) :: r1

    interface
        function rmat(r1, mat, n)
            integer(4), intent(in) :: n
            real(4), intent(in) :: r1, mat(n,n)
            real(4), dimension(n,n) :: rmat
        end function
    end interface

    ! ---------- Execution Zone ------------
    
    ! read the input
    open(unit=input, file="exercise4.input", action="read", form="formatted")
    read(input, *) r1
    read(input, *) ndim
    allocate(mat(ndim,ndim), result(ndim, ndim))
    read(input, *) mat(:,:)
    close(input)

    ! call the function
    write(6, fmt="(2x3f7.1)") mat
    write(6, *) ""
    result = rmat(r1, mat, ndim)
    write(6, fmt="(2x3f7.1)") result

    ! write the output
    open(unit=output, file = "exercise4.out", action="write", form ="formatted")
    write(output, *) ndim
    write(output, fmt="(2x3f7.1)") result
    
    ! ----------- Ending zone --------------
    
    stop
    end program exercise4
    