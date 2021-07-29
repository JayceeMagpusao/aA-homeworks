document.addEventListener("DOMContentLoaded", function(){
const ele = document.getElementById('mycanvas');
ele.lineWidth = 500;
ele.lineHeight = 500;
const ctx = ele.getContext('2d');

ctx.fillStyle = 'red';
ctx.fillRect(0, 0, 500, 500);

ctx.beginPath();
ctx.arc(150, 150, 60, 0, 2*Math.PI, true);
ctx.strokeStyle = "orange";
ctx.lineWidth = 10;
ctx.stroke();
ctx.fillStyle = "yellow";
ctx.fill();
});
