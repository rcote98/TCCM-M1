!!
! Geometry related operations
!!
module geom

    implicit none
    public :: area, volume, pi
    real, parameter :: pi = 3.1415926536

    contains !------------------------------

    !!
    ! Calculates the area of a circle
    !!
    function area(nn,rr)

        ! --------- Declaration Zone -----------

        implicit none
        integer, intent(in) :: nn
        real, intent(in), dimension(nn) :: rr
        real, dimension(nn) :: area

        ! ---------- Execution Zone ------------
      
        area(:) = pi*rr(:)**2 ! area
        
        return
      
    end function area

    !!
    ! Calculates the volume of a sphere
    !!
    function volume(nn,rr)

        ! --------- Declaration Zone -----------

        implicit none
        integer, intent(in) :: nn
        real, intent(in),dimension(nn) :: rr
        real, dimension(nn) :: volume

        ! ---------- Execution Zone ------------
      
        volume(:) = 4./3.*pi*rr(:)**3 !volume
        
        return
      
    end function volume

end module geom
    