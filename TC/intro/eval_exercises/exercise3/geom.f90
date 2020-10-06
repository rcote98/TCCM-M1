!!
! Geometry related operations
!!
module geom

    implicit none

    public :: circle_area
    
    real, parameter :: pi = 3.1415926536

    contains !------------------------------

    !!
    ! Calculates the area of a circle
    !!
    subroutine circle_area(radius, area)

    ! --------- Declaration Zone -----------
        
        real(4), intent(in ) :: radius
        real(4), intent(out) :: area
    
    ! ---------- Execution Zone ------------

    area = pi*radius**2

    end subroutine circle_area

    !!
    ! Calculates the volume of a sphere
    !!
    subroutine sphere_volume(radius, volume)

        ! --------- Declaration Zone -----------
            
            real(4), intent(in ) :: radius
            real(4), intent(out) :: volume
        
        ! ---------- Execution Zone ------------
    
        volume = 4./3.*pi*radius**3
    
    end subroutine sphere_volume



endmodule geom
    