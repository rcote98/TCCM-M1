program exercise4

    use interactions
    use niceio

    ! --------- Declaration Zone -----------

    implicit none

    integer, parameter :: input = 12, output = 14, screen=6, console=5
    
    real(4) :: De, A, B, C, D, r0, rmin, rmax, short_range, long_range
    real(4), allocatable :: r(:), energy(:)
    integer(4) :: npoints, i

    ! ---------- Execution Zone ------------
    
    ! read input file
    open(unit=input, file = "input.dat", action="read", form ="formatted")
    read(input, *) npoints
    read(input, *) rmin 
    read(input, *) rmax
    read(input, *) De
    read(input, *) A
    read(input, *) B
    read(input, *) C
    read(input, *) D
    read(input, *) r0
    close(input)

    ! create radius vector
    allocate(r(npoints), energy(npoints))

    ! generate radius values, perform calculations
    do i= 1,npoints
        r(i) = rmin + (rmax-rmin)*(i-1)/(npoints-1)
        call short_range_interaction(r(i), De, B, r0, short_range)
        call long_range_interaction(r(i), A, C, D, r0, long_range)
        energy(i) = short_range + long_range
    end do

    ! write the output file
    open(unit=output, file = "result.out", action="write", form ="formatted")
    call write_2coloutput(output, r, energy, npoints)
    close(output)
    
    ! ----------- Ending zone --------------
    
    stop
end program exercise4
    