! --------- Declaration Zone -----------

program exercise7

    implicit none

    interface
        function realxdiag(r1, mat, n)
            integer(4), intent(in) :: n
            real(4), intent(in) :: r1
            real(4), intent(in), dimension(n,n) :: mat
            real(4), dimension(n,n) :: realxdiag
        end function realxdiag
    end interface

    integer, parameter :: input = 13, output = 14
    real(4), allocatable :: mat(:,:), diag(:,:), nondiag(:,:)
    integer :: ndim
    real(4) :: r1

    ! ---------- Execution Zone ------------
    
    ! read the input
    open(unit=input, file="exercise4.input", action="read", form="formatted")
    read(input, *) r1
    read(input, *) ndim
    allocate(mat(ndim,ndim), diag(ndim,ndim), nondiag(ndim,ndim))
    read(input, *) mat(:,:)
    diag (:,:) = mat(:,:)
    nondiag(:,:) = mat(:,:)
    close(input)

    ! print original matrix
    write(6, fmt="(2x3f7.1)") mat
    write(6, *) ""

    ! call the function
    diag = realxdiag(r1, diag, ndim)
    write(6, fmt="(2x3f7.1)") diag
    write(6, *) ""

    ! call the subroutine
    call realxnondiag(r1, nondiag, ndim)
    write(6, fmt="(2x3f7.1)") nondiag

    ! write the output files
    open(unit=output, file = "exercise7diag.out", action="write", form ="formatted")
    write(output, *) ndim
    write(output, fmt="(2x3f7.1)") diag
    close(output)
       
    open(unit=output, file = "exercise7nondiag.out", action="write", form ="formatted")
    write(output, *) ndim
    write(output, fmt="(2x3f7.1)") nondiag
    close(output)
    
    ! ----------- Ending zone --------------
    
    stop
    end program exercise7
    