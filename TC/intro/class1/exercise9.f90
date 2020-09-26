! --------- Declaration Zone -----------

program exercise9

implicit none

! ---------- Execution Zone ------------

! section a)
write(6,*) "Integer divisions"
write(6,*) 7/3
write(6,*) 7/4
write(6,*) 7/(-3)
write(6,*) 3/2
write(6,*) ""

! section b)
write(6,*) "Divisions using INT"
write(6,*) int(5.9/2.0)
write(6,*) int(5.0/2.0)
write(6,*) int(4.9/2.0)
write(6,*) int(3.0/2.0)
write(6,*) ""

write(6,*) "Divisions using NINT"
write(6,*) nint(5.9/2.0)
write(6,*) nint(5.0/2.0)
write(6,*) nint(4.9/2.0)
write(6,*) nint(3.0/2.0)


! ----------- Ending zone --------------

stop
end program exercise9
