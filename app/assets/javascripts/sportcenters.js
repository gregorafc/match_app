$(document).ready(function(){

  var button = $('#new_sportcenter'),
      page = $('#form-container');

  button.on('click', function(event){
    $.ajax('/sportcenters/new', {
      success: function(response){
      button.hide();
      page.html(response);
      }
    });
  });

  $('.back').on('click', function() {
    page.html('');
    button.show();
  });


});
