!!
! Sorting algorithms
!!
module sorting

    implicit none

    public :: MergeSort
    private :: swap, merge

    contains !------------------------------

    subroutine merge(A, B, C)
        implicit none
        ! The targe attribute is necessary, because A .or. B might overlap with C.
        real, target, intent(in) :: A(:), B(:)
        real, target, intent(inout) :: C(:)
        integer :: i, j, k
 
        if (size(A) + size(B) > size(C)) stop
 
        i = 1; j = 1
        do k = 1, size(C)
          if (i <= size(A) .and. j <= size(B)) then
            if (A(i) <= B(j)) then
              C(k) = A(i)
              i = i + 1
            else
              C(k) = B(j)
              j = j + 1
            end if
          else if (i <= size(A)) then
            C(k) = A(i)
            i = i + 1
          else if (j <= size(B)) then
            C(k) = B(j)
            j = j + 1
          end if
        end do
      end subroutine merge

    !!
    ! Swap the values of two real numbers.
    !!
    subroutine swap(x, y)
        implicit none
        real(4), intent(inout) :: x, y
        real(4) :: tmp
        tmp = x; x = y; y = tmp
    end subroutine

    !!
    ! Merge Sort algorithm
    !!
    recursive subroutine MergeSort(A, aux)
        implicit none
        real, intent(inout) :: A(:)
        real, intent(inout) :: aux(:)
        integer :: half
        half = (size(A) + 1) / 2
        if (size(A) < 2) then
          continue
        else if (size(A) == 2) then
          if (A(1) > A(2)) then
            call swap(A(1), A(2))
          end if
        else
          call MergeSort(A(:half), aux)
          call MergeSort(A(half + 1 :), aux)
          if (A(half) > A(half + 1)) then
            aux(1 : half) = A(1:half)
            call merge(aux(1:half), A(half + 1:), A)
          endif
        end if
      end subroutine MergeSort

endmodule sorting
    