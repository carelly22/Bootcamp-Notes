let user = {
  name: 'Kenneth',
  age: 28,
  data: {
    username: 'kennethCodesAllDay',
    joinDate: 'March 26, 2016',
    organization: 'freeCodeCamp',
    friends: [
      'Sam',
      'Kira',
      'Tomo'
    ],
    location: {
      city: 'San Francisco',
      state: 'CA',
      country: 'USA'
    }
  }
};

function addFriend(userObj, friend) { 
//function to add the name of a friend to the friends array in the user 
//object and then return the friends array
  userObj["data"]["friends"].push(friend);
  return user["data"]["friends"];
}

console.log(addFriend(user, 'Pete'));