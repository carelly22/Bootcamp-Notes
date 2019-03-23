/*
We have defined a function, filteredArray, which takes arr, a 
nested array, and elem as arguments, and returns a new array. 
elem represents an element that may or may not be present on 
one or more of the arrays nested within arr. Modify the 
function, using a for loop, to return a filtered version 
of the passed array such that any array nested within arr 
containing elem has been removed.
*/

function filteredArray(arr, elem) {
  let newArr = [];
  for (let i = 0; i < arr.length; i++) { 
  		if (arr[i].indexOf(elem) === -1) {
  			newArr.push(arr[i]);
  		}	
  }
  return newArr;
}

// change code here to test different cases:
console.log(filteredArray([[3, 2, 3], [1, 6, 3], [3, 13, 26], [19, 3, 9]], 3));
//should return 0
console.log(filteredArray([[10, 8, 3], [14, 6, 23], [3, 18, 6]], 18));
//should return [ [10, 8, 3], [14, 6, 23] ]
console.log(filteredArray([ ["trumpets", 2], ["flutes", 4], ["saxophones", 2] ], 2));
//should return [ ["flutes", 4] ]
console.log(filteredArray([ ["amy", "beth", "sam"], ["dave", "sean", "peter"] ], "peter"));
//should return [ ["amy", "beth", "sam"] ]
console.log(filteredArray([[3, 2, 3], [1, 6, 3], [3, 13, 26], [19, 3, 9]], 3));
//should return [ ]
