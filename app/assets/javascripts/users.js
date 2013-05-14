        $('.account_type').change(function() {
            if ($('.account_type').val() == 3)
            {
                $('.hide').fadeIn('hide').removeClass('hide');
            }
            else
            {
                $('.hide').fadeOut('hide').addClass('hide');
            }
        });
