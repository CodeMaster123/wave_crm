$('.contact_type').change(function() {
    if ($('.contact_type').val() == 1)
{
    $('.existing_contact').fadeIn('hide').removeClass('hide');
    $('.new_contact').fadeOut('hide').addClass('hide').$('hide').remove();
}
else
if ($('.contact_type').val() == 2)
{
    $('.existing_contact').fadeOut('hide').addClass('hide').$('hide').remove();
    $('.new_contact').fadeIn('hide').removeClass('hide');
}
});
