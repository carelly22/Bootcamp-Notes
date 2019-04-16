# How to approach problems

* Come up with test cases/ make examples
* Draw out the process
* Write out the description of the solution in english
* Translate to code 

Always try to follow these steps at the beginning

**Practice Problem**

Define a method, `#two_sum`, that accepts an array and a target sum(integer) as arguments. The method should return true if any two integers in the array sum to the target. Otherwise, it should return false. Assume the array will only contain integers. 

* Try to go through a couple test cases and be meticulous about how you draw out the algorithm.
* Next, think about how you would write the problem down in english.
* Steps:
    1.  Start with first element and sum with every other element.
    2. Compare sum to target and return true if equal
    3. increment starting point until starting point is the second to last element in the array and repeat comparisons 
    4. return false

# Testing Code

* Break your code down into more testdable chunks and actively run each of those chunks to test if they're working
* Use `p` statements often; use them to check what the values of variables are, that methods are called as expected etc.
* Use the debugger

# General Tips

* When you write a script, write all of your code inside of methods
* Only a little bit of the code should be written at the top level to kick things off

