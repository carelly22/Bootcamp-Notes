# Classes

## Why should we use classes and what advantages do they offer?

As a programmer, you often want to model some object and the properties of that object. Let us now try to model some Cats in ruby - our Cats will have names, colours, and ages: 

```ruby
cat_1 = {name: "Sennacy", color: "brown", age: 3}
cat_2 = {name: "Whiskers", color: "white", age: 5}
cat_3 = {name: "Garfield", color: "orange", age: 7}
```

In the above, we are using hashes to represent our Cats. While this is good for a small number of Cats, what if we wanted to create a thousand Cats?
We would have to tediously create each hash, and this would leave a lot of opportunity for typos. We want to follow the DRY rule (Don't Repeat Yourself).
By using a class we can avoid this repetition and easily create objects of the same structure.

## Creating a Cat Class 

In the cat example above, we can notice a theme across all Cats we create. They all have the same keys, but may differ in their values. We can say that each Cat has the same structure. Let's DRY up the last example by creating a Class to act as a blueprint for Cats.

```ruby
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end
```
A few things we'll want to note about the code above:
* to create a class we use the class keyword
* the name of a class must begin with a capital letter
* we can define methods within a class

You'll notice that we defined a method named initialize in our class. This is a special method name that we will use when creating cats. 

The method expects 3 parameters, which is nothing new, but what are `@name`, `@color`, etc.? `@` is how we denote a instance variable or attribute of our class. That means that our cats will have the attributes or properties of `@name`, `@color`, `@age`.

## Initializing New Cats

We now have a blueprint to easily create Cats.

```ruby
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
cat_2 = Cat.new("Whiskers", "white", 5)
p cat_1 #<Cat:0x007fb6d804cfe0 @age=3, @color="brown", @name="Sennacy">
p cat_2 #<Cat:0x007fb6d6bb60b8 @age=5, @color="white", @name="Whiskers">
```

Let's recognize something a bit strange about this code: To create a `Cat` we must call `Cat.new`, this must mean that `new` is a method on `Cat`. This is strange because nowhere did we define a method literally named `new`. The trick is, when we call `Cat.new`, ruby will be really calling upon the `initialize` method we defined. A hint at this is the fact that the `initialize` method expects a name, color, age and when we call `Cat.new` we pass in a name, color, age. You're probably wondering why the heck we can't just call `Cat.initialize`; it seems way more logical right??? The short answer to that is because reasons. This is something we'll have to accept blindly for now: `Cat.new` will execute our `initialize` method. As we explore more about classes we promise to explain the weirdness behind `new` and `initialize`.

With that out of the way, let's get to the punchline. When we call `Cat.new("Sennacy", "brown", 3)`, it will return an object to us that we store in the variable `cat_1`. Notice that the object contains the attributes that result from executing `initialize`. If we want to create more `cats` we simply call `Cat.new` again, passing in any name, color, age we please. We can use our `Cat` class to create any number of `Cat` instances. This means that `cat_1` and `cat_2` are instances of `Cat`.

Notice that when we print out an instance of a class, the notation will show which class this instance belongs to and a unique id for this object: `<Cat:0x007fb6d804cfe0...`

## Getter methods

