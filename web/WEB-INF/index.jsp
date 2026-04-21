
<!DOCTYPE html>
<html>
<head>
    <title>Bank System</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&display=swap');

        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: Arial , sans-serif;
            background: #f5f5f3;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem 1rem;
        }

        .wrap { width: 100%; max-width: 420px; }

        .header { text-align: center; margin-bottom: 2rem; }
        .header h1 { font-size: 20px; font-weight: 500; color: #1a1a1a; letter-spacing: -0.02em; }
        .header p  { font-size: 13px; color: #999; margin-top: 4px; }

        .card {
            background: #fff;
            border: 1px solid #e8e8e6;
            border-radius: 12px;
            overflow: hidden;
            margin-bottom: 10px;
        }

        .card-head { padding: 14px 18px 0; display: flex; align-items: center; gap: 8px; }

        .dot { width: 7px; height: 7px; border-radius: 50%; }
        .dot-green { background: #639922; }
        .dot-red   { background: #E24B4A; }
        .dot-blue  { background: #378ADD; }

        .card-title { font-size: 13px; font-weight: 500; color: #1a1a1a; }

        form { padding: 12px 18px 16px; display: flex; flex-direction: column; gap: 10px; }

        .row   { display: flex; gap: 8px; }
        .field { display: flex; flex-direction: column; gap: 4px; flex: 1; }

        label { font-size: 11px; color: #aaa; letter-spacing: 0.03em; }

        input {
            font-family: 'DM Sans', sans-serif;
            font-size: 13px;
            padding: 7px 10px;
            border: 1px solid #e0e0de;
            border-radius: 6px;
            background: #fafafa;
            color: #1a1a1a;
            outline: none;
            width: 100%;
        }
        input:focus { border-color: #b0b0ae; background: #fff; }
        input::placeholder { color: #ccc; }

        button {
            font-family: 'DM Sans', sans-serif;
            font-size: 13px;
            font-weight: 500;
            padding: 8px;
            border: 1px solid #e0e0de;
            border-radius: 6px;
            background: #f5f5f3;
            color: #1a1a1a;
            cursor: pointer;
            transition: background 0.1s;
        }
        button:hover { background: #eeeeed; }
    </style>
</head>
<body>
<div class="wrap">

    <div class="header">
        <h1>Bank System</h1>
        <p>Manage your account</p>
    </div>

    <div class="card">
        <div class="card-head">
            <span class="dot dot-green"></span>
            <span class="card-title">Deposit</span>
        </div>
        <form action="deposit" method="post">
            <div class="row">
                <div class="field">
                    <label>Account number</label>
                    <input type="text" name="accNo" placeholder="e.g. 100234" />
                </div>
                <div class="field">
                    <label>Amount</label>
                    <input type="text" name="amount" placeholder="0.00" />
                </div>
            </div>
            <button type="submit">Deposit </button>
        </form>
    </div>

    <div class="card">
        <div class="card-head">
            <span class="dot dot-red"></span>
            <span class="card-title">Withdraw</span>
        </div>
        <form action="withdraw" method="post">
            <div class="row">
                <div class="field">
                    <label>Account number</label>
                    <input type="text" name="accNo" placeholder="e.g. 100234" />
                </div>
                <div class="field">
                    <label>Amount</label>
                    <input type="text" name="amount" placeholder="0.00" />
                </div>
            </div>
            <button type="submit">Withdraw</button>
        </form>
    </div>

    <div class="card">
        <div class="card-head">
            <span class="dot dot-blue"></span>
            <span class="card-title">Check Balance</span>
        </div>
        <form action="balance" method="get">
            <div class="field">
                <label>Account number</label>
                <input type="text" name="accNo" placeholder="e.g. 100234" />
            </div>
            <button type="submit">Check Balance </button>
        </form>
    </div>

</div>
</body>
</html>