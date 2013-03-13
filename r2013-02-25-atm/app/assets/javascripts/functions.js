var check_balance = 1000;
var save_balance = 500;

$(function(){

  $('#showcheckbalance').text('$' + check_balance);
  $('#showsavebalance').text('$' + save_balance);

  $('#depositchecking').click(deposit_checking);
  $('#withdrawchecking').click(withdraw_checking);
  $('#depositsavings').click(deposit_saving);
  $('#withdrawsavings').click(withdraw_saving);
});

function withdraw_checking()
{
  deduct = $('#check_amount').val();
  deduct = parseInt(deduct);
  if(deduct > check_balance)
  {
    overdraft = deduct - check_balance;
    check_balance = 0;
    $('#showcheckbalance').css('background-color', 'red')
    save_balance -= overdraft;
  }
  else
  {
    check_balance -= deduct;
  }

    $('#showcheckbalance').text('$' + check_balance);
    $('#showsavebalance').text('$' + save_balance);
}

function deposit_checking()
{
  add = $('#check_amount').val();
  add = parseInt(add);
  check_balance += add;
  $('#showcheckbalance').text('$' + check_balance);
  $('#check_amount').val('');
}


function withdraw_saving()
{
  deduct = $('#save_amount').val();
  deduct = parseInt(deduct);
  if (deduct <= save_balance)
  {
    save_balance -= deduct;
    $('#showsavebalance').text('$' + save_balance);
    $('#save_amount').val('');
  }
  $('#save_amount').val('');
}

function deposit_saving()
{
  add = $('#save_amount').val();
  add = parseInt(add);
  save_balance += add;
  $('#showsavebalance').text('$' + save_balance);
}