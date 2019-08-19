<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <!--For Responsive-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--For Fa Class-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--Embeded Style Sheet-->
    <link rel="stylesheet" type="text/css" href="/destiny/files/style/style.css">

    <!--Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    

  
      

</head>


<title> Destiny World</title>

<body style="font-family: algerrian sans-serif; background-color: rgba(224, 224, 224, 0.527);">


<!--Header Start-->

    <div class="header_import">
    <script>
    $(function(){
    $(".header_import").load("user-header");  
    })
    </script>
    </div>
    
<!--Header End-->

<style>
   .dashboard-header
          {
              display: block;
          }

.dashboard-fundraisers
{   
    color:white;
    border-bottom: 2px solid white;
}

.pr-section1
{
    background-color: #fff; 
    border-radius: 10px;
    font-size: 17px;
    color:rgb(110, 110, 110);
    box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.205);
}
.user-fundraisers-section
{
    margin-top: 170px;
}

.button1:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}
.title
{
    color:black;
    font-size: 25px;
}

.donors-icons
{
width:40px
}

.button-all
{
    background-color: rgb(11, 101, 161);
    color:white;
    border:none;
    height: 45px;
    border-radius: 50px;
    outline: none;
    transition: 0.43s;
    text-transform: uppercase;
}

.button-all:hover
{
    background-color: rgb(5, 53, 85);
}

.button-all:active
{
    transition: 0.0s;
    transform: scale(0.98);
}


.button-edit, .button-manage
{
    width:40%;
}

.button-withdraw
{
    width:81%;
    margin-top: 10px;
}


.fatch-data2
{
    font-size: 28px;
    color: black;
}

.top-bar-content
{
    text-align: left;
}
@media(max-width:975px)
{
    .top-bar-content
{
    text-align: center;
}


    .button-edit, .button-manage
{
    width:48%;
}

.button-withdraw
{
    width:97%;
}

}
</style>



<div class="user-fundraisers-section">
<div class="container"> 
<div class="col-md-12">

<c:forEach var="cm" items="${data2}" >

<script>
$(function last_date(){
	var cd = new Date();
	var date = cd.getFullYear()+'/'+(cd.getMonth()+1)+'/'+cd.getDate();
	var cdate = new Date(date);
	var sd = $(".start_date").html();
	var ed = $(".start_end_date").html();
	
	var sdate = new Date(sd);
	var edate = new Date(ed);
	
	var diff = (edate-cdate) / (1000 * 60 * 60 * 24);
	$(".end_date").html(diff);
	
})
</script>


<div class="pr-section1" style="margin-top:20px;">
<div class="container-fluid">
<div class="section1-data1">
<br><br>

<div class="col-md-12 text-center1 fix-details" style="text-align: center; border-bottom: 2px solid rgba(0, 0, 0, 0.171);">

<div class="col-md-2">
<span class="section1-image"><img src="${cm.fundraisers_profile_image}" style="width:100px; height: 100px; border-radius: 10px; overflow: hidden;"></span><br>
<br>
</div>
<div class="col-md-4 top-bar-content">
<span class="title"> ${cm.fundraisers_title} <br></span>
<span class="fundraisers-name">${cm.fundraisers_name}</span><br>
<span class="donors">
<img src="/destiny/files/dashboard-user-images/donorall.png" class="donors-icons">&nbsp;
Donors: <span>0</span>  <span style="color:rgb(9, 97, 148)">Created</span>, 
<span style="color:rgb(9, 97, 148)">


<c:if test="${cm.fundraisers_status eq 1}">
Approved
</c:if>
<c:if test="${cm.fundraisers_status eq 0 || cm.fundraisers_status eq null}">
Unapproved
</c:if>
</span>
</span><br>
<br>
</div>
<div class="col-md-6">
<center>    
<a href="manage-overview"><button class="button-manage button-all">Manage</button></a>
<a href="edit-cause-details/${cm.fundraisers_id}/${cm.campaign_id}"><button class="button-edit button-all">Edit</button></a>
<a href="manage-withdrawl"><button class="button-withdraw button-all">Withdraw</button></a>

</center>
<br>

</div>
</div>

<div class="col-md-12" style="text-align: center">
<br>
<div class="col-md-3">
<span class="fund data1"><i class="fa fa-money"></i> Fund Raised <br> 
    <span class="fatch-data2 fa fa-inr"> ${cm.fundraisers_goal_amount}</span></span><br><br>
</div>
<div class="col-md-3">    
<span class="view data1"><i class="fa fa-eye"></i> View <br>
    <span class="fatch-data2">2</span></span><br><br>
</div>
<div class="col-md-3">   
<span class="start-date data1"><i class="fa fa-calendar"></i> Fundraiser Start Date <br>
    <span class="fatch-data2 start_date">  ${cm.fundraisers_start_date}</span>
    <span class="fatch-data2 start_end_date hidden">  ${cm.fundraisers_end_date}</span>
</span><br><br>
</div>
<div class="col-md-3">    
<span class="left-data data1"><i class="fa fa-calendar-minus-o"></i> Fundraiser End Date <br>
    <span class="fatch-data2"> ${cm.fundraisers_end_date}</span>
    <!-- <span class="fatch-data2 end_date"></span> --></span><br><br>
</div>
</div>


</div>
</div>
</div>


</c:forEach>



</div>
</div>
</div>

<br><br>
<br><br>


<!--Footer Start-->

    <div class="footer_import">
    <script>
    $(function(){
    $(".footer_import").load("user-footer");  
    })
    </script>
    </div>
  

<!--Footer End-->




        
</body>

</html>