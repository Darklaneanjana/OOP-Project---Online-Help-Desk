(function($) {
    $('.file-upload').file_upload();

           

         



  $('#reset').on('click', function(){
      $('#register-form').reset();
  });

  $('#register-form').validate({
    rules : {
        issue : {
            required: true,
        },
        optCat : {
            required: true,
        },
        company : {
            required: true
        },
        email : {
            required: true,
            email : true
        },
        description : {
            required: true,
        }
    },
    onfocusout: function(element) {
        $(element).valid();
    },
});

    jQuery.extend(jQuery.validator.messages, {
        required: "oooooi",
        email: "Please enter a valid email address.",
        url: "Please enter a valid URL.",
        description: "Please enter a valid date.",


    });
})(jQuery);