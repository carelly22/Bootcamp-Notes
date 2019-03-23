let users = {
  Alan: {
    age: 27,
    online: false
  },
  Jeff: {
    age: 32,
    online: true
  },
  Sarah: {
    age: 48,
    online: false
  },
  Ryan: {
    age: 19,
    online: true
  }
};

function countOnline(obj) {
  let count = 0; // inialize a counting variable
  for (let user in obj) {
    if (obj[user]["online"] === true){
      count++;
    }
    else {
      count;
    }
  }
  return count;
}

console.log(countOnline(users));