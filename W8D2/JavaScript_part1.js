function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);
  }
  console.log(x);
};

mysteryScoping1(); // in block, in block

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';  
    console.log(x);
  }
  console.log(x);
};

mysteryScoping2(); // in block, out of block

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);
  }
  console.log(x);
};

mysteryScoping3(); // error message

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);
  }
  console.log(x);
};

mysteryScoping4(); // in block, out of block

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
};

mysteryScoping5(); // syntax error

function madLib(verb, adj, noun) {
  return 'We shall ${verb}.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}!'
};

madLib('run', 'best', 'plays');

function isSubstring(pharase, subphrase) {
  return phrase.includes(subphrase);
}

isSubstring("time to program", "time")
// true

isSubstring("Jump for joy", "joys")
// false


function fizzBuzz(array) {
  let results = [];

  array.forEach(num => {
    let isDivThree = num % 3 === 0;
    let isDivFive = num % 5 === 0;

    if (isDivThree && isDivFive){
      continue;
    } else if (isDivThree || isDivFive){
      results << num;
    }
  });
  return results;
}

fizzBuzz([3, 5, 15, 4])

function isPrime(n){
  if (n < 2) {return false};

  for (let i = 2; i < n; i++){
    if (n % i === 0){
      return false;
    }
  }
  return true;
}

isPrime(5)
isPrime(11)
isPrime(12)
isPrime(1)

function sumOfNPrimes(n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += 1;
      countPrimes++;
    }
    i++;
  }
  return sum;
}

sumOfNPrimes(2)
sumOfNPrimes(7)