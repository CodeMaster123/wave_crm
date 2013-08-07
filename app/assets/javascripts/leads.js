function update_reopening_date(selected_link)
{
    $lead_id = parseInt(selected_link.attr('lead_id'));
    selected_link.addClass("postponed_lead");
    $('.postpone_lead_id').val($lead_id);
}

$(document).ready(function() {
    window.setTimeout(function(){$('.alert').fadeOut()}, 400);
    $('.datetime_select').datetimepicker({
        dateFormat: 'yy-mm-dd',
        timeFormat: 'hh:mm tt'
    });

    $('.search-c').searchbox({
        url: '/lead_search.html',
        param: 'q',
        dom_id: '#search-data',
        delay: 100
    })
    $('.tTip').betterTooltip({speed: 150, delay: 300});
    $('#contact_id').chosen();

    $('.contact_type').chosen();
    $('.lead-product_id').chosen();

    $('.add-product').click(function(){
        setTimeout("$('.lead-product_id').chosen()",100)
    });

});


$('.lead_owner').change(function() {
    if ($('.lead_owner').val() == "TeamLeader")
{
    if($('.team_leaders').length == 0)
{
    console.log("Team leaders- if");
    $('.leads').append($fields);
    $('.team_leaders').fadeIn('hide').removeClass('hide');
    $('.sales_executives').fadeOut('hide').addClass('hide');
    $fields = $('.sales_executives').clone();
    $('.sales_executives').remove();
}
else
{
    console.log("Team leaders- else");
    $('.sales_executives').fadeOut('hide').addClass('hide');
    $('.team_leaders').fadeIn('hide').removeClass('hide');
    $fields = $('.sales_executives').clone();
    $('.sales_executives').remove();
}
}
else if ($('.lead_owner').val() == "SalesExecutive")
{
    if($('.sales_executives').length == 0)
    {
        console.log("Sales executives - if");
        $('.leads').append($fields);
        $('.team_leaders').fadeOut('hide').addClass('hide');
        $('.sales_executives').fadeIn('hide').removeClass('hide');
        $fields = $('.team_leaders').clone();
        $('.team_leaders').remove();
    }
    else
    {
        console.log("Sales executives - else");
        $('.team_leaders').fadeOut('hide').addClass('hide');
        $('.sales_executives').fadeIn('hide').removeClass('hide');
        $fields = $('.team_leaders').clone();
        $('.team_leaders').remove();
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
            if ($('tbody#events-data').children().length==0)
    {
        $('tbody#events-data').append("<tr><td>"+$('.event-form #title').val()+"</td><td>"+$('.event-form #starts_at').val()+"</td><td>"+$('.event-form #description').val()+"</td></tr>");
    }
            else
    {
        $('tbody#events-data tr').last().after("<tr><td>"+$('.event-form #title').val()+"</td><td>"+$('.event-form #starts_at').val()+"</td><td>"+$('.event-form #description').val()+"</td></tr>");
    }
        }

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
        if ($('tbody#call-log-data').children().length==0)
    {
        $('tbody#call-log-data').append("<tr><td>"+$('.call-log-form #subject').val()+"</td><td>"+$('.call-log-form #call_result').val()+"</td><td>"+$('.call-log-form #call_type').val()+"</td><td>"+$('.call-log-form #call_purpose').val()+"</td><td>"+$('.call-log-form #call_start_time').val()+"</td><td>"+$('.call-log-form #call_duration').val()+"</td><td>"+$('.call-log-form #call_owner_id').val()+"</td><td>Just Now</td></tr>");
    }
        else
    {
        $('tbody#call-log-data tr').last().after("<tr><td>"+$('.call-log-form #subject').val()+"</td><td>"+$('.call-log-form #call_result').val()+"</td><td>"+$('.call-log-form #call_type').val()+"</td><td>"+$('.call-log-form #call_purpose').val()+"</td><td>"+$('.call-log-form #call_start_time').val()+"</td><td>"+$('.call-log-form #call_duration').val()+"</td><td>"+$('.call-log-form #call_owner_id').val()+"</td><td>Just Now</td></tr>");
    }
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
        if ($('tbody#notifications-data').children().length==0)
    {
        $('tbody#notifications-data').append("<tr><td>yes</td><td>yes</td><td>"+$('.notification-form #notification_time').val()+"</td><td>"+$('.notification-form #subject').val()+"</td><td>"+$('.notification-form #body').val()+"</td><td>Just now</td></tr>");
    }
        else
    {
        $('tbody#notifications-data tr').last().after("<tr><td>yes</td><td>yes</td><td>"+$('.notification-form #notification_time').val()+"</td><td>"+$('.notification-form #subject').val()+"</td><td>"+$('.notification-form #body').val()+"</td><td>Just now</td></tr>");
    }
    });
    return false; // prevents normal behaviour
});

$('.change-owner-form').submit(function() {
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
        data: valuesToSubmit,
        method: "POST"
    }).success(function(json){
        $('.modal').modal('hide');
        if($('.change-owner-form .control-group option:selected').val()=="TeamLeader")
    {
        $('.lead-owner-show').html($('.team_leaders option:selected').text());
    }
    if($('.change-owner-form .control-group option:selected').val()=="SalesExecutive")
    {
        $('.lead-owner-show').html($('.sales_executives option:selected').text());
    }
    });
    return false; // prevents normal behaviour
});

//postpone lead
$('.postpone-lead').submit(function() {
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
        data: valuesToSubmit,
        method: "POST"
    }).success(function(json){
        $('.modal').modal('hide');
        console.log('vv');
        $('.postponed_lead').parent().parent().remove()

    });
    return false; // prevents normal behaviour
});
