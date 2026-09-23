<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" 
Inherits="AcademicLeave.Login" %> 
 
<!DOCTYPE html> 
<html> 
<head runat="server"> 
    <title>Academic Portal Login</title> 
 
    <style> 
        * { 
            box-sizing: border-box; 
        } 
 
        body { 
            margin: 0; 
            font-family: Arial, sans-serif; 
            min-height: 100vh; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            background: #F0F7F7; 
        } 
 
        .login-card { 
            width: 380px; 
            background: #FFFFFF; 
            padding: 35px; 
            border-radius: 15px; 
            box-shadow: 0 10px 30px rgba(36,84,84,0.12); 
            text-align: center; 
        } 
 
        .logo { 
            width: 65px; 
            height: 65px; 
            margin: 0 auto 15px; 
            border-radius: 50%; 
            background: #438A8A; 
            display: flex; 
            align-items: center; 
            justify-content: center; 
            font-size: 30px; 
        } 
 
        h1 { 
           margin: 5px 0; 
            color: #245454; 
            font-size: 24px; 
        } 
 
        .subtitle { 
            display: block; 
            color: #888; 
            font-size: 14px; 
            margin-bottom: 28px; 
        } 
 
        .label { 
            display: block; 
            text-align: left; 
            font-weight: bold; 
            color: #245454; 
            margin-bottom: 7px; 
        } 
 
        .input { 
            width: 100%; 
            padding: 12px; 
            margin-bottom: 18px; 
            border: 1px solid #CFE0E0; 
            border-radius: 8px; 
            font-size: 14px; 
            background: #FAFCFC; 
        } 
 
        .input:focus { 
            outline: none; 
            border-color: #438A8A; 
            background: #FFFFFF; 
        } 
 
        .remember { 
            display: block; 
            text-align: left; 
            color: #777; 
            font-size: 13px; 
            margin-bottom: 20px; 
        } 
 
        .login-btn { 
            width: 100%; 
            padding: 12px; 
            border: none; 
            border-radius: 8px; 

            background: #438A8A; 
            color: white; 
            font-size: 15px; 
            font-weight: bold; 
            cursor: pointer; 
        } 
 
        .login-btn:hover { 
            background: #347171; 
        } 
 
        .message { 
            display: block; 
            margin-top: 15px; 
            color: #C0392B; 
            font-size: 13px; 
        } 
 
        .footer { 
            margin-top: 25px; 
            color: #999; 
            font-size: 12px; 
        } 
    </style> 
</head> 
 
<body> 
<form id="form1" runat="server"> 
 
    <div class="login-card"> 
        <div class="logo">🎓</div> 
        <h1>Academic Portal</h1> 
 
        <asp:Label 
            ID="lblSubtitle" 
            runat="server" 
            Text="Academic Calendar & Leave Management" 
            CssClass="subtitle"> 
        </asp:Label> 
 
        <asp:Label 
            ID="lblUsername" 
            runat="server" 
            Text="Username" 
            CssClass="label"> 
        </asp:Label> 
 
        <asp:TextBox 
            ID="txtUsername" 


               runat="server" 
            CssClass="input" 
            placeholder="Enter username"> 
        </asp:TextBox> 
 
        <asp:Label 
            ID="lblPassword" 
            runat="server" 
            Text="Password" 
            CssClass="label"> 
        </asp:Label> 
 
        <asp:TextBox 
            ID="txtPassword" 
            runat="server" 
            TextMode="Password" 
            CssClass="input" 
            placeholder="Enter password"> 
        </asp:TextBox> 
 
        <asp:CheckBox 
            ID="chkRemember" 
            runat="server" 
            Text=" Remember Username" 
            CssClass="remember"> 
        </asp:CheckBox> 
 
        <asp:Button 
            ID="btnLogin" 
            runat="server" 
            Text="Login" 
            CssClass="login-btn" 
            OnClick="btnLogin_Click"> 
        </asp:Button> 
 
        <asp:Label 
            ID="lblMessage" 
            runat="server" 
            CssClass="message"> 
        </asp:Label> 
 
        <div class="footer"> 
            Academic Calendar & Leave Management System 
            <br /> 
            © 2026 
        </div> 
    </div> 
</form> 
</body>
</html> 



