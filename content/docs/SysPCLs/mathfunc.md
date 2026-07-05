---
title: "mathfunc()"
description: "Miscellaneous Math Function"
weight: 220
draft: false
---

## Purpose

`mathfunc()` Miscellaneous Math Functions

Following is a list of math functions implemented as system PCLs. Except where indicated all results and arguments are 4C floats.

result = pow(x,y);

returns x raised to the power of y.

result = log(x);

returns the natural logarithm of x;

result = log10(x);

returns the base 10 logarithm of x;

result = exp(x);

returns the exponential function of x

result = ldexp(x,y);

returns x * (2 raised to the y power) y is an integer

result = sqrt(x);

returns the square root of x

srand(x)

starts a new sequence of seudo random numbers using x as seed x is a non negative integer

n = `rand()`;

returns the next psuedo random integer n is a non negative integer <= 32767

result = sin(x);

returns the sine of x

result = sinh(x);

returns the hyperbolic sine of x

result = cos(x);

returns the cosine of x

result = cosh(x);

returns the hyperbolic cosine of x

result = tan(x);

returns the tangent of x

result = tanh(x);

returns the hyperbolic tangent of x

result = atan(x);

returns the arc tangent of x

result = atanh(x);

returns the inverse hyperbolic tangent of x

result = acos(x);

returns the arc cosine of x

result = asin(x);

returns the arc sine of x

result = atan2(y,x);

returns the arc tangent of the two variables x and y.

result = asinh(x);

returns the inverse hyperbolic sine of x

result = acosh(x);

returns the inverse hyperbolic cosine of x

## Where Used

Any of the above math functions can be called from anywhere in the application.

## Bugs/Features/Comments

All of the above functions are implemented using calls to standard C library routines. 4C type floats are converted to C type double before calling the routine. C type results of double are converted back to 4C type floats. Because of this conversion, precision may be lost since the C type double is less precise than the 4C type of float.

## See Also

Back to Top

