function notification_fade_out() 
{
    $('.lightred').fadeOut();

    $.ajax({
        url: "noticed.json",
        context: document.body
    }).done(function() {
        $(this).addClass("done");
    });



}
