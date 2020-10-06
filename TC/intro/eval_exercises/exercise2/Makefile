exercise2: niceio.o sorting.o exercise2.o
	gfortran -o exercise2.exe sorting.o niceio.o exercise2.o

exercise2.o: exercise2.f90
	gfortran -c exercise2.f90

niceio.o: niceio.f90
	gfortran -c niceio.f90

sorting.o: sorting.f90
	gfortran -c sorting.f90

clean:
	rm -f *.out *.exe *.o *.mod