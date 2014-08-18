$(document).ready(function(){
  $(".edit_task input[type=submit]").remove();
  
  $(".tasks").on("click", ".edit_task input[type=checkbox]", function(){
    $(this).parent().submit();
  });
});