//function which will return true for boolean primitives true and false
//returns false for everything else

function booWho(bool) {
	let truth;
	bool === true ? truth = true : bool === false ? truth = true : truth = false;
	return truth;
}

console.log(booWho(null));
console.log(booWho({ "a": 1 }));