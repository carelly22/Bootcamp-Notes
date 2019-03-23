//Return an array consisting of the largest number from each provided 
//sub-array. For simplicity, the provided array will contain exactly 4 
//sub-arrays.

function largestOfFour(arr) {
	let largestArray = [];
	for (let i = 0; i < arr.length; i++) {
		let largest = arr[i][0];
		for (let j = 0; j < arr[i].length; j++) {
			arr[i][j] > largest ? largest = arr[i][j] : largest;
		}
		largestArray[i] = largest;
	}
  return largestArray;
}

console.log(largestOfFour([[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]]));
console.log(largestOfFour([[13, 27, 18, 26], [4, 5, 1, 3], [32, 35, 37, 39], [1000, 1001, 857, 1]]));
console.log(largestOfFour([[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]]));
console.log(largestOfFour([[17, 23, 25, 12], [25, 7, 34, 48], [4, -10, 18, 21], [-72, -3, -17, -10]]));