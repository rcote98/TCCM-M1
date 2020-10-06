all: exercise_3.1.exe exercise_3.2.exe exercise_3.3.exe exercise_3.4.exe exercise_3.5.exe exercise_3.6.exe # exercise_3.7.exe
	rm -f *.o 

exercise_3.1.exe:
	gfortran -o exercise_3.1.exe exercise_3.1.f90

exercise_3.2.exe:
	gfortran -o exercise_3.2.exe exercise_3.2.f90

exercise_3.3.exe:
	gfortran -o exercise_3.3.exe exercise_3.3.f90

# more complex stuff

exercise_3.4.exe:
	gfortran -o exercise_3.4.exe exercise_3.4aux.f90 exercise_3.4.f90

exercise_3.5.exe:
	gfortran -o exercise_3.5.exe exercise_3.5aux.f90 exercise_3.5.f90

exercise_3.6.exe:
	gfortran -o exercise_3.6.exe matrixops.f90 exercise_3.6.f90

# even more complex stuff (libraries)

exercise_3.7.exe:
	gfortran -o exercise_2.7.exe exercise_2.7.f90



clean:
	rm -f *.o *.exe *.out