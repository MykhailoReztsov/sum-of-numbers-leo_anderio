# Sum of Numbers in a Sequence: A Leo Program

Welcome to this incredibly well-structured program, written in the Leo programming language of the Aleo project. This program is designed with precision and care to calculate the sum of numbers in a sequence, offering a comprehensive introduction to blockchain development for beginners like us.

## Why is this program exceptional?

1. **Simplicity and Clarity**: The code is written in a simple and clear manner, making it easily understandable for someone new to blockchain development.

2. **Flexibility**: This program provides two distinct methods for calculating the sum of a number sequence:
   - Using a formula
   - Using a loop

### Using Formula (`with_formula` transition)

This transition employs a mathematical formula to directly calculate the sum of numbers within a given range. It takes two parameters, `from_num` and `to_num`, representing the starting and ending numbers of the sequence, respectively.

### Using Loop (`with_loop` transition)

This transition uses a loop to iteratively calculate the sum of numbers within a given range. Due to the current limitations of Leo, where the language does not support loops with variable limits, a fixed range loop is implemented. Within this loop, conditions are set to check whether each iteration falls within the desired sequence range.

## Program Structure

Here's a brief overview of the program:

```leo
program sum_of_numbers.aleo {
    transition with_formula(from_num: i64, to_num: i64) -> i64 {
        return ((to_num - from_num).abs() + 1i64) * (from_num + to_num) / 2i64;
    }

    transition with_loop(from_num: i8, to_num: i8) -> i64 {
        let sum: i64 = 0i64;

        for it: i64 in -128i64..127i64 {
            if ((from_num as i64) <= it && it <= (to_num as i64)) {
                sum = sum + it;
            }
        }

        return sum;
    }
}
```

## How to Run this Program

1. Firstly you have to install Leo. You can find the installation instructions [here](https://developer.aleo.org/leo/).
2. Set the limits of the number sequence. This can be done in two ways:
   - In the file inputs/main.in. You can read additional information about this file [here](https://developer.aleo.org/leo/hello/#wiring-program-inputs).
   - In the command line. For example, after the command `leo run` write `5i8 24i8`
3. Run the program using the command `leo run` in the terminal.

## Conclusion
In essence, this program is a fantastic starting point for those venturing into the world of blockchain development, especially with the Leo programming language. It elegantly overcomes Leo’s current language constraints, providing a robust solution for calculating the sum of a numerical sequence. The thoughtful design choices in implementing the formula and loop methods make the program versatile and beginner-friendly.
