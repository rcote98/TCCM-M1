## STRUCTURE DESCRIPTION

The preparatory exercises for each class session are
contained in several separate folders. All the exercises
in the same folder are compiled at the same time by just
running a simple `make` command.

## PROGRAM DESCRIPTION

- Exercise 3.1: Practice the use of different file-reading approaches. Direct reading reads by rows.
- Exercise 3.2: Counts the number of elements in the input file (each in an individual row), allocates a matrix/vector to store the elements and writes the square root of the absolute value of each element of the vector. 
- Exercise 3.3: Reads a vector and a matrix from two separate files and performs the dot product of the vector with itself and the matrix product of the matrix with itself.
- Exercise 3.4: Uses a subprogram (function) that receives as arguments a real number and a real square matrix and returns a matrix whose diagonal elements are multiplied by the real number.
- Exercise 3.5: Uses a subprogram (subroutine) that receives as arguments a real number and a real square matrix and returns a matrix whose non-diagonal elements are multiplied by the real number.
- Exercise 3.6: Uses the subprograms from 3.4 and 3.5, this time located within a module.
- Exercise 3.7: Uses the subprograms from 3.4 and 3.5, this time located within a library `.a` file.


## PROGRAM USAGE

1. Compile all the exercises by running `make`
2. Run a given exercise by doing `./exercise[exercise number].exe`
3. You may find some exercises produce output `.out` files, 
named accordingly.
4. Remove everything but the original code using `make clean`