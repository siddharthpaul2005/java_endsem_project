<!DOCTYPE html>
<html>
<head>
    <title>Bank System</title>
</head>
<body>

<h2>Deposit Money</h2>
<form action="deposit" method="post">
    Account Number: <input type="text" name="accNo" /><br><br>
    Amount: <input type="text" name="amount" /><br><br>
    <button type="submit">Deposit</button>
</form>

<hr>

<h2>Withdraw Money</h2>
<form action="withdraw" method="post">
    Account Number: <input type="text" name="accNo" /><br><br>
    Amount: <input type="text" name="amount" /><br><br>
    <button type="submit">Withdraw</button>
</form>

<hr>

<h2>Check Balance</h2>
<form action="balance" method="get">
    Account Number: <input type="text" name="accNo" /><br><br>
    <button type="submit">Check Balance</button>
</form>
</body>
</html>