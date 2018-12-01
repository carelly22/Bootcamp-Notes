## Introduction to Arrays

### Objectives

* Explain what an array is an why we use it 
* Create an array
* Add an element to an array
* Access an element in an array
* Delete an element in an array

### Intro

* In JS, we can group like terms in an object called an **array**
* An array is an **ordered list** of items (called "elements" of the array), which are separated by commas

Code Example:

```js
var grilledCheeseIngredients = [
   'bread',
   'mild cheese',
   'butter',
   'tomato'
]
```

### Creation

JS arrays can contain all types of objects, and they can be of mixed types. You can create arrays in two ways:
* Array Literal

```js
\\ simply list values in a pair of square brackets

var myArray = [element0, element1, ..., elementN]
var tvShows = ["game of thrones", "true blood", "empire"]
var empty = []
var someNumbers = [1, 2, 3, 4, 5]
```

* Array Constructor
```js
\\ use a constructor function

var evenNumbers = new Array()
```

