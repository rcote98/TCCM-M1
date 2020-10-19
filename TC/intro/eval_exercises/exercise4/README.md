# PROGRAM DESCRIPTION

This program calculates the interaction potential between
two atoms, using a simple model known as the Morse potential. 

It reads all the necessary parameters from the file "input.dat",
producing an output data file ("result.out") with two columns
containing both the radii and the value of the potential V(r).

The resulting output may be visualized by running the Python 
script provided with the program.

# PROGRAM USAGE

1. Compile the program "exercise4.exe" by running `make`
2. Check the input settings in "input.dat"
3. Run the program by doing `./exercise4.exe`
4. You may find the output of the last execution in the output `.out` files
5. Optionally, you may plot the energy curve by running  `python3 plot.py`
6. Remove everything but the original code using `make clean`