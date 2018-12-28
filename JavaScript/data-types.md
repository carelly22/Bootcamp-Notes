# REPL (Read-Evaluate-Print-Loop)

* **Read** whatever I just wrote
* **Evaluate** it
* **Print** it 
* **Loop** returning control to the user and wait to be asked to read the next line

**NB** : console.log is an example of REPL

## Syntax

* Semicolons
  - You don't have to use semicolons
  - If you are using them, you should be consistent!

* camelCase
  - JS variables and function names are written using camel case - the first letter of the first word is lowercase, the first letters of subsequent words are written in uppercase; no punctuation or spaces between words
  - **Example** : `var pizzaTopping = "pepperoni";`

## Primitive Data Types in JS

* Numbers
* Strings
* Boolean
* Undefined 
* Null

## Numbers 

* The number data type includes any positive or negative integer, as well as decimals - so numbers are just represented by their digits
* Entering a number into the console will return it right back to you

## Arithmetic Operations

* You can perform calculations with number easily - just type out the expression the way you would type it in a calculator
* Addition **+** : `10 + 2` = 12
* Subtraction **-** : `10 - 2` = 8
* Multiplication __*__ : `10 * 2` = 20
* Division **/** : `10 / 2` = 5
* Modulus **%** - returns the remainder of a division operation : `12 % 5` = 2 

**NB:** The modulo operator comes in handy if we are checking if a number is even. Simply write `Number % 2` and if the result is 0, the number is even; if not, then the number is odd.

## NaN ("Not a number")

* **NaN** is the return value from operations which have an undefined numerical result eg. dividing 0 by 0, multiplying strings together
* You can test whether a value is a valid number by using the `isNaN()` function eg. `isNaN(5);` will return false since 5 is a valid number

## Comparing Numbers

* You can compare numbers to see if one's greater than, less than, or equal to another (in either the console or in a program)
* **Example** : `5 > 10` will return false

Operator | Meaning|
---|---|
< | Less than
> | Greater than
<= | Less than or Equal to
>= | Greater than or Equal to
== | Equal to 
!= | Not Equal to

## Comments

* Comments are often used by developers to help clarify the meaning of their code in a human friendly language
* Comments in JS are anything after a double forward slash `//` (this  is used for single line comments) **example:** `// this is a comment`
* For multi-line comments, you should enclose text in `/*...*/`
* Comments are not executed by the JS interpreter

## Strings

* One of the primitive data types of JS
* **Strings** are a collection os characters enclosed in either single or double quotes
* Strings are how JS represents text
* **Examples:** `'Hello World!'`, `"Hello World!"`, `'h'`, and `''`
* It is correct to use either double `"` or single `'` quotes with strings, as long as you're consistent

## String concatenation

* **Concatenation** - when you add multiple strings together
* **Example:** `"Hello," + " New York City"` will return "Hello, New York City"

## Interpolation

* **Interpolation** - this is when you use one string as a variable within another string
* Use backticks for the entire string, and put a dollar sign with curly brackets around the variable

**Example**
```js 
let hello = "Hello";
let helloWorld = `${hello} world`;
```

## Methods for Strings

**.substr()**: return and store a portion of a string - the first argument is the start position; the second argument is the length of the section you copy
```js
var greetings = "Hi there friend!";
var buddy = greetings.substr(9,6);
```

**.slice()**: returns a copy of a section of a string - first argument is the start position; the second argument is the end position
```js
var budding = greetings.slice(9,15);
```

## Escape sequences

**Escape sequences** are useful for when you need to use special characters or formatting in strings that can't be entered the same way as you would in a word processor
* Syntax: backslash + letter (eg., "\n")
```js
// "\n" = new line 
"Hello\nGoodbye"
//returns "Hello"
//returns "Goodbye"

// "\t" = tab
"\tOnce upon a time..."
//returns " Once upon a time..."
```

## Variables

* **Variables** are  containers for information - we can store any value in them
* **Declare** a variable: use the keywords `var`, `const`, or `let`
* In newer versions of JS, `const` and `let` were implemented
* `let` is used for variables that change
* `const` is used for variables that will not be changed in your JS code
* **NB:** people tend to either use `var` for everything or `const` and `let` consistently

## Null and Undefined

* If we declare a variable without assigning a value to it, it will by default, have a value of `undefined`
* Null is similar to `undefined` but we have to explicitly assign it to a variable
* `Undefined` implies nothing because it never was anything, while `null` implies explicitly set to nothing

