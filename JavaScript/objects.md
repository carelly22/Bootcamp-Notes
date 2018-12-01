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

