! --------- Declaration Zone -----------

program exercise3

    implicit none

    real(4) :: buf
    integer :: stat, ic, mdim
    
    integer, parameter :: input1 = 12, input5 = 13, output = 14
    real(4), allocatable :: vec(:), mat(:,:)
    integer(4), allocatable :: prod(:,:)
    integer(4) :: dot
    
    ! ---------- Execution Zone ------------
    
    ! read the input
    open(unit=input1, file="input.dat", action="read", form="formatted")
    open(unit=input5, file="input5.dat", action="read", form="formatted")
    
    ! count the number of lines
    open(unit=input5, file="input5.dat", action="read", form="formatted")
    ic = 0
    do
        read(input5, *, iostat=stat) buf
        if (stat /= 0) exit
        ic = ic +1
    enddo
    rewind(input5)
    mdim = int(sqrt(real(ic)))

    ! allocate all the stuffs
    allocate(vec(6), mat(mdim, mdim), prod(mdim, mdim))
    
    ! assign values
    read(input1, *) vec(:)
    read(input5, *) mat(:,:)
    
    ! close input
    close(input1)
    close(input5)
    
    ! do the operations
    dot = int(dot_product(vec,vec))
    prod(:,:) = int(matmul(mat, mat))
    
    ! print out the results
    open(unit=output, file = "exercise3.out", action="write", form ="formatted")
    write(output,*) dot
    write(output,*) ""
    write(output,*) mdim
    write(output,fmt="(2x7i5)") prod(:,:)
    
    
    ! ----------- Ending zone --------------
    
    stop
    end program exercise3
    