/*test cases should satisfy the following:
1)The only numbers in the username have to be at the end. 
There can be zero or more of them at the end.
2) Username letters can be lowercase and uppercase.
3) Usernames have to be at least two characters long. 
A two-letter username can only use alphabet letter characters.*/

// test username array
let username = ["JackOfAllTrades", "J", "Oceans11", "RegexGuru", "007", "9"];

// result array
let results = [];

// regex expression
let userCheck = /^\D+\D+\w*[0-9]*$/; 

// function to check the usernames
function usernameCheck (user) {
	for (let i = 0; i < user.length; i++){
		results[i] = userCheck.test(user[i]);
	}
	return results;
}

// check and print the results
console.log(usernameCheck(username));