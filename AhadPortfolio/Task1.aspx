<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TASK1.aspx.cs" Inherits="Portfolio.TASK1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello World – Task 1</title>
    <style>
        :root {
            --bg: #0f1620;
            --teal: #00e0e0;
            --text: #f1f1f1;
            --glow: rgba(0, 224, 224, 0.55);
            --radius: 10px;
            --font: 'Poppins', 'Segoe UI', sans-serif;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
        }

        body {
            font-family: var(--font);
            background: var(--bg);
            display: flex;
            justify-content: center;
            align-items: center;
            color: var(--text);
            padding: 20px;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 30px;
            max-width: 90%;
        }

        .message {
            font-size: 32px;
            font-weight: 600;
            padding: 24px 40px;
            border: 2px solid var(--teal);
            border-radius: var(--radius);
            box-shadow: 0 0 12px var(--glow);
            transition: box-shadow 0.3s ease;
            text-align: center;
        }

        .message:hover {
            box-shadow: 0 0 18px 4px var(--glow);
        }

        .nav-btn {
            font-size: 16px;
            padding: 12px 28px;
            border: 2px solid var(--teal);
            background: none;
            color: var(--text);
            border-radius: var(--radius);
            cursor: pointer;
            transition: background 0.3s, color 0.3s, box-shadow 0.3s;
            box-shadow: 0 0 10px var(--glow);
        }

        .nav-btn:hover {
            background: var(--teal);
            color: #000;
            box-shadow: 0 0 20px var(--glow);
        }

        @media (max-width: 500px) {
            .message {
                font-size: 26px;
                padding: 20px 24px;
            }

            .nav-btn {
                font-size: 14px;
                padding: 10px 24px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="lblMessage" runat="server" CssClass="message" />
            <asp:Button ID="btnBackHome" runat="server"
                        Text="⬅ Back to Home"
                        CssClass="nav-btn"
                        OnClick="btnBackHome_Click" />
        </div>
    </form>
</body>
</html>
