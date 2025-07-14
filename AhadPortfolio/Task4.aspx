<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TASK4.aspx.cs" Inherits="Portfolio.TASK4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Button Click Task</title>
    <style>
        body {
            background-color: #0f1620;
            font-family: 'Poppins', 'Segoe UI', sans-serif;
            color: #f1f1f1;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .task-container {
            background: #121c28;
            padding: 60px 40px;
            border-radius: 12px;
            box-shadow: 0 0 25px #00b7b7;
            text-align: center;
            max-width: 600px;
            width: 90%;
        }

        .task-container h1 {
            color: #00b7b7;
            margin-bottom: 30px;
        }

        .click-button, .nav-btn {
            background: transparent;
            border: 2px solid #00b7b7;
            padding: 10px 22px;
            border-radius: 6px;
            color: #f1f1f1;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: all 0.3s ease-in-out;
        }

        .click-button:hover, .nav-btn:hover {
            background: #00b7b7;
            color: #000;
            box-shadow: 0 0 15px #00fafa, 0 0 30px #00fafa;
        }

        .result {
            margin-top: 25px;
            font-size: 18px;
            color: #00b7b7;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="task-container">
            <h1>Click the Button Below</h1>

            <asp:Button ID="btnClick" runat="server" Text="Click Me!" CssClass="click-button" OnClick="btnClick_Click" />

            <div class="result">
                <asp:Label ID="lblMessage" runat="server" />
            </div>

            <br />
            <asp:Button ID="btnBackHome" runat="server" Text="⬅ Return Home" CssClass="nav-btn" OnClick="btnBackHome_Click" />
        </div>
    </form>
</body>
</html>
