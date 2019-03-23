function findLongestWordLength(str) {
	let myString = str.split(" ");
	//return myString;
	let length = 0;
	for (let i = 0; i < myString.length; i++) {
		if (myString[i].length > length) {
			length = myString[i].length;
		}
	}
	return length;
}

findLongestWordLength("The quick brown fox jumped over the lazy dog");
console.log(findLongestWordLength("The quick brown fox jumped over the lazy dog"));

