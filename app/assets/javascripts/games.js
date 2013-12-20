var now = new Date();
var current_year = now.getFullYear();

var target_year = document.getElementById("yr").innerHTML;
var target_month = document.getElementById("mon").innerHTML;
var target_day = document.getElementById("day").innerHTML;

var target_date = new Date(target_month + " " + target_date + ", " + target_year).getTime();

var days, hours, minutes, seconds;

var $days = document.getElementById("day");
var $hours = document.getElementById("hr");
var $minutes = document.getElementById("min");
var $seconds = document.getElementById("sec");

// Calculate the countdown clock and set the HTML.
function update() {
  // Find the amount of "seconds" between now and target.
  var current_date = new Date().getTime();
  var seconds_left = (target_date - current_date) / 1000;

  // Do some time calculations.
  days = parseInt(seconds_left / 86400);
  seconds_left = seconds_left % 86400;
   
  hours = parseInt(seconds_left / 3600);
  seconds_left = seconds_left % 3600;
   
  minutes = parseInt(seconds_left / 60);
  seconds = parseInt(seconds_left % 60);

  // Format the number strings and put them in the elements.
  $days.innerHTML = pad(days, 2);
  $hours.innerHTML = pad(hours, 2);
  $minutes.innerHTML = pad(minutes, 2);
  $seconds.innerHTML = pad(seconds, 2);
};

update();
setInterval(update, 1000);

function pad(number, size) {
  var s = number + "";
  while (s.length < size) s = "0" + s;
  return s;
};