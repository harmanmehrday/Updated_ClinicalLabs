<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentDetails.aspx.cs" Inherits="ClinicalLabs.AppointmentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment Details</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
<body  style="cursor: pointer;">
    <!--navbar start-->
	<nav class="navbar navbar-expand-sm my-nav sticky-top">
		<div class="container my-navbar">
		<a href="index.html" class="navbar-brand"><font style="color:#3c97e8;">Clinical</font><font style="color:#69cb6a">Lab.</font></a>
		<ul class="navbar-nav">
			<li class="nav-item"><a href="Home.aspx" class="nav-link active"><i class="fa fa-home"></i>&nbsp;HOME</a></li>
			<li class="nav-item"><a href="Services.aspx" class="nav-link"><i class="fa "></i>&nbsp;SERVICES</a></li>
			<li class="nav-item"><a href="Sam.aspx" class="nav-link"><i class="fa "></i>&nbsp;SAMPLE PICKUP</a></li>
			<li class="nav-item"><a href="Enquire.aspx" class="nav-link"><i class="fa "></i>&nbsp;ENQUIRE</a></li>
			<li class="nav-item"><a href="Appointment.aspx" class="nav-link"><i class="fa "></i>&nbsp;APPOINTMENT</a></li>
		</ul>
	    </div>	     
	</nav>
	<!--navbar end-->
    <!--Details Show-->
      <br /><br/>
     
          <div class="myapptable" >
           <center>   <asp:Table ID="Table1" runat="server" GridLines="Both" Height="73px" Width="807px" HorizontalAlign="Center" Visible="true" CssClass="mr-0" BackColor="#B9FFC9" BackImageUrl="~/images/background.jpg" BorderStyle="Dotted">

                <asp:TableRow runat="server" HorizontalAlign="Center" VerticalAlign="Middle">
                    <asp:TableCell runat="server" Width="200px" Font-Bold="true" ColumnSpan="2"><center><asp:Label ID="Label9" runat="server" Text="Label" Visible="true" ForeColor="#69cb6a" Font-Size="XX-Large" Font-Bold="true"></asp:Label></center></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" HorizontalAlign="Center" VerticalAlign="Middle">
                    <asp:TableCell runat="server" Width="200px" Font-Bold="true" HorizontalAlign="Center" VerticalAlign="Middle"><asp:Label ID="Label3" runat="server" Text="Label" Visible="true" Font-Bold="true"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server" Width="200px" Font-Bold="true"><asp:Label ID="Label2" runat="server" Text="Label" Visible="true" Font-Bold="true"></asp:Label></asp:TableCell>
                </asp:TableRow>

               <asp:TableRow runat="server" HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Width="200px" Font-Bold="true">&nbsp;&nbsp;Appointment Id</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" Text="Label16" Visible="true" Font-Size="Large" ForeColor="red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
              <asp:TableRow runat="server" HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Font-Bold="true">&nbsp;&nbsp;First Name</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Label11" Visible="true" Font-Size="Large" ForeColor="Red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
              <asp:TableRow runat="server"  HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Font-Bold="true">&nbsp;&nbsp;Last Name</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="Label2" Visible="true" Font-Size="Large" ForeColor="red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
              <asp:TableRow runat="server"  HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Font-Bold="true">&nbsp;&nbsp;E-Mail</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="Label" Visible="true" Font-Size="Large" ForeColor="red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
              <asp:TableRow runat="server"  HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Font-Bold="true">&nbsp;&nbsp;Phone</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="Label" Visible="true" Font-Size="Large" ForeColor="red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
              <asp:TableRow runat="server"  HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Font-Bold="true">&nbsp;&nbsp;Time</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text="Label" Visible="true" Font-Size="Large" ForeColor="red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
              <asp:TableRow runat="server"  HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Font-Bold="true">&nbsp;&nbsp;Date</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" Text="Label" Visible="true" Font-Size="Large" ForeColor="red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
                <asp:TableRow runat="server"  HorizontalAlign="left" VerticalAlign="Middle">
                  <asp:TableCell runat="server" Font-Bold="true">&nbsp;&nbsp;Amount Paid</asp:TableCell>
                  <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" Visible="true" Font-Size="Large" ForeColor="red" Font-Bold="true"></asp:Label></asp:TableCell>
              </asp:TableRow>
          </asp:Table>
           </center>
              <br/>
              <form runat="server" marginleft="600px">
                  <div class="text-left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="button" id="btnExport" value="Download" class="btn btn-primary" style="width: 200px"  />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Back" class="btn btn-success" OnClick="Button1_Click" Width="200px" />
                  </div>
              </form>
             
        </div>
    <!-- Deatils Show End-->
     <!--footer start-->
    <footer>
   	<div class="container-fluid">
   		<div class="row" style="margin-top: 70px;">
   			<div class="col-md-3" style="background-color: #314355;">
   				<h5 style="color: white;margin-top: 30px;" class="text-center">CLINICAL LAB.</h5>
   				<p style="color: white" class="text-justify">When selecting a Diagnostic Centre, we believe that the way we treat our patients is just as important as the accuracy of the tests and the qualifications of our staff.</p>
   			</div>
   			<div class="col-md-3"  style="background-color: #314355; ">
   				<h5 style="color: white;margin-top: 30px;" class="text-center">NAVIGATION</h5>
   				<ul style="color: white; list-style: none; margin-left: 90px;">
						<li><a href="Home.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Home</a></li>
						<li><a href="Services.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Services</a></li>
						<li><a href="Sam.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Sample Pickup</li>
						<li><a href="Enquire.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Enquire</a></li>
						<li><a href="Appointment.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Make Appointment</a></li>
					</ul>
   			</div>
   			<div class="col-md-3"  style="background-color:#314355; ">
   				<h5 style="color: white;margin-top: 30px;" class="text-center">TEST AVAILABLE</h5>
   				<ul style="color: white; list-style: none;margin-left: 80px;">
						<li><a href="Services.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Haematology</a></li>
						<li><a href="Services.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Serology</a></li>
						<li><a href="Services.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Bio Chemistry</a></li>
						<li><a href="Services.aspx" class="footer-links"><i class="fa fa-check-circle"></i> X-Ray</a></li>
						<li><a href="Services.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Others</a></li>
						<li><a href="Enquire.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Help Desk</a></li>
					</ul>
   			</div>
   		    <div class="col-md-3"  style="background-color:#314355; ">
                  <h5 style="color: white;margin-top: 30px;" class="text-center">LOCATE US</h5>
                  <p><a style="color: white" href="Enquire.aspx"><i class="fa fa-search-location"></i>&nbsp;Adampur, Jalandhar 144102</a></p>
                  <p><a style="color: white" href="mailto:harman.apj@gmail.com"><i class="fa fa-envelope"></i>&nbsp;info@clinicallab.com</a></p>
                  <p><a style="color: white" href="tel:82-84-088-141"  data-rel="external"><i class="fa fa-phone">&nbsp;+918284088141</i></a></p>
                  <p><a style="color: white" href="tel:75-26-903-231"  data-rel="external"><i class="fa fa-phone">&nbsp;+917526903231</i></a></p>
   		    </div>
   		</div>
   	</div>
   	<div class="cop_harman" style="background-color:#2b3b4b; height: 60px; ">
          <p style="color: white; text-align: center; line-height: 60px;"> Copyright &copy; Harmanpreet Singh | 2019 All rights reserved.</p>
   	</div>		
   </footer>
    <!--footer end-->

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "#btnExport", function () {
            html2canvas($('#Table1')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("AppointmentDetails.pdf");
                }
            });
        });
    </script>
</body>
</html>
