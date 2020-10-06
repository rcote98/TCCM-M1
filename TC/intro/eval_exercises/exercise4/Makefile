exercise4: niceio.o interactions.o exercise4.o 
	gfortran -o exercise4.exe interactions.o niceio.o exercise4.o

exercise4.o: exercise4.f90
	gfortran -c exercise4.f90

niceio.o: niceio.f90
	gfortran -c niceio.f90

interactions.o: interactions.f90
	gfortran -c interactions.f90

clean:
	rm -f *.out *.exe *.o *.mod