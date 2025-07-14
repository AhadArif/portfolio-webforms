<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TASK2.aspx.cs" Inherits="Portfolio.TASK2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Date & Time Task</title>
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
            font-size: 28px;
        }

        .time-label {
            font-size: 20px;
            color: #f1f1f1;
            margin-bottom: 30px;
            display: block;
        }

        .btn, .nav-btn {
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

        .btn:hover, .nav-btn:hover {
            background: #00b7b7;
            color: #000;
            box-shadow: 0 0 15px #00fafa, 0 0 30px #00fafa;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="task-container">
            <h1>Server Date & Time</h1>
            <asp:Label ID="lblDateTime" runat="server" CssClass="time-label" />
            <br />
            <asp:Button ID="btnBackHome" runat="server" Text="⬅ Return Home" CssClass="nav-btn" OnClick="btnBackHome_Click" />
        </div>
    </form>
</body>
</html>
