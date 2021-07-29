window.setTimeout(function() {
  alert('CHIEEEEFFSSS!!!!');
}, 5000);

function hammerTime(time) {
  window.setTimeout(function() {
    alert('${time} is CHIEFS TIME!');
  });
}

const { ReadStream } = require('fs');
const readline = require('readline');

const r1 = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits() {
  reader.question('Would you like some Chiefs tickets?', (answer1) {
    console.log('Of course ${answer}!');
      reader.question('Do you want an autograph from the GOAT'), (answer2){
        console.log('You said ${answer2}!');

        const word1 = (answer1 === 'yes') ? 'do' : 'don\'t';
        const word2 = (answer2 === 'yes') ? 'do' : 'don\'t';

        console.log('So you ${word1} want tickets and you ${word2} want an autograph');
        reader.close();
      }
  });
}

function Cat() {
  this.name = 'Noodles';
  this.age = 3;
}

function Dog() {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function(cat){
  console.log("My name is ${this.name} and I'm chasing ${cat.name}! Woof!")
};

const Kitty = new Cat();
const Snoop = new Dog();

Snoop.chase(Kitty);

Snoop.chase.call(Kitty, Snoop);
Snoop.chase.apply(Kitty, [Snoop]);