!!
! Geometry related operations
!!
module interactions

    implicit none

    public :: short_range_interaction, long_range_interaction

    contains !------------------------------

    !!
    ! Short-range interaction potential
    !!
    subroutine short_range_interaction(radius, De, B, r0, energy)

        ! --------- Declaration Zone -----------
        
        real(4), intent(in) :: De, B, r0, radius
        real(4), intent(out) :: energy
    
        ! ---------- Execution Zone ------------

        energy = De*(1 - exp(-B*(radius - r0)))**2 - De

    end subroutine short_range_interaction

    !!
    ! Long-range interaction potential
    !!
    subroutine long_range_interaction(radius, A, C, D, r0, energy)

        ! --------- Declaration Zone -----------
        
        real(4), intent(in) :: A, C, D, r0, radius
        real(4), intent(out) :: energy
        real(4) :: rprime
    
        ! ---------- Execution Zone ------------

        rprime = radius + C*exp(-(radius-r0))
        energy = - A/(rprime**6) - D/(rprime**8)

    end subroutine long_range_interaction

endmodule interactions
    