//write a regex expression that will match the uppercase and lowercase "a" characters in the given quote sample
let chewieQuote = "Aaaaaaaaaaaaaaaarrrgh!";
let quoteSample = "He made a fair move. Screaming about it can't help you.";
let chewieRegex = /Aa*/; 
let result = chewieQuote.match(chewieRegex);
console.log(result);
let result2 = quoteSample.match(chewieRegex);
console.log(result2);