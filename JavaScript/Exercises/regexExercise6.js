// sample quote
let quoteSample = "The five boxing wizards jump quickly.";
let numberSample = "123 456 7890 ABC def GHI jkl MNO pqr STU vwx YZ.";

// regex expression
let alphabetRegexV2 = /\w/g; // Change this line

//results
let result = quoteSample.match(alphabetRegexV2).length;
let numResult = numberSample.match(alphabetRegexV2).length;

// print the result
console.log(result);
console.log(numResult);