$(function() {
  var $addContentButton = $('#add-content');

  $addContentButton.on('click', function() {
    var info = prompt('What do you want to add to page?');
    var $contentDiv = $('<div>').attr('class', 'dynamic-content');

    $('#dynamic-content').append($contentDiv.text(info));
  });

});



