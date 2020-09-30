! --------- Declaration Zone -----------

program exercise10

implicit none

integer(2) :: number

! ---------- Execution Zone ------------

write(6, *) "Please, write an integer number between 0 and 10:"
read(5,*) number

! "complaining"
if (number < 0) then
    write(6,*) "No negative numbers allowed!"
    stop
else if (number > 10) then
    write(6,*) "No numbers bigger than 10 are allowed!"
    stop
endif

! comparison:
! here I chose to compute the square up to two times instead of 
! creating a new variable in order to be more memory efficient.
if (number**2 < number + 30) then 
    write(6,*) "The squared value of this number is smaller than", number + 30
else if (number**2 > number + 30) then 
    write(6,*) "The squared value of this number is larger than", number + 30
else
    write(6,*) "The squared value of this number is equal to", number + 30
endif

! ----------- Ending zone --------------

stop
end program exercise10
