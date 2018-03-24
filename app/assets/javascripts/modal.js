$(function(){

  // モーダルウィンドウが開くときの処理
  $(".modal-open").click(function(){
    var navClass = $(this).attr("class"),
        href = $(this).attr("href");

    $(href).fadeIn();
    $(this).addClass("open");
    return false;
  });

  // モーダルウィンドウが閉じるときの処理
  $(".modal-close").click(function(){
    $(this).parents(".modal").fadeOut();
    $(".modal-open").removeClass("open");
    return false;
  });

});
