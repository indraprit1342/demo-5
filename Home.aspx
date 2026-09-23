<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Practical_5.Home" 
%> 
 
<!DOCTYPE html> 
<html> 
<head runat="server"> 
 
    <title>Academic Calendar & Leave Management</title> 
 
    <style> 
 
        * { 
            box-sizing: border-box; 
        } 
 
        * { 
              box-sizing: border-box; 
        } 
 
        body { 
            margin: 0; 
            font-family: Arial, sans-serif; 
            background: #f0fdfa; 
            color: #134e4a; 
        } 
 
        .header { 
            background: linear-gradient(135deg, #0f766e, #14b8a6); 
            color: white; 
            padding: 25px; 
            border-radius: 15px; 
            text-align: center; 
            box-shadow: 0 8px 20px rgba(0,0,0,0.12); 
        } 
 
        .card { 
            background: #ffffff; 
            padding: 25px; 

          border-radius: 15px; 
            box-shadow: 0 5px 18px rgba(15,118,110,0.12); 
            flex: 1; 
        } 
 
        .card h2 { 
            margin-top: 0; 
            color: #0f766e; 
            border-bottom: 2px solid #ccfbf1; 
            padding-bottom: 12px; 
        } 
 
        .label { 
            display: block; 
            font-weight: bold; 
            margin-bottom: 7px; 
            color: #115e59; 
        } 
 
        .input, 
        .dropdown, 
        .reason { 
            width: 100%; 
            padding: 11px; 
            border: 1px solid #99f6e4; 
            border-radius: 8px; 
            font-size: 14px; 
        } 
 
        .input:focus, 
        .dropdown:focus, 
        .reason:focus { 
            outline: none; 
            border-color: #14b8a6; 
            box-shadow: 0 0 0 3px rgba(20,184,166,0.15); 
        } 
 
        .btn { 
            border: none; 
            padding: 12px 25px; 
            border-radius: 8px; 
            background: #0f766e; 
            color: white; 
            font-size: 15px; 
            cursor: pointer; 
        } 
 
        .btn:hover { 
            background: #115e59; 

            } 
 
        .message { 
            display: block; 
            margin-top: 15px; 
            padding: 10px; 
            border-radius: 8px; 
            background: #ecfdf5; 
            color: #047857; 
        } 
 
        .status { 
            margin-top: 20px; 
            padding: 18px; 
            background: #f0fdfa; 
            border-left: 5px solid #14b8a6; 
            border-radius: 8px; 
            line-height: 1.8; 
        } 
 
        .logout { 
            background: #e11d48; 
        } 
 
        .logout:hover { 
            background: #be123c; 
        } 
 
        .footer { 
            text-align: center; 
            margin-top: 25px; 
            color: #0f766e; 
            font-size: 13px; 
        } 
 
        /* Mobile */ 
 
        @media (max-width: 500px) { 
 
            .login-card { 
                width: 90%; 
                padding: 30px; 
            } 
        } 
 
        /* Mobile */ 
 
        @media (max-width: 750px) { 

            .row { 
                flex-direction: column; 
            } 
 
            .container { 
                width: 95%; 
            } 
 
            .header h1 { 
                font-size: 22px; 
            } 
        } 
 
    </style> 
 
</head> 
 
<body> 
 
<form id="form1" runat="server"> 
 
<div class="container"> 
 
    <!-- HEADER --> 
 
    <div class="header"> 
 
        <h1> 
                   Academic Calendar & Leave Management 
        </h1> 
 
        <asp:Label ID="lblWelcome" 
            runat="server" 
            CssClass="welcome"> 
        </asp:Label> 
 
    </div> 
 
    <div class="row"> 
 
        <!-- CALENDAR CARD --> 
 
        <div class="card calendar-box"> 
 
            <h2>        Academic Calendar</h2> 
 
            <asp:Calendar 
                ID="AcademicCalendar" 
                runat="server"  OnSelectionChanged="AcademicCalendar_SelectionChanged"> 

 
            </asp:Calendar> 
 
            <br /> 
 
            <asp:Label 
                ID="lblDate" 
                runat="server"> 
            </asp:Label> 
 
        </div> 
 
        <!-- LEAVE CARD --> 
 
        <div class="card"> 
 
            <h2>           Leave Management</h2> 
 
            <div class="form-group"> 
 
                <asp:Label 
                    ID="lblLeaveType" 
                    runat="server" 
                    Text="Leave Type" 
                    CssClass="label"> 
                </asp:Label> 
 
                <asp:DropDownList 
                    ID="ddlLeaveType" 
                    runat="server" 
                    CssClass="dropdown"> 
 
                    <asp:ListItem> 
                        Medical Leave 
                    </asp:ListItem> 
 
                    <asp:ListItem> 
                        Casual Leave 
                    </asp:ListItem> 
 
                    <asp:ListItem> 
                        Personal Leave 
                    </asp:ListItem> 
 
                </asp:DropDownList> 
 
            </div>

               <div class="form-group"> 
 
                <asp:Label 
                    ID="lblLeaveDate" 
                    runat="server" 
                    Text="Leave Date" 
                    CssClass="label"> 
                </asp:Label> 
 
                <asp:TextBox 
                    ID="txtLeaveDate" 
                    runat="server" 
                    CssClass="input"> 
                </asp:TextBox> 
 
            </div> 
 
 
            <div class="form-group"> 
 
                <asp:Label 
                    ID="lblReason" 
                    runat="server" 
                    Text="Reason" 
                    CssClass="label"> 
                </asp:Label> 
 
                <asp:TextBox 
                    ID="txtReason" 
                    runat="server" 
                    CssClass="reason" 
                    TextMode="MultiLine" 
                    Rows="4"> 
                </asp:TextBox> 
 
            </div> 
 
 
            <asp:Button 
                ID="btnApply" 
                runat="server" 
                Text="Apply Leave" 
                CssClass="btn" 
                OnClick="btnApply_Click"> 
            </asp:Button> 
 
 
            <asp:Label    ID="lblMessage" 
                runat="server" 
                CssClass="message"> 
            </asp:Label>


                 </div> 
    </div> 
 
 
    <!-- STATUS --> 
 
    <div class="card" style="margin-top:25px;"> 
 
        <h2>        Leave Status</h2> 
 
        <div class="status"> 
 
            <asp:Label 
                ID="lblStatus" 
                runat="server"> 
            </asp:Label> 
 
        </div> 
    </div> 
 
 
    <!-- LOGOUT --> 
 
    <div style="text-align:center;"> 
 
        <asp:Button 
            ID="btnLogout" 
            runat="server" 
            Text="Logout" 
            CssClass="btn logout" 
            OnClick="btnLogout_Click"> 
        </asp:Button> 
 
    </div> 
 
    <div class="footer"> 
 
        Academic Calendar & Leave Management System © 2026 
 
    </div> 
</div> 
</form> 
</body> 
</html> 

