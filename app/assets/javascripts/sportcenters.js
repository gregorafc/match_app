$(document).ready(function(){

  var $button = $('#new_sportcenter'),
      $page = $('#form-container');

  $button.on('click', function(){
    $.ajax('/sportcenters/new').success(function(data){
      $(this).hide();
      $page.html(data);
    });



  });
});