if(window.location.pathname.indexOf("accounts")>0)
{
    $(document).ready(function() {
        console.log('accounts');
        $('#account_account_owner').chosen();
    });

    $('.accounts-transactions-form').submit(function() {
        var valuesToSubmit = $(this).serialize();
        $.ajax({
            url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
            data: valuesToSubmit,
            dataType: "JSON", // you want a difference between normal and ajax-calls, and json is standard
            method: "POST"
        }).success(function(json){
            //act on result.
        });
        return false; // prevents normal behaviour
    });

    $('.contact-form').submit(function() {
        var valuesToSubmit = $(this).serialize();
        $.ajax({
            url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
            data: valuesToSubmit,
            dataType: "JSON", // you want a difference between normal and ajax-calls, and json is standard
            method: "POST"
        }).success(function(json){
            //act on result.
        });
        return false; // prevents normal behaviour
    });
}

$(document).on("mouseenter",".reply",function(event){
    $(this).popover({
        placement:'top',
        trigger: 'hover'
    }).popover('show');
});