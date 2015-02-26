$(function() {

  $('#create-user').on('submit', function(event) {
    event.preventDefault();

    $.ajax({
      type: 'post',
      dataType: 'json',
      data: $('#first_name').serialize(),
      url: '/users/new',
      success: function(data) {
        var $newUser = $('<li>').text(data["recent_user"]);
        $('.users').append($newUser);
      },
      failure: function(data) {
        alert('didnt work');
      }
    });
  });

});
