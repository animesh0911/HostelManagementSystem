<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="./style_attendance.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.w3-dropdown-hover:first-child, .w3-dropdown-click:hover {

    background-color: #000;
    color: #fff;
    width: 280px;

}
.w3-dropdown-content {

    cursor: auto;
    color: #fff;
    background-color: #000;
    display: none;
    position: absolute;
    min-width: 280px;
    margin: 0;
    padding: 0;
    z-index: 1;

}
.w3-dropdown-hover:first-child, .w3-dropdown-click:hover {

    background-color: #000;
    color: #fff;
    width: 280px;

}
.w3-btn, .w3-button {

    border: none;
    display: inline-block;
    padding: 8px 26px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: inherit;
    background-color: inherit;
    text-align: center;
    cursor: pointer;
    white-space: nowrap;
    width: 200px;
}
table
{
  width:45%;
  margin-left:350px;
  margin-top:200px;
}
.table {

    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
    margin-left: 00px;
    margin-top: 25px;
}
.table1 {

    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
    margin-left: 00px;
    margin-top: 25px;
}
td
{
  height:40px;
}

body {
  position: relative;
  overflow-x: hidden;
}
html {
	height: 100%;
	/*Image only BG fallback*/
		/*background = gradient + image pattern combo*/
	background: 
		linear-gradient(rgba(196, 102, 0, 0.6), rgba(155, 89, 182, 0.6)) repeat;
	/*background = gradient + image pattern combo*/
	
}
</style>
</head>
<body>
  <div id="wrapper">
        <div class="overlay"></div>
    
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       Project
                    </a>
                </li>
                <li>
                    <a href="welcome.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                </li>
                    <li>
		                <div class="w3-dropdown-hover">
					    <button class="w3-button">Dropdown
					      <i class="fa fa-caret-down"></i>
					    </button>
					    <div class="w3-dropdown-content w3-bar-block">
					      <a href="add_stud.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-folder"></i>Add Student</a>
					      <a href="upload_stud.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-folder"></i>Upload Student Details</a>
					    </div>
					  </div> 
                    <!-- <a href="view_stud.jsp"><i class="fa fa-fw fa-file-o"></i> View Student</a>
 -->              </li>
                <li>
                    <a href="view_stud.jsp"><i class="fa fa-fw fa-file-o"></i> View Student</a>
                </li>
                <li>
                    <a href="vroom.jsp"><i class="fa fa-fw fa-cog"></i>View Room </a>
                </li>
               
                <li>
                    <a href="late.jsp"><i class="fa fa-fw fa-dropbox"></i> Add Late</a>
                </li>
                <li>
                    <a href="leave.jsp"><i class="fa fa-fw fa-dropbox"></i>Add Leave</a>
                </li>
                <li>
                    <a href="attendance.jsp"><i class="fa fa-fw fa-bank"></i> Marking Attendance</a>
                </li>
                 <li>
		                <div class="w3-dropdown-hover">
					    <button class="w3-button">Dropdown
					      <i class="fa fa-caret-down"></i>
					    </button>
					    <div class="w3-dropdown-content w3-bar-block">
					      <a href="payment.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-bank"></i> Add PAY DETAILS</a>
					      <a href="view_payment.jsp" class="w3-bar-item w3-button"><i class="fa fa-fw fa-bank"></i>VIEW PAY Details</a>
					    </div>
					  </div> 
                    <!-- <a href="view_stud.jsp"><i class="fa fa-fw fa-file-o"></i> View Student</a>
 -->              </li>
                  
                <li>
                    <a href="logout"><i class="fa fa-fw fa-key"></i> logout</a>
                </li>
            </ul>
        </nav>
          <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
   <div class="container">
  
		<FORM ENCTYPE="multipart/form-data" ACTION="upload_file" METHOD=POST>
		<br><br>
		 
		<table>
		<tr>
			<center><B>UPLOAD THE FILE</center>
		</tr>
		<tr>
		<td>
			<b>Choose the file To Upload:</b>
			</td>
			<td>
			<INPUT NAME="file" TYPE="file">
			</td>
		</tr>
		<tr>
			<td >
			<p >
			<INPUT TYPE="submit" VALUE="Send File" >
			</p>
			</td>
		</tr>
		</table>
		</FORM>
		<center style="font-size:20px; margin-top:30px;"><B>CSV FILE FORMAT</center>
		
	       <table class="table table-striped" border=1;>
                  <thead class='thead-dark'>
                    <tr class='trr'>
                      <th scope="col">Student_id</th>
                      <th scope="col">student_name</th>
                      <th scope="col">student_address</th>
                      <th scope="col">adhaarno </th>
                       <th scope="col">email</th>
                       <th scope="col">room_no</th>
                       <th scope="col"> hostel_id </th>
                       <th scope="col">reg_id</th>   
                       <th scope="col">year_of_engg</th> 
                       <th scope="col">DOB</th> 
                       <th scope="col">deposit</th> 
               
                    </tr>
                  </thead>
                  <tbody>
                  </tbody>
		    </table>
		           <table class="table table-striped" border=1;>
                  <thead class='thead-dark'>
                    <tr class='trr'>
                         <th scope="col">mobile_no</th> 
                         <th scope="col">gaurdian_id</th> 
                         <th scope="col">gaurdian_email</th> 
                         <th scope="col">gaurdian_name</th> 
                         <th scope="col">gaurdian_phone</th> 
                            <th scope="col">payment_date</th>
                         <th scope="col">payment_id</th> 
                       
                         <th scope="col">amount</th> 
                         <th scope="col">status</th>
                            </tr>
                  </thead>
                  <tbody>
                  </tbody>
		    </table>
		</div>
	</div>	
	<script>
	$(document).ready(function () {
		  var trigger = $('.hamburger'),
		      overlay = $('.overlay'),
		     isClosed = false;

		    trigger.click(function () {
		      hamburger_cross();      
		    });

		    function hamburger_cross() {

		      if (isClosed == true) {          
		        overlay.hide();
		        trigger.removeClass('is-open');
		        trigger.addClass('is-closed');
		        isClosed = false;
		      } else {   
		        overlay.show();
		        trigger.removeClass('is-closed');
		        trigger.addClass('is-open');
		        isClosed = true;
		      }
		  }
		  
		  $('[data-toggle="offcanvas"]').click(function () {
		        $('#wrapper').toggleClass('toggled');
		  });  
		});

	</script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script  src="./script.js"></script>
</body>
</html>