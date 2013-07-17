function select_partial_payment(table_cell)
{
    var valuesToSubmit = table_cell.parent().children().first().find('a').attr('href').slice(-1);
    $.ajax({
        url: '/get_partial_payments/'+valuesToSubmit, //'/notifications/4',sumbits it to the given url of the form
        dataType: 'json',
        method: "GET"
    }).success(function(json){
        console.log(json);
        $content = "<table><thead><tr><td><b>No.</b></td><td class='popover-width-amount-paid'><b>Amount paid</b></td><td class='popover-width-paid-at'><b>Paid at</b></td></tr></thead><tbody>";
        id = 0
        $.each(json, function(index,value)
            {
                id +=1;
                date = new Date(value.created_at);
                $content += "<tr><td>"+id+"</td><td>"+value.amount_paid+"</td><td>"+date.toDateString()+"</td></tr></tbody>";
            });
    $content += "</table>"
        $('.modal').modal('hide');
    table_cell.children().first().popover({html: true, title: 'Payment details', content: $content});
    });
}

function attach_on_add(){
    var $total = 0;
    $('.product').each(function(){
        var quantity = parseInt($(this).find($('.quantity')).val()||0);
        var price = parseInt($(this).find($('.product_price')).val()||0);

        sub_total = quantity * price;
        $total = $total + sub_total;
        $(this).find($('.sub-total')).html(sub_total);
    });
    $('.amount_field').html("<b>"+$total+"</b>");
    $('.amount_hidden').val($total);
    $('.remove_nested_fields').on("click",function(){$(this).parent().parent().parent().remove();attach_on_add()});

}

function fetch_price(){
    var current_select = $(this);
    $.ajax({
        url: '/products/'+current_select.val()+'.json',
        success: function(data,textStatus,xhr){
            current_select.parent().find('.product_price').val(data.min_cost);
        }
    })
}

$(document).ready(function() {
    attach_on_add();
    $('.datetime_select').datetimepicker({
        dateFormat: 'yy-mm-dd',
        timeFormat: 'hh:mm tt z'
    });

    $('#transaction_contact_id').chosen();
    $('.account_select').chosen();

    $('.search-c').searchbox({
        url: '/lead_search.html',
        param: 'q',
        dom_id: '#search-data',
        delay: 100,
    });

    $('select.product_transaction_new').chosen();

    $('.partial-payment-form').submit(function() {
        var valuesToSubmit = $(this).serialize();
        $.ajax({
            url: $(this).attr('action'), //'/notifications/4',sumbits it to the given url of the form
            data: valuesToSubmit,
            method: "POST"
        }).success(function(json){
            $('.modal').modal('hide');
            $existing_amount = $('.current').find('.amount_paid').html();
            $new_amount = ($('#amount').val()||0);
            $total = parseInt($existing_amount) + parseInt($new_amount);
            $('.current').find('.amount_paid').html($total);
            $('.current').removeClass('current');

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
        $('.contact').append($fields);
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

    //------------------------------------------Transaction total script

    $('.amount_field').focus(function(){attach_on_add()});
    $('.quantity').focus(function(){attach_on_add()});
    $('.product_price').focus(function(){attach_on_add()});
    $('.remove_nested_fields').on("click",function(){$(this).parent().parent().parent().remove();attach_on_add()});
    $('select').change(fetch_price);

    $('.add').on("click",function(){
        setTimeout(function(){$('.quantity').focus(function(){attach_on_add()})},300);
        setTimeout(function(){$('.product_price').focus(function(){attach_on_add()})},300);
        setTimeout(function(){$('select').change(fetch_price)},300);
        setTimeout(function(){$('select.product_transaction_new').chosen()},10);
    })
});
