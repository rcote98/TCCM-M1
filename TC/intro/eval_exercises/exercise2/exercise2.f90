! --------- Declaration Zone -----------

program exercise2

    use niceio
    use sorting

    implicit none

    integer, parameter :: input = 12, output = 14, screen=6, console=5
    real(4), allocatable :: A(:,:), sortedA(:), aux(:)
    integer(4) :: rows, cols, i, j

    ! ---------- Execution Zone ------------
    
    write(screen, *) "Dimensions of the matrix:"
    read(console, *) rows, cols
    allocate(A(rows, cols))
    allocate(aux((size(A) + 1) / 2))
    call random_number(A)

    write(screen, *) ""
    write(screen, *) "Generated Matrix:"
    call write_matrix(screen, A, rows, cols)
    write(screen, *) ""

    allocate(sortedA(rows*cols))
    sortedA = reshape(A, (/rows*cols/))
    call write_colvec(screen, sortedA, rows*cols)
    call MergeSort(sortedA, aux)
    call write_colvec(screen, sortedA, rows*cols)

    do i = 1, rows
        do j = 1, cols
            A(i,j) = sortedA((i-1)*cols+j)
        end do
    end do

    write(screen, *) ""
    write(screen, *) "Row-major ordered matrix:"
    call write_matrix(screen, A, rows, cols)
    write(screen, *) ""


    ! ----------- Ending zone --------------
    
    stop
end program exercise2
    