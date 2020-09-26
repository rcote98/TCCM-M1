! --------- Declaration Zone -----------

program exercise6

    use matrixops, only: realxdiag, realxnondiag 
    
    implicit none

    integer, parameter :: input = 13, output = 14
    real(4), allocatable :: mat(:,:), result(:,:)
    integer :: ndim
    real(4) :: r1

    ! ---------- Execution Zone ------------
    
    ! read the input
    open(unit=input, file="exercise4.input", action="read", form="formatted")
    read(input, *) r1
    read(input, *) ndim
    allocate(mat(ndim,ndim), result(ndim,ndim))
    read(input, *) mat(:,:)
    close(input)

    ! print original matrix
    write(6, fmt="(2x3f7.1)") mat
    write(6, *) ""

    ! call the function
    result = realxdiag(r1, mat, ndim)
    write(6, fmt="(2x3f7.1)") result
    write(6, *) ""

    ! call the subroutine
    call realxnondiag(r1, mat, ndim)
    write(6, fmt="(2x3f7.1)") mat

    ! write the output files
    open(unit=output, file = "exercise6diag.out", action="write", form ="formatted")
    write(output, *) ndim
    write(output, fmt="(2x3f7.1)") result
    close(output)
       
    open(unit=output, file = "exercise6nondiag.out", action="write", form ="formatted")
    write(output, *) ndim
    write(output, fmt="(2x3f7.1)") mat
    close(output)
    
    ! ----------- Ending zone --------------
    
    stop
    end program exercise6
    