program exercise3

    use geom
    use niceio

    ! --------- Declaration Zone -----------

    implicit none

    integer, parameter :: input = 12, output = 14, screen=6, console=5
    real(4), allocatable :: radii(:), areas(:), volumes(:)
    integer(4) :: i, ndim

    ! ---------- Execution Zone ------------
    
    write(screen, *) "Please, enter the size of the size of the radii array:"
    read(console, *) ndim
    write(screen, *) ""

    allocate(radii(ndim), areas(ndim), volumes(ndim))
    call random_number(radii)
    do i = 1,ndim
        call circle_area(radii(i), areas(i))
        call sphere_volume(radii(i), volumes(i))
    end do

    ! Radii ---------------------------

    write(screen, *) "Generated radii:"
    call write_colvec(screen, radii, ndim)
    write(screen, *) ""

    open(unit=output, file = "radii.out", action="write", form ="formatted")
    call write_colvec(output, radii, ndim)
    close(output)

    ! Areas ---------------------------

    write(screen, *) "Circle areas:"
    call write_colvec(screen, areas, ndim)
    write(screen, *) ""

    open(unit=output, file = "areas.out", action="write", form ="formatted")
    call write_colvec(output, areas, ndim)
    close(output)

    ! Volumes -------------------------

    write(screen, *) "Generated volumes:"
    call write_colvec(screen, volumes, ndim)
    write(screen, *) ""

    open(unit=output, file = "volumes.out", action="write", form ="formatted")
    call write_colvec(output, volumes, ndim)
    close(output)

    ! ----------- Ending zone --------------
    
    stop
end program exercise3
    