<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<body>--%>
<%--<h2>Current Balance: ${balance}</h2>--%>
<%--<a href="index.jsp">Back</a>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<head>
    <title>Balance</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&display=swap');

        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'DM Sans', sans-serif;
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

        .label {
            font-size: 12px;
            color: #aaa;
            letter-spacing: 0.04em;
            margin-bottom: 8px;
        }

        .balance {
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
            letter-spacing: -0.02em;
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
    <div class="label">Current Balance</div>
    <div class="balance">₹${balance}</div>
    <hr class="divider">
    <a href="index.jsp">← Back</a>
</div>
</body>
</html>