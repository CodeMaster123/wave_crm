$('.contact_type').change(function() {
    if ($('.contact_type').val() == 1)
{
    $('.existing_contact').fadeIn('hide').removeClass('hide');
    $('.new_contact').fadeOut('hide').addClass('hide');
    $fields = $('.fields').clone();
    $('.fields').remove();
}
else
if ($('.contact_type').val() == 2)
{
    if($('.fields').length == 0)
{
    $('#new_transaction').append($fields);
    $('.existing_contact').fadeOut('hide').addClass('hide');
    $('.new_contact').fadeIn('hide').removeClass('hide');
}
else
{
    $('.existing_contact').fadeOut('hide').addClass('hide');
    $('.new_contact').fadeIn('hide').removeClass('hide');
}
}
});
