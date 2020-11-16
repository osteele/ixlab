# Arrays

---

arrays1.pde

Draw a circle.

---
arrays2.pde

The circle moves downwards. To do this, introduce variables `x` and `y`.

---
arrays3.pde

Prepare to add another circle.
Rename the variables to `x1` and `y1`.

---
arrays4.pde

Copy the code that *defines* the variables, and the code that *uses* the
variables, to make another falling circle.

Question: How would you extend this sketch to draw 100 circles, instead of two.

---
arrays5.pde

Replace `x1` and `x2` by any array `xs`. Now the first x value is at `xs[0]` and
the second x value is at `xs[1]`.

---
arrays6.pde

Instead of writing `xs[0]` directly, create a variable `i` whose value is 0, and
use `xs[i]` instead. Also do the same for `xs[1]`.

This makes lines 13–14 the same as lines 19–20. The two code blocks are exactly the same except for the value of `i`.

---
arrays7.pde

Replace the two blocks of code, that run with different values of `i`, with a
single block inside a `for` loop.

---
arrays8.pde

`float[] xs = {100, 200}` is one way to initialize an array. It creates a new
array with initial values `100` and `200`.

`new float[2]` is another way to create a new array. It creates an array with
initial values `0` and `0`. Then we change the array values, on lines 6–9.

---
arrays9.pde

Set the array values to random numbers. Each time we run the sketch, the circles
will start in a different position.

---
arrays10.pde

Replace the code that uses one line to set `xs[0]` and another to set `xs[1]`,
by a `for` loop that sets all the values in `xs`.

---
arrays11.pde

Draw 10 circles instead of two. We have to change `2` to `10` in four places:
lines 1, 2, 6, and 15.

---
arrays12.pde

Instead of using `10` in the `for` loops, use `xs.length`. Now the loop is
reading the length from the array itself, so it will always loop over the right
number of elements.

Now change to 30, 100, 300, etc.

---
arrays13.pde

Replace the `10` in `new float[10]` by a variable `DOT_COUNT`. Now we can change
the value of `DOT_COUNT`, and `xs` and `ys` will have the new size.

---

arrays14.pde

Turn speed into a variable. Try different speed e.g. 4

---

arrays15.pde

Make an array of speeds. Remember to increase the DOT_COUNT! Filling them with random(4). 