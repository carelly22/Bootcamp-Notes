/*Use lookaheads in the pwRegex to match passwords that are greater than 5 characters long and have two consecutive digits.*/
let sampleWord = "astronaut";
let sampleWord2 = "bana12";
let pwRegex = /(?=\w{5,})(?=\D*\d{2})/; 
// \w matches all letters and numbers
// \d matches all numbers \d\d 
let result = pwRegex.test(sampleWord);
let result2 = pwRegex.test(sampleWord2);
console.log(result);
console.log(result2);