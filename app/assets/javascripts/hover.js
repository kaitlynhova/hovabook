
$(document).ready(function(){
  $(".workinthathover").mouseenter(function(){
    $(this).children(".display_name").removeClass( "display_name_hidden" ).addClass( "display_name_visibile" );

    $(this).children(".imgWrap").toggleClass("graybg");
    $(this).children("a").children(".index_image").css( "opacity", ".2" );
  }); 
  
  $(".workinthathover").mouseleave(function(){
    $(this).children(".display_name").removeClass( "display_name_visibile" ).addClass( "display_name_hidden" );

    $(this).children(".imgWrap").toggleClass("graybg");
    $(this).children("a").children(".index_image").css( "opacity", "1" );
  }); 
});

