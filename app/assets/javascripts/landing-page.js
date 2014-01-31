$(document).ready(function() {

  $('#block-signup-button').click(function() {
    if($('.sign-up-form').is(":visible")) {
      $('.form').animate(
        {
          opacity: "0"
        },
        200,
        function() {
          $('.sign-up-form').slideUp();
        }
      );
    }
    else {
      $('.sign-up-form').slideDown(600, function() {
        $('.form').animate(
          {
            opacity: "1"
          },
          600
        );
      });
    }

  });
});