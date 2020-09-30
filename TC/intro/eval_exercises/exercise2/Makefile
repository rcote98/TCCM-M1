exercise2: exercise2.o niceio.o sorting.o
	gfortran -o exercise2.exe sorting.o niceio.o exercise2.o
	rm *.o 

exercise2.o: exercise2.f90
	gfortran -c exercise2.f90

niceio.o: niceio.f90
	gfortran -c niceio.f90

sorting.o: sorting.f90
	gfortran -c sorting.f90

clean:
	rm *.out