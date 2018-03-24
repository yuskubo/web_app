function ror_btn(){
  var btn = "ror-btn";
  change_display(btn);
}

function css_btn(){
  var btn = "css-btn";
  change_display(btn);
}

function jav_btn(){
  var btn = "jav-btn";
  change_display(btn);
}

function change_display(btn) {
  var ror_detail = document.getElementById("ror-text");
  var css_detail = document.getElementById("css-text");
  var jav_detail = document.getElementById("jav-text");

  ror_detail.style.display = "none";
  css_detail.style.display = "none";
  jav_detail.style.display = "none";

  if (btn == "ror-btn") {
    ror_detail.style.display = "block";
  } else if( btn == "css-btn") {
    css_detail.style.display = "block";
  } else if(btn == "jav-btn") {
    jav_detail.style.display = "block";
  }

}




$(document).ready(function() {
 $("p").css("color", "blue");
});
