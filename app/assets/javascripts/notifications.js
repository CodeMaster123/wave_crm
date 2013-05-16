$(document).ready(function() {
    $('#notification_contact_id').chosen();

    $('.datetime_select').datetimepicker({
        dateFormat: 'yy-mm-dd',
        timeFormat: 'hh:mm tt z'
    });

    $(document).ready(function(){
        $('.tTip').betterTooltip({speed: 150, delay: 300});
    });

    $('.search-c').searchbox({
        url: '/notification_search.html',
        param: 'q',
        dom_id: '#search-data',
        delay: 100
    })
});

