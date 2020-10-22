## STRUCTURE DESCRIPTION

The preparatory exercises for each class session are
contained in several separate folders. All the exercises
in the same folder are compiled at the same time by just
running a simple `make` command.

## PROGRAM DESCRIPTION

- Exercise 2.1: Read a vector size from a file, create two vectors and write its sum and elementwise product.
- Exercise 2.2: Creates a vector of size determined in the input, with a value of 1 for the first three elements, 2 for the following four and for the last ones the sum of all previous values, and then turns it into a 3x3 matrix.
- Exercise 2.3: Reads vector sizes from a files and creates two vectors off of them.
- Exercise 2.4: Reads 10 numbers from a file and prints those bigger than 5.0 and writes 5.0 instead of the numbers lower or equal than 5.0
- Exercise 2.5: Reads two matrices of 3x3 from a file, adds them and writes the result and also the elements (2, 2), (3, 2) and (1, 3) of the resulting
matrix.
- Exercise 2.6: Same as 2.5 but performing the product of both
matrices.
- Exercise 2.7: Reads two vectors from two different files and performs their dot product.
- Exercise 2.8: Same as 2.7 but perform their point-wise product.

## PROGRAM USAGE

1. Compile all the exercises by running `make`
2. Run a given exercise by doing `./exercise[exercise number].exe`
3. You may find some exercises produce output `.out` files, 
named accordingly.
4. Remove everything but the original code using `make clean`