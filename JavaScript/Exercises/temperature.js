function makeClass() {
  "use strict";
  class Thermostat { //create Thermostat class
  	constructor(fahrenheit){
  		this.fahrenheit = fahrenheit;
  	}
  	//getter 
  	get temperature(){ 
  		return 5/9 * (this.fahrenheit - 32);
  	}
  	//setter
  	set temperature (celsius) {
  		this.fahrenheit = celsius * 9.0/5 + 32;
  	}
  }
  return Thermostat;
}
const Thermostat = makeClass();
const thermos = new Thermostat(76); // setting in Fahrenheit scale
let temp = thermos.temperature; // 24.44 in C
thermos.temperature = 26;
temp = thermos.temperature; // 26 in C

/*Use class keyword to create a Thermostat class. The constructor accepts Fahrenheit temperature.

Now create getter and setter in the class, to obtain the temperature in Celsius scale.

Remember that C = 5/9 * (F - 32) and F = C * 9.0 / 5 + 32, where F is the value of temperature in Fahrenheit scale, and C is the value of the same temperature in Celsius scale

Note

When you implement this, you would be tracking the temperature inside the class in one scale - either Fahrenheit or Celsius.

This is the power of getter or setter - you are creating an API for another user, who would get the correct result, no matter which one you track.*/