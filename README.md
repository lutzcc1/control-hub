# control-hub
## Request
There is a need for a Rest (or Rest-like) API that can receive an index `n` and returns the Fibonacci value that corresponds to the given index.

### Example
The first values of the Fibonacci sequence are 0, 1, 1, 2, 3, 5, 8, 13, ..., so, if we were to give the API the index `n=3`, we should get the response value `2`, and if we request `n=6`, we should get `8` as the response, and so on.

## Implementation
Use a standard `while` loop to calculate the Fibonacci sequence, the index being the constraint that will terminate the loop. The implemented algorithm has **O(n)** running time, where `n` is the index given.

I used Ruby’s dynamic arrays to continuously add Fibonacci values to the `sequence` array until the program reaches the desired index. To check the loop ending condition, I also used another feature of Ruby. The language will return a `nil` value for array indexes that haven’t been assigned.

The logic is: Keep pushing Fibonacci sequence values to the `sequence` array until a value is assigned in the desired index `n`. Once `sequence[n]` has a value assigned, the loop ends, and we return the value from the given index.

## Invalid input & edge cases
The program only accepts integers equal to or greater than `0`. It will return `nil` for everything else.
The values for index `0` and `1` don't need to be calculated; we return them immediately if that’s the program's input.

## About the implementation
I don't have context about where or when this piece of code will be called, so I decided to keep the solution simple and just write what is absolutely needed to provide input and get a result. That way, we can easily add this method to either a controller, model, service, etc. 
