//repeat a string num times
//return an empty string if num is negative
function repeatStringNumTimes(str, num) {
	let i = 0;
	let repeatString = "";
	if (i < num) {
		for (let j = 0; j < num; j++) {
			repeatString += str;
		}
	}
	else {
		repeatString = "";
	}
	return repeatString;
}

console.log(repeatStringNumTimes("abc", 3));
console.log(repeatStringNumTimes("abc", 0));