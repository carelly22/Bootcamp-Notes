let repeatNum = "42 42 42";
let reRegex = /(\d+)(\s)\1\2/;
let result = reRegex.test(repeatNum);
//let myResult = reRegex.match(repeatNum);
console.log(result);
//console.log(myResult);