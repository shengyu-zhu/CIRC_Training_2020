#!/usr/bin/env Rscript
cat("Hello, CIRC!")

# reading arguments
args <- commandArgs(TRUE)
n <- args[1]
m <- args[2]

# convert string to integers
n <- strtoi(n, base = 0L)
m <- strtoi(m, base = 0L)
cat("The factorial of the first number ", n, "is", factorial(n), "\n", "The factorial of the second number ", m, "is", factorial(m))