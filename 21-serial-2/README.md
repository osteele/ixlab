# Serial – Transmitting Large and Multiple Values

This directory contains a snapshot of large-number and multiple-value Arduino <-> Processing serial communication, as it was developed in class.

You may use this as reference, in order to review the steps that were discussed in class.

For copying and incorporating into your own code, you should instead use
download
[IxLab-SerialCommunication](https://drive.google.com/file/d/1UIZIwuOnHabXcGf_uQtwh8XwM6nVfd5W/view).
The code in those files: is supported by the Fellows and other instructors; has
been tested by many semesters of students; and is designed to support any number
of values, not just one value (as in the `a2…`/`p2…` sketches in this directory)
or two values (as in the `a3…`/`p3…` sketches in this directory).

## Directory Naming Conventions

Directories that start with `a` are Arduino sketches. Directories that start
with `p` are Processing sketches. For example, `a1_send_binary_value` is an
Arduino sketch; `p1_read_binary_value` is an Arduino sketch.

In *this* directory, files that begin with the same number are designed to be
used together. (This is not true of all the directories in this repository.) For
example, `a2_send_ascii_value` on the Arduino sends serial data that
`p2_read_ascii_value` can read.

## Lecture Steps

The following code is designed for a circuit with a single pot connected to A0
(steps 1 and 2), or two pots (steps 3) connected to A0 and A1.

Steps:

1. `a1_send_binary_value` and `p1_read_binary_value` send a single value from a
   single pot, represented on the serial port as a single byte — an 8-bit number
   that can range from 0…255. This limitation on the size of the number means
   that only some of the information from the input range of 0…1023 can be
   transmitted. The code as presented sends the *remainder* of the sensor value,
   when it is divided by 256. (`Serial.write()` does this automatically.)
   Previously, we divided the sensor value by four, which avoids this problem
   but loses precision (every four micro-turns from the pot are combined into a
   single value on the serial port).

2. `a2_send_ascii_value` and `p2_read_ascii_value` send a single value
   represented as an ASCII string that is *terminated* by a newline (number 10,
   also represented as `'\n'` in source code). This can represent larger numbers
   such as `300`. For example the number 300 is transmitted as the string
   "300\n", or the bytes 51, 48, 48, 10.

3. `a3_send_multiple` and `p3_read_multiple` send two values that are
   represented as ASCII string, *separated* by a comma `,` and *terminated* by a
   newline `\n`. For example, the pair of number 300 (from the first sensor) and
   200 (from the second sensor) is transmitted as the string "300,200\n", or the
   bytes 51, 48, 48, 10, 50, 48, 48, 10, 54.
