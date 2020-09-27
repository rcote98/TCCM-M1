!!
! General matrix-related operations
!!
module niceio

    implicit none

    contains !------------------------------

    !!
    ! Prints matrix in a nice format
    !!
    subroutine write_matrix(unit, matrix, rows, cols)

    ! --------- Declaration Zone -----------
    real(4), intent(in), dimension(rows, cols) ::matrix
    integer(4), intent(in) :: rows, cols, unit
    character(len=15) :: fmt_length

    ! ---------- Execution Zone ------------

    write(fmt_length, *) rows
    write(unit, fmt="(2i3)") cols, rows
    write(unit, fmt="(2x"//fmt_length//"f7.1)") matrix

    end subroutine write_matrix

    !!
    ! Write matrix in a nice format
    !!
    subroutine write_colvec(unit, vec, length)

        real(4), intent(in), dimension(length) :: vec
        integer(4), intent(in) :: length, unit
        character(len=15) :: fmt_length

        write(fmt_length, *) length
        write(unit, fmt="(2i3)") length
        write(unit, fmt="(2x"//fmt_length//"f7.1)") vec
    
    end subroutine write_colvec


endmodule niceio
    