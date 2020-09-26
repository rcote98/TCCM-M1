! --------- Declaration Zone -----------

program exercise1

    use matrixops
    implicit none

    integer, parameter :: input = 12, output = 14, screen=6
    real(4), allocatable :: A(:,:)
    integer(4) :: cols, rows
    integer(4) :: i, j
    real(4) :: aux

    ! ---------- Execution Zone ------------
    
    ! read the input
    open(unit=input, file="input.dat", action="read", form="formatted")
    read(input, *) cols, rows
    allocate(A(rows,cols))
    read(input, *) A(:,:)
    close(input)

    ! print original matrix
    write(screen, *) "Loaded matrix:"
    write(screen, fmt="(2x4f7.1)") A(:,:)
    write(screen, *) ""

    ! a) trace

    ! b) sum of non-diagonal elements

    ! c) sum of elements placed in odd columns
    

    ! d) squared matrix
    if (rows == cols) then

        aux = 0.
        do j = 1,cols
            do i = 1,rows
                if (i/=j) aux = aux + A(i,j)
            end do
        end do

        

        open(unit=output, file = "d-squaredmatrix.out", action="write", form ="formatted")
        write(output, *) aux
        close(output)

    else 
        write(screen,*) "WARNING: Can't obtain squared matrix. REASON: Non-square matrix."
        write(screen, *) ""
    endif

    ! e) transpose of the matrix
    write(screen, *) "Transpose of the matrix:"
    write(screen, *) aux
    write(screen, *) ""




    ! f) product of the transpose and the matrix itself (At*A)




    ! g) matrix-vector product with a vector taken from a file named “vec.inp”




    ! h) the point-wise (Hadamard) product of the first two columns 



    ! i) matrix multiplication of A-transpose by B (At*B)



    ! j) the sum of all elements of matrix B as an INTEGER



    ! k) vector containing the maximum value within each row of B





    ! ----------- Ending zone --------------
    
    stop
    end program exercise1
    