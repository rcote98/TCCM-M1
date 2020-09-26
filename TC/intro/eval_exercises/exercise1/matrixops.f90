!!
! General matrix-related operations
!!
module matrixops

    implicit none
    
    integer, parameter :: input = 12, output = 14, screen=6
    integer(4) :: i, j
    real(4) :: aux

    !public :: lmao

    contains !------------------------------

    !!
    ! Obtains the trace 
    !!
    subroutine trace(A, rows, cols, aux)

    ! --------- Declaration Zone -----------
    real(4), intent(in), dimension(rows, cols) :: A
    integer(4), intent(in) :: rows, cols
    real(4), intent(inout) :: aux

    ! ---------- Execution Zone ------------

    if (rows == cols) then

        aux = 0
        do i = 1,rows
            aux = aux + A(i,i)
        end do

        write(screen, *) "Trace:"
        write(screen, *) aux
        write(screen, *) ""

        open(unit=output, file = "a-trace.out", action="write", form ="formatted")
        write(output, *) aux
        close(output)

    else 
        write(screen,*) "WARNING: Can't obtain trace. REASON: Non-square matrix."
        write(screen, *) ""
    endif

    end subroutine

    !!
    ! Obtains the sum of non-diagonal elements in a square matrix
    !!
    subroutine sumnondiag(A, rows, cols, aux)

        ! --------- Declaration Zone -----------
        real(4), intent(in), dimension(rows, cols) :: A
        integer(4), intent(in) :: rows, cols
        real(4), intent(inout) :: aux
    
        ! ---------- Execution Zone ------------

        if (rows == cols) then

            aux = 0.
            do j = 1,cols
                do i = 1,rows
                    if (i/=j) aux = aux + A(i,j)
                end do
            end do
    
            write(screen, *) "Sum of non-diagonal elements:"
            write(screen, *) aux
            write(screen, *) ""
    
            open(unit=output, file = "b-nondiagsum.out", action="write", form ="formatted")
            write(output, *) aux
            close(output)
    
        else 
            write(screen,*) "WARNING: Can't obtain sum of non-diagonal elements. REASON: Non-square matrix."
            write(screen, *) ""
        endif

    end subroutine sumnondiag

    !!
    ! Sum the elements in the odd columns
    !!
    subroutine sumoddcols(A, rows, cols, aux)

        ! --------- Declaration Zone -----------
        real(4), intent(in), dimension(rows, cols) :: A
        integer(4), intent(in) :: rows, cols
        real(4), intent(inout) :: aux
    
        ! ---------- Execution Zone ------------

        aux = 0.
        do j = 1,cols
            if (mod(j,2)==1) aux = aux + sum(A(:,j))
        end do
        
        write(screen, *) "Sum of elements in odd columns:"
        write(screen, *) aux
        write(screen, *) ""

        open(unit=output, file = "c-oddcolsum.out", action="write", form ="formatted")
        write(output, *) aux
        close(output)
        
    end subroutine sumoddcols

    !!
    !
    !!
    subroutine matrix_squared(A, rows, cols)

        ! --------- Declaration Zone -----------
        real(4), intent(in), dimension(rows, cols) :: A
        integer(4), intent(in) :: rows, cols

        ! ---------- Execution Zone ------------

        if (rows == cols) then

            aux = 0.
            do j = 1,cols
                do i = 1,rows
                    if (i/=j) aux = aux + A(i,j)
                end do
            end do
    
            write(screen, *) "Sum of non-diagonal elements:"
            write(screen, *) aux
            write(screen, *) ""
    
            open(unit=output, file = "b-nondiagsum.out", action="write", form ="formatted")
            write(output, *) aux
            close(output)
    
        else 
            write(screen,*) "WARNING: Can't obtain sum of non-diagonal elements. REASON: Non-square matrix."
            write(screen, *) ""
        endif


    end subroutine matrix_squared

endmodule matrixops
    