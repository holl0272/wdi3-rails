var checking_bal = 1000;
var savings_bal = 500;

$(function(){

  $('#c_deposit_btn').click(c_deposit);
  $('#s_deposit_btn').click(s_deposit);
  $('#c_withdraw_btn').click(c_withdraw);
  $('#s_withdraw_btn').click(s_withdraw);

});

// checking deposit functions

function c_deposit()
{
  var deposit = parseInt($('#checking').val());
  var d = c_balance(checking_bal, deposit);
  $('#c_balance').text('$' + d);
}

function c_balance(checking_bal, deposit)
{
  return checking_bal + deposit;
}

// checking withdraw functions

function c_withdraw()
{
  var withdraw = parseInt($('#checking').val());
  var w = c_balance(checking_bal, withdraw);
  $('#c_balance').text('$' + w);
}

function c_balance(checking_bal, withdraw)
{
  return checking_bal - withdraw;
}

// savings deposit functions

function s_deposit()
{
  var deposit = parseInt($('#savings').val());
  var d = s_balance(savings_bal, deposit);
  $('#s_balance').text('$' + d);
}

function s_balance(savings_bal, deposit)
{
  return savings_bal + deposit;
}

// savings withdraw functions

function s_withdraw()
{
  var withdraw = parseInt($('#savings').val());
  var w = s_balance(savings_bal, withdraw);
  $('#s_balance').text('$' + w);
}

function s_balance(savings_bal, withdraw)
{
  return savings_bal - withdraw;
}