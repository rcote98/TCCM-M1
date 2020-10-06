exercise3: niceio.o geom.o exercise3.o 
	gfortran -o exercise3.exe geom.o niceio.o exercise3.o

exercise3.o: exercise3.f90
	gfortran -c exercise3.f90

niceio.o: niceio.f90
	gfortran -c niceio.f90

geom.o: geom.f90
	gfortran -c geom.f90

clean:
	rm -f *.out *.exe *.o *.mod