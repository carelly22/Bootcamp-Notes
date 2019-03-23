class SpaceShuttle {
  constructor(targetPlanet){
    this.targetPlanet = targetPlanet;
  }
}
const zeus = new SpaceShuttle('Jupiter');
console.log(zeus.targetPlanet);

function makeClass() {
  "use strict";
  class Vegetable {
  	constructor(name) {
  		this.name = name;
  	}
  }
  return Vegetable;
};
const Vegetable = makeClass();
const carrot = new Vegetable('carrot');
console.log(carrot.name); // => should be 'carrot'

//Use class keyword and write a proper 
//constructor to create the Vegetable class.

//The Vegetable lets you create a vegetable 
//object, with a property name, to be passed to constructor.