<!DOCTYPE html>
<html>
<head>
    <title>Balance</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: Arial, sans-serif;
            background: #f5f5f3;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem 1rem;
        }

        .card {
            background: #fff;
            border: 1px solid #e8e8e6;
            border-radius: 12px;
            padding: 2rem 2.5rem;
            text-align: center;
            width: 100%;
            max-width: 340px;
        }

        .dot {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: #eef4ff;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1rem;
            font-size: 16px;
            color: #378ADD;
        }

        .label {
            font-size: 12px;
            color: #aaa;
            letter-spacing: 0.04em;
            margin-bottom: 8px;
        }

        .balance {
            font-size: 15px;
            font-weight: 500;
            color: #378ADD;
        }

        .divider {
            border: none;
            border-top: 1px solid #e8e8e6;
            margin: 1.5rem 0;
        }

        a {
            font-size: 13px;
            color: #999;
            text-decoration: none;
        }

        a:hover { color: #1a1a1a; }
    </style>
</head>
<body>
<div class="card">
    <div class="dot">i</div>
    <div class="label">Balance</div>
    <div class="balance">Your balance is: ${balance}</div>
    <hr class="divider">
    <a href="index.jsp">Go Back</a>
</div>
</body>
</html>