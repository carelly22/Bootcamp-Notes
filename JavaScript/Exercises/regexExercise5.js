// example crowd gathering
let crowd = "P1P2P3P4P5P6CCCP7P8P9";
let crowd2 = "P2P1P5P4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCP3";

// regex expression
let reCriminals = /c+/ig; 

let matchedCriminals = crowd.match(reCriminals);
let matchedCriminals2 = crowd2.match(reCriminals);

// test output
console.log(matchedCriminals);
console.log(matchedCriminals2);