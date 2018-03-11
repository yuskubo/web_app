
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


$(function(){

// モーダルウィンドウが開くときの処理
$(".modalOpen").click(function(){

    var navClass = $(this).attr("class"),
        href = $(this).attr("href");

        $(href).fadeIn();
    $(this).addClass("open");
    return false;
});

// モーダルウィンドウが閉じるときの処理
$(".modalClose").click(function(){
    $(this).parents(".modal").fadeOut();
    $(".modalOpen").removeClass("open");
    return false;
});

});

$(document).ready(function() {
 $("p").css("color", "blue");
});
