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
    write(unit, fmt="(2i3)") rows, cols
    write(unit, fmt="(2x"//fmt_length//"f7.4)") matrix

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
        write(unit, fmt="(2x"//fmt_length//"f7.4)") vec
    
    end subroutine write_colvec

    !!
    ! Write a two-column output data file
    !!
    subroutine write_2coloutput(unit, col1, col2, ndata)

        real(4), intent(in), dimension(ndata) :: col1(:), col2(:)
        integer(4), intent(in) :: ndata, unit
        integer(4) :: i

        do i = 1,ndata
            write(unit, *) col1(i), col2(i) 
        end do
        
    end subroutine write_2coloutput


endmodule niceio
    