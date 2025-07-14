<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TASK5.aspx.cs" Inherits="Portfolio.TASK5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Calculator</title>
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

        .calculator-container {
            background: #121c28;
            padding: 60px 40px;
            border-radius: 12px;
            box-shadow: 0 0 25px #00b7b7;
            text-align: center;
            max-width: 600px;
            width: 90%;
        }

        .calculator-container h2 {
            color: #00b7b7;
            margin-bottom: 30px;
        }

        .calculator-container p {
            margin: 10px 0 6px;
        }

        .calculator-container input[type="text"],
        .aspNet-TextBox {
            padding: 10px;
            border: 2px solid #00b7b7;
            border-radius: 6px;
            background: #0f1620;
            color: #f1f1f1;
            font-size: 15px;
            width: 80%;
            margin-bottom: 12px;
        }

        .btn-group {
            margin-top: 20px;
        }

        .btn-group input[type="submit"],
        .nav-btn {
            background: transparent;
            border: 2px solid #00b7b7;
            padding: 10px 22px;
            border-radius: 6px;
            color: #f1f1f1;
            font-size: 16px;
            cursor: pointer;
            margin: 5px;
            transition: all 0.3s ease-in-out;
        }

        .btn-group input[type="submit"]:hover,
        .nav-btn:hover {
            background: #00b7b7;
            color: #000;
            box-shadow: 0 0 15px #00fafa, 0 0 30px #00fafa;
        }

        .result {
            margin-top: 24px;
            font-size: 18px;
            font-weight: 600;
            color: #00fafa;
        }

        .back-home {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="calculator-container">
            <h2>Simple Calculator</h2>

            <p>Enter the 1st number:</p>
            <asp:TextBox ID="txtNum1" runat="server" CssClass="aspNet-TextBox" />

            <p>Enter the 2nd number:</p>
            <asp:TextBox ID="txtNum2" runat="server" CssClass="aspNet-TextBox" />

            <div class="btn-group">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn" />
                <asp:Button ID="btnSubtract" runat="server" Text="Subtract" OnClick="btnSubtract_Click" CssClass="btn" />
                <asp:Button ID="btnMultiply" runat="server" Text="Multiply" OnClick="btnMultiply_Click" CssClass="btn" />
                <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" CssClass="btn" />
            </div>

            <div class="result">
                <asp:Label ID="lblResult" runat="server" />
            </div>

            <div class="back-home">
                <asp:Button ID="btnBackHome" runat="server" Text="⬅ Back to Home" CssClass="nav-btn" OnClick="btnBackHome_Click" />
            </div>
        </div>
    </form>
</body>
</html>
