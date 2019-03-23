function confirmEnding(str, target) {
	return substring = str.slice(str.length - target.length) === target;
}

console.log(confirmEnding("Carell", "l"));