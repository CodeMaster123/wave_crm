$('.user_type').change(function() {
    if ($('.user_type').val() == "TeamLeader")
{
    $('.team_leaders').fadeIn('hide').removeClass('hide');
    $('.sales_executives').fadeOut('hide').addClass('hide');
}
else
if ($('.user_type').val() == "SalesExecutive")
{
    $('.team_leaders').fadeOut('hide').addClass('hide');
    $('.sales_executives').fadeIn('hide').removeClass('hide');
}
});
