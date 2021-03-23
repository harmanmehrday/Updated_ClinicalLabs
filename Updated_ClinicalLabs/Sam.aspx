<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sam.aspx.cs" Inherits="ClinicalLabs.Sam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Pickup</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</head>
<body style="cursor: pointer;">
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
	<!--banner start-->
	<div class="banner">
         <img src="images/sam.jpg">
         <div class="centered">

         	<h1 class="text-center" style="margin-top:100px;">Sample Pickup</h1><p class="text-center" style="font-size: 22px;">Fill the form below and our executive will reach you shortly.<br>> Clinical Lab\Sample Pickup</p>
         <!--	<div class="btn-group" role="group" aria-lable="Login / Signup">
		    	     <button type="button" class="btn login_btn1"><i class="fa fa-user"></i>&nbsp;Login</button>
		    	     <button type="button" class="btn login_btn2"><i class="fa fa-sign-in-alt"></i>&nbsp;SignUp</button>
         </div>-->
          <button class="btn apt_btn" style="margin-top: 00px; margin-left: 250px;"><a href="Appointment.aspx" style="color:white;text-decoration: none;"><i class="fa fa-calendar-alt"></i>&nbsp;Make Appointment</a>
         </div>
	</div>
	<!--banner end-->
	<!--appointment start-->
	    <div class="container-fluid hp_appointment" style="margin-top: 00px;">
         <div class="row">
             <div class="col-xl-6 col-lg-6 col-md-6 col-xs-10 mx-auto hp_apt">
             	<h2>Make an Appointment</h2>
             </div>
             <div class="col-xl-6 col-lg-6 col-md-6">
             	<button class="btn apt_btn"><a href="Appointment.aspx" style="color:white;text-decoration: none;"><i class="fa fa-calendar-alt"></i>&nbsp;Make Appointment</a></button>
             </div>
         </div>
    </div>     
	<!--appointment end--><br><br>
	<!--contact info start-->
	<div class="container-fluid my-enq">
		<h3 style="margin-left: 55px;">Contact Information:<hr/></h3>

       <div class="row" >
             <div class="col-md-4">
             	<p class="text-center"><i class="fa fa-location-arrow"></i>&nbsp;Adampur Doaba, 
District Jalandhar, 144102</p>
             </div>
             <div class="col-md-4">
             	<p class="text-center"><a href="tel:82-84-088-141"  data-rel="external"><i class="fa fa-phone">&nbsp;</i>+918284088141</a></p>
             </div>
             <div class="col-md-4">
             	<p class="text-center"><a href="mailto:harman.apj@gmail.com"><i class="fa fa-envelope"></i>&nbsp;info@clinicallab.com</a></p>
             </div>
       </div>
	</div>
	<!--contact info end-->
	<!--forms start-->
  <div class="my-container" style="margin-top: 60px; "> 
  <form id="form1" runat="server">
      <strong>
      <asp:Label ID="Label1" runat="server" Text="Label">Book Sample Pickup For Date :&nbsp;&nbsp;&nbsp;(MM/DD/YYYY)&nbsp;</asp:Label><asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
        <br />
      </strong>
        <div class="form-group">
          <label>First Name:</label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter First Name!!" ForeColor="Red" Font-Bold="true" SetFocusOnError="True"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="REV" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name!!" ForeColor="Red" Font-Bold="true" ValidationExpression="^[A-Za-z ]*$" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        
        <div class="form-group">
          <label>Last Name:</label>
             <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Last Name!!" ForeColor="Red" Font-Bold="true" SetFocusOnError="True"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid Name!!" ForeColor="Red" Font-Bold="true" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]*$"></asp:RegularExpressionValidator>  
        </div>
        
        <div class="form-group">
          <label>E-Mail:</label>
            <asp:TextBox ID="TextBox3" runat="server" type="email" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Email!!" SetFocusOnError="True" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
          <label>Phone:</label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox> 
            <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Phone Number!!" SetFocusOnError="True" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" SetFocusOnError="True" ErrorMessage="Enter Valid 10-digit Number!!" ForeColor="Red" Font-Bold="true" ValidationExpression="^[0-9]{10,10}"></asp:RegularExpressionValidator>           
        </div>
        
        <div class="form-group">
          <label>Test Category <font style="font-family: Verdana; font-size: 15px; font-weight: lighter">(Select tTest category or all of them will be selected)<br/>
              For more details about Tests click </font><a href="services.aspx">here</a>:</label><br/>

            <asp:CheckBox ID="CheckBox1" runat="server" Name="testss" Text="&nbsp;&nbsp;Haematology" value="Haematology" checked/>&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:CheckBox ID="CheckBox2" runat="server" Name="testss" Text="&nbsp;&nbsp;Serology" value="Serology" />&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:CheckBox ID="CheckBox3" runat="server" Name="testss" Text="&nbsp;&nbsp;Bio-Chemistry" value="Bio-Chemistry" />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Book Sample Pickup" class="btn btn-success" OnClick="Button1_Click" />
  </form>
    </div>
	<!--forms end-->
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
						<li><a href="Contact.aspx" class="footer-links"><i class="fa fa-check-circle"></i> Contact Us</a></li>
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


    

<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
</body>
</html>
