$(document).ready(function() {

  $('.add-item-form').on('submit', function() {

    var valuesToSubmit = $(this).serialize();

    $.ajax({
      type: 'POST',
      url: '/add-item',
      data: valuesToSubmit,
      beforeSend: function() {
        $('.add-item-button').attr('disabled', true);
      },
      success: function(response) {
        console.log(response);
        $('#current-inventory').append(response);
        $('.add-item-form').find('input[type="text"],textarea, select').val('');
      },
      error: function() {
        alert("There was a problem adding this item. Please try again. ");
      },
      complete: function() {
        $('.add-item-button').attr('disabled', false);
      }
    });

    return false; // Prevents normal behavior
  });


  // Delete item in inventory
  $('.delete').on('click', function() {
    $.ajax({
      type: 'POST',
      url: '/delete-item',
      data: data,
      beforeSend: function() {
        $('.delete').attr('disabled', true);
      },
      success: function() {
        $(this).parent().remove();
      },
      error: function() {
        alert("There was a problem deleting this item. Please try again. ");
      },
      complete: function() {
        $('.delete').attr('disabled', false);
      }
    });
  });

});
