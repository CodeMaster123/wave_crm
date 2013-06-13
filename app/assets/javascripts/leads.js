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
    $.ajax({
        url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
        data: valuesToSubmit,
        success: function(json){
            $('.modal').modal('hide');
        }
    //,
        //error: function(xhr, err) {
        //    console.log("readyState: " + xhr.readyState);
        //    console.log("responseText: "+ xhr.responseText);
        //    console.log("status: " + xhr.status);
        //    console.log("error: " + err);
        //    }

    })
    return false; // prevents normal behaviour
});

$('.call-log-form').submit(function() {
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
        data: valuesToSubmit,
        method: "POST"
    }).success(function(json){
        $('.modal').modal('hide');
        console.log(valuesToSubmit);
        $('tbody#search-data tr').last().after("<tr><td>"+$('.call-log-form #subject').val()+"</td><td>"+$('.call-log-form #call_result').val()+"</td><td>"+$('.call-log-form #call_type').val()+"</td><td>"+$('.call-log-form #call_purpose').val()+"</td><td>"+$('.call-log-form #call_start_time').val()+"</td><td>"+$('.call-log-form #call_duration').val()+"</td><td>"+$('.call-log-form #call_owner_id').val()+"</td><td>Just Now</td></tr>");
    });
    return false; // prevents normal behaviour
});

$('.notification-form').submit(function() {
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
        data: valuesToSubmit,
        method: "POST"
    }).success(function(json){
        $('.modal').modal('hide');
    });
    return false; // prevents normal behaviour
});
