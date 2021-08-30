document.addEventListener("turbolinks:load", function () {
  $(function(){
  
    $('.toggle_btn').on('click', function(){
      if (!$('#header').hasClass('open')){
        $('#header').addClass('open');
      }else{
        $('#header').removeClass('open');
      }
    });
  
    $('#mask').on('click', function(){ 
      $('#header').removeClass('open');
    });
  
  });
});
