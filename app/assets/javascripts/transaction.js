$('.contact_type').change(function() {
    if ($('.contact_type').val() == 1)
{
    $('.existing_contact').fadeIn('hide').removeClass('hide');
    $('.new_contact').fadeOut('hide').addClass('hide');
    $fields = $('.contact_fields').clone();
    $('.contact_fields').remove();
}
else
if ($('.contact_type').val() == 2)
{
    if($('.contact_fields').length == 0)
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
$('#transaction_transaction_type').change(function() {
    if($('#transaction_transaction_type').val() == "Cheque")
{
    $('.micr_code').fadeIn();
}
    if($('#transaction_transaction_type').val() == "Cash")
{
    $('.micr_code').fadeOut();
}
});

//$('.product_price').change(function() {
//    var $total = 0;
//    $('.product_price').each(function(){
//        $total = $total + parseInt(this.value);
//    });
//            $('.amount_field').val($total);
//        console.debug($total);
//});



$('.amount_field').focus(
        function(){
            var $total = 0;
            $('.product_price').each(function(){
                $total = $total + parseInt(this.value);
            });
            $('.amount_field').val($total);
            console.debug($total);
        }
        );
