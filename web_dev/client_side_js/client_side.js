var photo = document.getElementById("javascript-img");
function border (event) {
  event.target.style.border = "3px solid black";
};
photo.addEventListener("click", border);
function textColor() {
  var heading = document.getElementsByTagName("h1");
  heading[0].style.color = "blue";
};
