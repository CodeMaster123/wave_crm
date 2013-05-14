$('#transaction_type').change(function() {
    if($('#transaction_type').val() == "Cheque")
{
    $('.amount').fadeIn();
    $('.micr_code').fadeIn();
}
    if($('#transaction_type').val() == "Cash")
{
    $('.amount').fadeIn();
    $('.micr_code').fadeOut();
}
});
