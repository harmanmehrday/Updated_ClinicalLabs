<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentPayment.aspx.cs" Inherits="Updated_ClinicalLabs.AppointmentPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment Details</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            height: 61px;
            width: 170px;
        }
        .auto-style2 {
            height: 61px;
            width: 161px;
        }
        .auto-style5 {
            width: 597px;
            height: 118px;
        }
        .auto-style8 {
            height: 66px;
            width: 161px;
        }
        .auto-style9 {
            height: 66px;
            width: 170px;
        }
        .auto-style10 {
            height: 57px;
            width: 161px;
        }
        .auto-style11 {
            height: 57px;
            width: 170px;
        }
    </style>
</head>

    <body  style="cursor: pointer;">

        <form id="AppPayment" runat="server">
            <div class="text-center">

                <br />
                <br />
                <br />
          <center>  <table class="auto-style5" align="center" border="1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Amount to Pay : " Font-Size="Large" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Rs. 100" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label3" runat="server" Text="Name" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="196px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="Pay" Width="130px" />
                    </td>
                    <td class="auto-style9">
                        
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Cancel" Width="130px" />
                    </td>
                   
                </tr>
            </table></center>

                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#99FF33"></asp:Label>
            </div>

            </form>

<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
</body>
</html>
