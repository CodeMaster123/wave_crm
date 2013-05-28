$(document).ready(function() {
    window.setTimeout(function(){$('.alert').fadeOut()}, 400);
    $('.datetime_select').datetimepicker({
        dateFormat: 'yy-mm-dd',
    timeFormat: 'hh:mm tt z'
    });


$('.search-c').searchbox({
    url: '/lead_search.html',
    param: 'q',
    dom_id: '#search-data',
    delay: 100
})
$('.tTip').betterTooltip({speed: 150, delay: 300});
});


$('.lead_owner').change(function() {
    if ($('.lead_owner').val() == "TeamLeader")
{
    $('.team_leaders').fadeIn('hide').removeClass('hide');
    $('.sales_executives').fadeOut('hide').addClass('hide');
    $fields = $('.sales_executives').clone();
    $('.sales_executives').remove();
}
else
if ($('.lead_owner').val() == "SalesExecutive")
{
    if($('.sales_executives').length == 0)
{
    $('.leads').append($fields);
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

$('.event-form').submit(function() {
    var valuesToSubmit = $(this).serialize();
    console.log('vivek');
    $.ajax({
        url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
        data: valuesToSubmit,
        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    }).success(function(json){
        //act on result.
    });
    return false; // prevents normal behaviour
});
