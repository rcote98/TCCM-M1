! --------- Declaration Zone -----------

program exercise1

    use niceio

    implicit none

    integer, parameter :: input = 12, output = 14, screen=6
    real(4), allocatable :: A(:,:), B(:,:), vec(:), auxMat(:,:), auxVec(:)
    integer(4) :: rows, cols, length
    integer(4) :: i, j, auxInt
    real(4) :: aux

    ! ---------- Execution Zone ------------
    
    ! read the input
    open(unit=input, file="mat.inp", action="read", form="formatted")
    read(input, *) cols, rows ! file is in  column major order
    allocate(A(rows, cols)) 
    read(input, *) A(:,:)
    close(input)

    ! print original matrix
    write(screen, *) "Loaded matrix:"
    call write_matrix(screen, A, rows, cols)
    write(screen, *) ""

    ! ---------------------------------------------------------------
    ! a) trace
    ! ---------------------------------------------------------------

    if (rows == cols) then

        aux = 0
        do i = 1,rows
            aux = aux + A(i,i)
        end do

        write(screen, *) "a) Trace:"
        write(screen, *) aux
        write(screen, *) ""

        open(unit=output, file = "a-trace.out", action="write", form ="formatted")
        write(output, *) aux
        close(output)

    else 
        write(screen,*) "WARNING: Can't obtain trace. REASON: Non-square matrix."
        write(screen, *) ""
    endif

    ! ---------------------------------------------------------------
    ! b) sum of non-diagonal elements
    ! ---------------------------------------------------------------

    if (rows == cols) then

        aux = 0.
        do j = 1,cols
            do i = 1,rows
                if (i/=j) aux = aux + A(i,j)
            end do
        end do

        write(screen, *) "b) Sum of non-diagonal elements:"
        write(screen, *) aux
        write(screen, *) ""

        open(unit=output, file = "b-nondiagsum.out", action="write", form ="formatted")
        write(output, *) aux
        close(output)

    else 
        write(screen,*) "WARNING: Can't obtain sum of non-diagonal elements. REASON: Non-square matrix."
        write(screen, *) ""
    endif

    ! ---------------------------------------------------------------
    ! c) sum of elements placed in odd columns
    ! ---------------------------------------------------------------

    aux = 0.
    do j = 1,cols
        if (mod(j,2)==1) aux = aux + sum(A(:,j))
    end do
    
    write(screen, *) "c) Sum of elements in odd columns:"
    write(screen, *) aux
    write(screen, *) ""

    open(unit=output, file = "c-oddcolsum.out", action="write", form ="formatted")
    write(output, *) aux
    close(output)

    ! ---------------------------------------------------------------
    ! d) squared matrix
    ! ---------------------------------------------------------------
    if (rows == cols) then

        allocate(auxMat(rows,rows))
        auxMat = matmul(A, A)

        write(screen, *) "d) Matrix squared:"
        call write_matrix(screen, auxMat, rows, cols)
        write(screen, *) ""

        open(unit=output, file = "d-squaredmat.out", action="write", form ="formatted")
        call write_matrix(output, auxMat, rows, cols)
        close(output)

        deallocate(auxMat)

    else 
        write(screen,*) "WARNING: Can't obtain squared matrix. REASON: Non-square matrix."
        write(screen, *) ""
    endif

    ! ---------------------------------------------------------------
    ! e) transpose of the matrix
    ! ---------------------------------------------------------------

    allocate(auxMat(cols, rows))
    auxMat = transpose(A)
    
    write(screen, *) "e) Transpose of the matrix:"
    call write_matrix(screen, auxMat, cols, rows)
    write(screen, *) ""

    open(unit=output, file = "e-transposedmat.out", action="write", form ="formatted")
    call write_matrix(output, auxMat, cols, rows)
    close(output)

    deallocate(auxMat)

    ! ---------------------------------------------------------------
    ! f) product of the transpose and the matrix itself (At*A)
    ! ---------------------------------------------------------------

    allocate(auxMat(rows, rows))
    auxMat = matmul(transpose(A), A)
    
    write(screen, *) "f) Matric product At*A:"
    call write_matrix(screen, auxMat, rows, rows)
    write(screen, *) ""

    open(unit=output, file = "f-transmatxmat.out", action="write", form ="formatted")
    call write_matrix(output, auxMat, rows, rows)
    close(output)

    deallocate(auxMat)

    ! ---------------------------------------------------------------
    ! g) matrix-vector product with a vector taken from a file named “vec.inp”
    ! ---------------------------------------------------------------

    open(unit=input, file="vec.inp", action="read", form="formatted")
    read(input, *) length ! file is in  column major order
    allocate(vec(length)) 
    read(input, *) vec(:)
    close(input) 

    write(screen, *) "--- Loaded vector ---"
    call write_colvec(screen, vec, length)
    write(screen, *) ""

    if (length == rows) then
        allocate(auxVec(cols))
        auxVec = matmul(A, vec)

        write(screen, *) "g) Matrix-vector product:"
        call write_colvec(screen, auxVec, length)
        write(screen, *) ""

        open(unit=output, file = "g-matrixvecprod.out", action="write", form ="formatted")
        call write_colvec(output, auxVec, length)
        close(output)

    else
        write(screen,*) "WARNING: Can't multiply with the matrix A."
        write(screen,*) "REASON: Number of rows and length not matching."
        write(screen, *) ""
    endif

    deallocate(auxVec)

    !! ------- creation of matrix B, removing last row of A ---------

    allocate(B(rows-1, cols))
    B(:,:) = A(:,:) 
    
    write(screen, *) "--- B matrix ---"
    call write_matrix(screen, B, rows-1, cols)
    write(screen, *) ""

    ! ---------------------------------------------------------------
    ! h) the point-wise (Hadamard) product of the first two columns 
    ! ---------------------------------------------------------------
    
    allocate(auxVec(rows-1))
    do i = 1,rows-1
        auxVec(i) = B(i,1)*B(i,2)
    end do

    write(screen, *) "h) Hadamard product of the first two columns:"
    call write_colvec(screen, auxVec, rows-1)
    write(screen, *) ""

    ! ---------------------------------------------------------------
    ! i) matrix multiplication of A-transpose by B (At*B)
    ! ---------------------------------------------------------------


    ! ---------------------------------------------------------------
    ! j) the sum of all elements of matrix B as an INTEGER
    ! ---------------------------------------------------------------

    auxInt = sum(B)
    
    write(screen, *) "j) Sum of elements B, as an integer:"
    write(screen, *) B
    write(screen, *) ""

    open(unit=output, file = "j-sumBint.out", action="write", form ="formatted")
    write(output, *) auxInt
    close(output)

    ! ---------------------------------------------------------------
    ! k) vector containing the maximum value within each row of B
    ! ---------------------------------------------------------------




    ! ----------- Ending zone --------------
    
    stop
    end program exercise1
    