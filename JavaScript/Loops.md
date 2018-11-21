# Intro to Loops

## Objectives

- Build a for loop
- Build a while loop
- Build a do-while loop
- Explain the purpose of a loop
- Explain the difference between each type of loop in JS

## About Loops

- Loops are used to execute the same block of code a specified number of times

Example of loops:

- for loops
- while loops
- do-while loops

## The `for` loop

- A `for` loop is used when we know how many times that we want the loop to run (for eg. when you have an array of a known size).

### Syntax of a for loop

```javascript
for ([initialization]; [condition]; [iteration]) {
   [loopBody];
}
```

### Syntax Defintions

1. **initialization** - an expression (including assignment epressions) or variable declaration. This is typically used to initialize a counter variable. May optionally declare new variables with the var keyword.

2. **condition** - an expression evaluated before each loop iteration; if this expression evaluates to true, the statement is executed

3. **iteration** - this statement is executed at the end of each iteration; usually involves incrementing or decrementing a counter, bringing the loop closer to ending

4. **loopBody** - code which runs on every iteration as long as the condition evaluates to true

Example Code:

```javascript
for (var i = 1; i < 100; i++) {
  console.log("Hello World the " + i + " time");
}
```

## The `while` loop
 
- The `while` loop is similar to an `if` statement, except that its body will keep executing until the condition evaluates to false. Best used when we don't know how many times we need a loop to run ie. the condition is dependent on a dynamic function/return value.

### Syntax of a `while` loop

```javascript
while ([condition]) {
   [loopBody];
}
```

Example Code:

```javascript
function maybeTrue() {
   return Math.random() >= 0.5; // retuns a random number between 0 (inclusive) and 1 (exclusive)
}

//run until `maybeTrue()` returns `false`
while (maybeTrue()) {
   console.log("And I ran; I ran so far away!");
}
```

**NB:** In this example, `maybeTrue()` returns `true` 50% of the time, and the loops runs until `maybeTure()` returns `false`.

## The `do-while` loop
 
- The `do-while` loop is almost identical to the `while` loop except the body of the `do-while` loop is executed at least once before the condition is tested. 

### Syntax of a `do-while` loop

```javascript
do {
   [loopBody];
} while ([condition]);
```

**NB:** You will not see `do-while` loops since very few situations will require a loop that blindly executes at least once.

Example Code:

```
var i = 0;

function incrementVariable() {
   i = i + 1;
}

do {
   console.log("doo-bee-doo-bee-doo");
   incrementVariable();
}  while (i < 5);
```

