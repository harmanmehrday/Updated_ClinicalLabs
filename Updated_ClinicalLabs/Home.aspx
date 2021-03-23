<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ClinicalLabs.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
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
         <img src="images/home.jpg">
         <div class="centered">

         	<h1 class="text-center" style="margin-top:100px;">Clinical Lab </h1><p class="text-center">is a leading medical laboratory focused on quality, innovation, and client services</p>
         	

      <!--   <div class="btn-group" role="group" aria-lable="Login / Signup">
		    	     <button type="button" class="btn login_btn1"><i class="fa fa-user"></i>&nbsp;Login</button>
		    	     <button type="button" class="btn login_btn2"><i class="fa fa-sign-in-alt"></i>&nbsp;SignUp</button>
         </div> -->
         <button class="btn apt_btn" style="margin-top: 00px; margin-left: 250px;"><a href="Appointment.aspx" style="color:white;text-decoration: none;"><i class="fa fa-calendar-alt"></i>&nbsp;Make Appointment</a>
         </div>
	</div>
	<!--banner end-->
	<!--intro start-->
	<div class="container" style="margin-top: 50px!important;">
        <div class="row">
        	<div class="col-xl-4 col-lg-4 col-md-6 abt_img">
        		<img src="images/about.jpg">
        	</div>
        	<div class="col-xl-8 col-lg-8 col-md-6 hp_abt">
        		<br/><h1>Clinical<font>Lab.</font></h1><hr/>
        	     <p style="text-align: justify; font-family:sans-serif; color: grey;"><b>Clinical Lab</b> is a leading pathology and hematopathology laboratory focused on quality, innovation, and client services</p>
        	     <p style="text-align: justify; font-family:sans-serif;color: grey;">
        	     	<b>Employing</b> state-of-the-art diagnostic technologies, Clinical Lab is dedicated to comprehensive, high-quality, rapid-response diseases testing and the integration of these technologies into patient care. We provide valuable information that is critical for the diagnosis, prognosis, treatment, and monitoring of diseases. This leads to confident treatment decisions by physician and a more efficient way to determine and employ drug therapies that make improved patient care possible.
        	     </p>
        	     <b><p style="text-align: justify; font-family:sans-serif; font-size: 15px;"><b>Clinical Lab</b> offers several connectivity solutions for client convenience and efficiency, including <a href="home.aspx">clinicallab.org</a> for Web-based access to Sample Pickup and Appointment for direct laboratory information system (LIS) interface.</p></b>
        	</div>
        </div>
    </div>
	<!--intro end-->
	<!--appointment start-->
	    <div class="container-fluid hp_appointment">
         <div class="row">
             <div class="col-xl-6 col-lg-6 col-md-6 col-xs-10 mx-auto hp_apt">
             	<h2>Make an Appointment</h2>
             </div>
             <div class="col-xl-6 col-lg-6 col-md-6">
             	<button class="btn apt_btn"><a href="Appointment.aspx" style="color:white;text-decoration: none;"><i class="fa fa-calendar-alt"></i>&nbsp;Make Appointment</a></button>
             </div>
         </div>
    </div>     
	<!--appointment end-->
	<!--cards start-->
	<div  class="main_serv">
    <div class="container-fluid">
    	<br/><br/><h1 class="text-center"><b>OUR SERVICES</b></h1>
    	<p class="text-center" style="color: grey;">Our pathology laboratory provides best in class services to give patients diagnostic service and giving them new way to better health.</p>
       <div class="row hp_cards">
          <a><div class="card hp_card11 hp_card1" style="width: 350px !important;"> 
          	<i class="fa fa-user-md card-img text-center" style="width: 70px !important;" ></i>
               <div class="card-body text-center"><h4 class="card-title">QUALIFIED STAFF</h4>
                   <p class="card-text text-center">Well qualified staff. Because your trust is everything to us. </p>
               </div>
          </div></a>
          
          <a><div class="card hp_card1" style="width: 350px !important;"> 
          	<i class="fa fa-hospital card-img text-center" style="width: 70px !important;"></i>
          	<div class="card-body text-center"><h4 class="card-title">MEDICAL COUNSELING</h4>
                   <p class="card-text text-center">Free medical counceling for direct approach.</p>
          	</div>
          </div></a>

          <a><div class="card hp_card1" style="width: 350px !important;"> 
          	<i class="fa fa-ambulance card-img text-center" style="width: 70px !important;"></i>
          	<div class="card-body text-center"><h4 class="card-title">SAMPLE PICKUP</h4>
                   <p class="card-text text-center">Our executive will reach your place and collect the sample for tests.</p>
          	</div>
            </div></a>
       </div>
       <div class="row hp_cards">
          <a><div class="card hp_card1 hp_card11" style="width: 350px !important;"> 
          	<i class="fa fa-clock card-img text-center" style="width: 70px !important;" ></i>
               <div class="card-body text-center"><h4 class="card-title">EMERGENCY SERVICE</h4>
                   <p class="card-text text-center">Emergency serives available with no such extra charges.</p>
               </div>
          </div></a>
          
          <a><div class="card hp_card1" style="width: 350px !important;"> 
          	<i class="fa fa-calendar-check card-img text-center" style="width: 70px !important;"></i>
          	<div class="card-body text-center"><h4 class="card-title">APPOINTMENT BOOKING</h4>
                   <p class="card-text text-center">Book appointments online to save your precious time.</p>
          	</div>
          </div></a>

          <a><div class="card hp_card1" style="width: 350px !important;"> 
          	<i class="fa fa-bars card-img text-center" style="width: 70px !important;"></i>
          	<div class="card-body text-center"><h4 class="card-title">RECORD KEEPING</h4>
                   <p class="card-text text-center">Your test records are stored for future reference and can be collected from lab.</p>
          	</div>
            </div></a>
       </div>
    </div>
    </div><br><br>
	<!--cards end-->
	<!--jumbotron start-->
    <div class="container-fluid">
     	<div class="row">
     		<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 hp_serv1" style="background-color: #69cb6a;">
     			<h1 style="color: white; margin-top: 30px;" class="text-center"><i class="fa fa-flask"></i>&nbsp;Sample Pickup</h1>
    		<hr/>
    		<p style="color: white" class="text-center">Request a sample pickup <a href="sam.html" style="color: black">here</a> and our staff member will reach your place and get your tests done.</p>
    		<p style="color: white;" class="text-center">(*Rs.50 extra charges,and Service available under 10KM.)</p>
     		</div>
     		<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 hp_serv2" style="background-color: #3c97e8;">
     			<h1 style="color: white;margin-top: 30px;" class="text-center"><i class="fa fa-phone"></i>&nbsp;Helpline Number</h1>
    		<hr/>
    		<p style="color: white" class="text-center"><a href="tel:82-84-088-141"  data-rel="external" style="color: white">+918284088141</a>&nbsp;&nbsp;<a href="tel:75-26-903-231"  data-rel="external" style="color: white">+917526903231</a></p>
    		<p style="color: white" class="text-center">24 X 7 Helpline service. Your tests plan is designed for steady progress, with every phase promptly implimented.</p><br/>
     		</div>
     	</div>
     </div>
	<!--jumbotron end-->
    <!--equipments start-->
    <div class="main_eqi">
    <div class="container-fluid">
    	<br/><br/><h1 class="text-center"><b>WELL EQUIPED LAB</b></h1>
    	<p class="text-center" style="color: grey;">Instruments with latest technology and with zero percent error are used to get medical tests done to give patients <br/>diagnostic service and giving them new way to better health.</p>
       <div class="row hp_cards" style="margin-left: -20px;">
          <a><div class="card hp_card1_1" style="width: 300px !important;"> 
          	<img src="images/haematology.jpg" class="img-fluid">
               <div class="card-body text-center"><h5 class="card-title">HAEMATOLOGY ANALYZER</h5><hr>
                   <p class="card-text text-center">Hematology is the study of blood and blood disorders. Hematologists are trained healthcare providers specialized in study of the blood components. </p>
               </div>
          </div></a>
          
          <a><div class="card hp_card1_1" style="width: 300px !important;"> 
          	   <img src="images/biochemistry.jpg" class="img-fluid">
          	<div class="card-body text-center"><h5 class="card-title">BIOCHEMISTRY ANALYZER</h5><hr>
                   <p class="card-text text-center">Serology is the scientific study of blood serum, especially with regard to the response of the immune system to pathogens or introduced substances.</p>
          	</div>
          </div></a>

          <a><div class="card hp_card1_1" style="width: 300px !important;"> 
          	<img src="images/incubator.jpg" class="img-fluid">
          	<div class="card-body text-center"><h5 class="card-title">INCUBATOR</h5><hr>
                   <p class="card-text text-center">An apparatus with a chamber used to provide controlled environmental conditions especially for the cultivation of microorganisms present in the specimen sample.</p>
          	</div>
            </div></a>
          <a><div class="card hp_card1_1" style="width: 300px !important;"> 
          	<img src="images/digitalxray.jpg" class="img-fluid">
               <div class="card-body text-center"><h5 class="card-title">DIGITAL X-RAY</h5><hr>
                   <p class="card-text text-center">Digital radiography is a form of X-ray imaging, where digital X-ray sensors are used. Traditional radiography is used majorly to detect broken bones.</p>
               </div>
          </div></a>
       </div>
   </div>
   </div>
    <!--equipments end-->
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
