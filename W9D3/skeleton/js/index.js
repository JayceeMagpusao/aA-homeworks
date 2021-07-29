console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather?' +
  	'q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data) {
    console.log("Pretty much the same weather as yesterday!")
    console.log(data);
  },
  error() {
    console.error("You messed it up?!");
  },
});

// Add another console log here, outside your AJAX request
console.log("AJAX is not that bad.")