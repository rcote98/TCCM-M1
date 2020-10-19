all: exercise_3.1.exe exercise_3.2.exe exercise_3.3.exe exercise_3.4.exe exercise_3.5.exe exercise_3.6.exe exercise_3.7.exe	

exercise_3.1.exe: exercise_3.1.f90
	gfortran -o exercise_3.1.exe exercise_3.1.f90

exercise_3.2.exe: exercise_3.2.f90
	gfortran -o exercise_3.2.exe exercise_3.2.f90

exercise_3.3.exe: exercise_3.3.f90
	gfortran -o exercise_3.3.exe exercise_3.3.f90

# more complex stuff

exercise_3.4.exe: exercise_3.4.f90 exercise_3.4aux.f90
	gfortran -o exercise_3.4.exe exercise_3.4aux.f90 exercise_3.4.f90

exercise_3.5.exe: exercise_3.5.f90 exercise_3.5aux.f90
	gfortran -o exercise_3.5.exe exercise_3.5aux.f90 exercise_3.5.f90

exercise_3.6.exe: exercise_3.6.f90 matrixops.f90
	gfortran -o exercise_3.6.exe matrixops.f90 exercise_3.6.f90

# even more complex stuff (libraries)

exercise_3.7.exe: exercise_3.7.f90 libmat.a 
	gfortran -o exercise_3.7.exe exercise_3.7.f90 -L. -lmat

libmat.a: realxdiag.f90 realxnondiag.f90
	gfortran -c realxdiag.f90 realxnondiag.f90
	ar -r libmat.a realxdiag.o realxnondiag.o

clean:
	rm -f *.out *.exe *.o *.mod *.a