# Walkthrough on how we can take user input in ruby

puts "Enter your name: "
username = gets 
puts "Hello " + username 

# when you run this code, the program will pause on line 4 and wait for the user to 
# enter an input and then press enter 
# once the user hits enter, the program resumes execution 

# What are some caveats that we need to understand?

puts "Enter 'yes' or 'no'"

response = gets 

if response == "yes"
    puts "you said yes!"
end 

p response

# gets will return a string with the response
# notice that when it does p response, we get response+\n
# whenever we're using gets, we hit enter at the end
# enter forces a new line character, and to symbolise the new line character, we get \n
# this can be problematic if we have an if statement that depends on an exact response 

# if you have a string with a \n character at the end, you can use .chomp on the string
# .chomp will remove or "chomp" the \n from the end of the string 
# then you get the string without the \n

# What about when you're trying to get a number response from a user?

puts "Enter any number: " # user entered 42 

num = gets.chomp # 42 is a string 

puts 2 * num # this will give an error because num is a string 
# gets always returns a string unless you change the string with a method 

# how do we turn a string representation of a number into an integer?
# use .to_i which converts a string into an integer 

puts "Enter any number: " # user entered 42

num = gets.chomp.to_i # 42 is an integer 

puts 2 * num # 84

# we will not get an error with the above code 