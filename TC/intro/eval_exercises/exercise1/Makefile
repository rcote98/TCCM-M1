exercise1: niceio.o exercise1.o
	gfortran -o exercise1.exe niceio.o exercise1.o

exercise1.o: exercise1.f90
	gfortran -c exercise1.f90

niceio.o: niceio.f90
	gfortran -c niceio.f90

clean:
	rm -f *.out *.exe *.o *.mod