# Objects

## Intro

**Objects** are a way to store different pieces of information in a single data structure while maintaining a descriptive naming scheme. 

Specifically, **Objects** are a collection of properties bounded by curly braces ({}), similar to a has in Ruby. These properties can point to values of any data type - even other Objects.

* You can have empty Objects

```js
{}
```

* You can also have Objects with a single key-value pair

```js
{ key: value }
```

* You can also have Objects with multiple key-value pairs. In this case, you use commas to separate the key-value pairs

```js
{
  key1: value1,
  key2: value2
}
```

Example of an Object:

```js
const address = {
  street1: "11 Broadway",
  street2: "2nd Floor",
  city: "New York",
  state: "NY",
  zipCode: 10004
}
```

* The data in an Object is stored in the **value** half of the key-value pairings
* The **key** lets us access that value
* Inside an Object, we assign each value a key; this is similar to how we use identifiers to name variables and functions
* Once you gave assigned a value to the key, you can refer to that key and the JS engine knows exactly which value you are trying to access

## Accessing a value stored in an Object

There are two ways to access values in an Object:
* dot notation
* bracket notation

## Dot Notation

With dot notation, we use the *member access operator* (a single period) to access values in an Object

Code Example:

```js
address.street1;
// => "11 Broadway"

address.city;
// => "New York"
``` 

Dot-notation is great for readability; you can just reference the bare key name and get your values. 
> This should be the go-to strategy for accessing the properties of an Object.

## Accessing nonexistent properties

If you try to access a nonexistent property for an Object, JS will return `undefined` because there is no matching key on the Object


```js
address.country;
// => undefined
```

## Bracket Notation

With bracket notation, we use the *computed member access operator*; this is a pair of square brackets ([]). To access the same properties that we did in the dot notation example, we need to represent them as strings inside the oeprator.

```js
address["street"];
// => "11 Broadway"

address["zipCode"];
// => 10004
```

NB: Bracket notation is a bit harder to read that dot notation, so people usually default to the latter. 

However, there are two situations where you **should** use bracket notation:
* With nonstandard keys
* Accessing properties dynamically

### Bracket notation with nonstandard keys

If you need to use a nonstandard string as the key in an Object, you will only be able to access the properties using bracket notation.

```js
const wildKeys = {
	"Cash rules everything around me.": "Wu",
	"C.R.E.A.M.": "Tang",
	"Get the money.": "For",
	"$ $ bill, y'all!": "Ever"
};
```

It is not possible to access the above properties using dot noation:

```js
wildKeys."Cash rules everything around me.";
// ERROR: Uncaught SyntaxError: Unexpected string
```

But bracket notation will work:

```js
wildkeys["$ $ bill, y'all!"];
// => "Ever"
```

**NB**: In order to access a property via dot notation, **the key must follow the same naming rules applied to variables and functions**. Important to note that under the hood, **all keys are strings**.

Rules for naming keys:

* camelCaseEverything
* start the key with a lowercase letter
* no spaces or punctuation

**Tip**: Keeping to the above rules will keep everything standardized, and being able to access properties via dot notation is more readable than having to default to bracket notation.

### Accessing properties dynamically

You can place any expression inside the brackets and JS will compute its value in order to figure out which property it needs to access

Example:

```js
address["zip" + "Code"];
// => 10004
```

Example #2:

```js
const meals = {
	breakfast: "Oatmeal",
	lunch: "Caesar salad",
	dinner: "Turkey sandwich"
}
```

```js
let mealName = "lunch";

meals[mealName];
// => "Caesar salad"
```

However, if you try to use the `mealName` variable with dot notation, it will not work. This is because dot notation doesn't treat `mealName` as a variable; it checks whether a property exists with a key of `mealName` (and only finds `breakfast`, `lunch`, and `dinner`) and thus returns `undefined`.

Dot notation is for when you know the **exact name of the property** beforehand; bracket notation is for when you need to compute it when the program runs

## Add a property to an Object

To add properties to an object use:
* dot notation
* bracket notation

```js
const circle = {};

circle.radius = 5;

circle["diameter"] = 10;

circle.circumference = circle.diameter * Math.PI;
// => 31.415926

circle["area"] = Math.PI * circle.radius ** 2;
// => 78.53981