$(document).ready(function() {
    $('#name-edit-button').click(function() {
    if($('.name-edit-form').is(":visible")) {
      $('.name-form').animate(
        {
          opacity: "0"
        },
        200,
        function() {
          $('#name-edit-form').slideUp();
        }
      );
    }
    else {
      $('.name-edit-form').slideDown(600, function() {
        $('.name-form').animate(
          {
            opacity: "1"
          },
          600
        );
      });
    }
  });
});