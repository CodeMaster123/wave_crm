$('.user_type').change(function() {
    if ($('.user_type').val() == "TeamLeader")
    {
        $('.team_leaders').fadeIn('hide').removeClass('hide');
        $('.sales_executives').fadeOut('hide').addClass('hide');
        $fields = $('.sales_executives').clone();
        $('.sales_executives').remove();
    }
    else
    if ($('.user_type').val() == "SalesExecutive")
    {
        if($('.sales_executive').length == 0)
        {
             $('#sales_executives').append($fields)
             $('.team_leaders').fadeOut('hide').addClass('hide');
             $('.sales_executives').fadeIn('hide').removeClass('hide');
        }
        else
        {
            $('.team_leaders').fadeOut('hide').addClass('hide');
            $('.sales_executives').fadeIn('hide').removeClass('hide');
        }
    }
});


