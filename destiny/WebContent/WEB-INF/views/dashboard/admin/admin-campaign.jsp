<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="org.json.*"%>


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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

      <!--For slick bar-->         
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css">
      <script type='text/javascript' src='/js/jquery.mousewheel.min.js'></script>
      
      <!--Table-->
  	  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   
   
 <script>
 $(function(){
	 
	 $(".ajax-submit-approve-campaign").click(function campaign_approve(){
		 var cid = $(this).attr('value');
		 var url1 ="/destiny/campaign_approve";
		 
		 $.ajax
		 ({
			url:url1,
			data:{cid:cid},
		 	type:'GET',
		 	dataType:"text",
		 	contentType:"json",
		 	cache:false,
			success : function(){alert("Approved")},
			error : function(){alert("error")} 
		 }); //ajax close
	 }); //campaign approve close
	 
	 
	 
	 $(".ajax-submit-disapprove-campaign").click(function campaign_approve(){
		 var cid = $(this).attr('value');
		 var url2 ="/destiny/campaign_disapprove";
		 
		 $.ajax
		 ({
			url:url2,
			data:{cid:cid},
		 	type:'GET',
		 	dataType:"text",
		 	contentType:"json",
		 	cache:false,
			success : function(){alert("Disapproved")},
			error : function(){alert("error")} 
		 }); //ajax close
	 }); //campaign approve close
	
	 
	 
	 
	 $(".ajax-submit-success-campaign").click(function campaign_approve(){
		 var cid = $(this).attr('value');
		 var url3 ="/destiny/campaign_success";
		 
		 $.ajax
		 ({
			url:url3,
			data:{cid:cid},
		 	type:'GET',
		 	dataType:"text",
		 	contentType:"json",
		 	cache:false,
			success : function(){alert("Success")},
			error : function(){alert("error")} 
		 }); //ajax close
	 }); //campaign approve close
	
	 
	 
	 $(".ajax-edit-campaign").click(function(){
		 var cid = $(this).attr('cid');
		 var fid = $(this).attr('fid');
		 var url4 ="/destiny/fetch_campaign_details";
		 
		 $.ajax
		 ({
			url:url4,
			data:{cid:cid, fid:fid},
		 	type:'GET',
		 	dataType:"json",
		 	contentType:"json",
		 	cache:false,
			success : function(data)
			{
				
				var cm=data[0];
				var fm=data[1];

				$(".ajax-data").html(cm.fundraisers_id);
				$(".camp_title").html(cm.fundraisers_title);
				$(".camp_goal_amount").html(cm.fundraisers_goal_amount);
				$(".camp_raised_amount").html(cm.fundraisers_raised_amount);
			},
			error : function(){alert("error")} 
		 }); //ajax close
		 
	 })
	 
	 
 })
 
 </script>
 

<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>

<style>

input[type=search]
{
    width: 60%;
    margin-bottom: 10px;
    text-align: center;
    border-radius:10px;
    margin-left:10px;
    outline:none;
    border:none;
    border-bottom:solid 2px #0e84b3;
}
#example_wrapper
{
	text-align: center;
}

#example_filter
{
	text-align:left;
	width:60%;
	float:right;
}

#example_length
{
	text-align:left;
	width:40%;
	float:left;
}

#example_paginate, #example_info
{
	padding: 10px;
}


.paginate_button
{
 	padding:10px;
	background-color:#e4e4e4;
	color:black;
	border:none;
	transition:0.3s;
	margin-left:5px;
	margin-right:5px;
	border-radius:1000px;
	cursor:pointer;
	outline:none;
}

.paginate_button:focus 
{
	text-decoration:none;
	outline:0;
}
.paginate_button:hover
{
	text-decoration:none;
	background-color:#0e84b3;
	color:white;
	outline:none;
}

.current
{
	background-color:#0e84b3;
	color:white;
}
.previous, .next
{
	cursor:pointer;
	text-decoration:none;
	padding:10px;
	background-color:#e4e4e4;
	color:black;
	border:none;
	transition:0.3s;
	border-radius:0px;
	width:100px;
	
}

.previous:hover, .next:hover
{
cursor:pointer;
	text-decoration:none;
	padding:10px;
	background-color:#0e84b3;
	color:white;
}


</style>

<title> Destiny World</title>


</head>


<body style="font-family: algerrian sans-serif; background-color: rgba(224, 224, 224, 0.527);">



<!--Header Start-->

    <div class="header_import">
    <script>
    $(function(){
    $(".header_import").load("admin-header");  
    })
    </script>
    </div>
    
<!--Header End-->

<style>
   .dashboard-header
          {
              display: block;
          }

.dashboard-profile
{   
    color:white;
    border-bottom: 2px solid white;
}
.user-profile-section
{
    margin-top: 150px;
}
.pr-section1, .pr-section2, .pr-section3, .pr-section4, .pr-section5
{
    background-color: #fff; 
    border-radius: 10px;
    font-size: 17px;
    color:rgb(110, 110, 110);
    box-shadow: 7px 7px 10px 1px rgba(0, 0, 0, 0.205);
}
.fatch-data
{
    /*margin-left: 20px;*/
    font-size: 23px;
    color:black
}
.text-center1
{
    text-align: left;
}
.button1
{
    margin-top: 15px;
    height: 40px;
    width:49%;
    border-radius: 50px;
    outline: none;
    border:solid 3px rgb(8, 89, 121);
    background-color: white;
    color:black;
    text-transform: uppercase;
    font-weight: bold;
    transition: 0.2s ease-in-out;
    box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.534);
}

.button1:hover
{
    background-color: rgb(8, 89, 121);
    color:white;
}

.button1:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}

.top-bar-content
{
    margin-top: 50px;
}

.cards
{
    font-size: 30px;
    border-radius: 500px;
    padding: 15px;
}
.fb-button
{
    width:100%;
    font-size: 20px;
    height: 50px;
    background-color: rgb(59, 114, 216);
    outline: none;
    border: none;
    color:white;
    transition: 0.3s ease-in-out;
    border-radius: 50px;
    
}
.fb-button:hover
{
    background-color: rgb(8, 54, 141);
}
.fb-button:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}

.in-button
{
    width:100%;
    font-size: 20px;
    height: 50px;
    background-color: rgb(35, 151, 204);
    outline: none;
    border: none;
    color:white;
    transition: 0.3s ease-in-out;
    border-radius: 50px;
    
}
.in-button:hover
{
    background-color: rgb(3, 94, 136);
}
.in-button:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}
.connect-text
{
    text-align: center; 
    color:rgb(8, 106, 131); 
    font-size: 30px; 
    font-weight: bold;
}
.pan-aadhar-number
{
    border-radius: 50px;
    width:100%;
    height: 50px;
    background-color: rgba(211, 211, 211, 0.219);
    text-align: center;
    color: black;
    font-size: 20px;
    border: none;
    outline:none;
    padding: 20px;
}
.button2
{
    width:100%;
    border-radius: 50px;
    height: 45px;
    background-color: rgb(7, 98, 121);
    outline: none;
    border:none;
    color:white;
    font-weight: bold;  
    font-size: 20px;
    transition: 0.3s;
    text-transform: uppercase;
    
}
.button2:hover
{
    background-color: rgb(6, 53, 65);
}
.button2:active
{
    transition: 0.1s;
    transform: scale(0.98);
}

.pan-aadhar-number:active
{
    border: none
}





.fun-step1
{
    border-radius: 0px;
    background-color: rgb(59, 151, 212);
    width:25%;
    color:rgb(255, 255, 255);
    padding: 15px;
    font-size: 25px;
    position: fixed;
    z-index: 9999999;
    top:10px;
    right: -1000px;
    cursor: pointer;
    transition:0.5s;
}

.fun-step1.add
{
    right: 10px;

}

.success-close
{
    font-size: 20px;
    float: right;
    position: relative;
    top:-10px;
    right: -5px;
    color:rgb(0, 0, 0);
    cursor: pointer;
    transition: 0.3s;
    
}

.success-close:hover
{
    color:rgb(255, 255, 255);
}

.submit-function
{
    opacity: 1;
   
}



@media(max-width:975px)
{
    .fun-step1
{
    width:96%;
    top:10px;

}
.connect-text
{
    font-size: 25px; 
}
.pr-section1
{
    font-size: 15px;
}
.fatch-data
{
    font-size: 20px;
}
.text-center1
{
    text-align: center;
}
.top-bar-content
{
    margin-top: 0px;
}

}
</style>



<div class="user-profile-section">
<div class="container-fluid"> 

<div class="col-md-12">
<div class="pr-section5">
    
<div class="container-fluid">
<div class="section1-data1">

<div class="heading" style="border-bottom: solid 2px rgba(0, 0, 0, 0.363)">
<br>
<p style="text-align: center; color:black; font-weight: bold; font-size: 20PX;">
    <span> 
    <select class="select-fundraisers">
            <option value="">all</option>
            <option value="IDEAS">Creative IDEAS</option>
            <option value="MEDICAL">Medical</option>
            <option value="NGO">NGO</option>
            <option value="PERSONAL">Personal</option>
    </select>    
    </span>
    CAMPAINGS Data
    
    <span class="ajax-data">  </span>
    <span class="br-tag"><br></span>
    <!-- <span class="search-bar">
        <input id="myInput" class="myinput" placeholder="Search.." type="text"> &nbsp; <i class="fa fa-search search-icon"></i>
    </span> -->
</p>
</div>

<div class="deta-process">
<br>


<script>
$(function(){

    $(".select-fundraisers").change(function()
    {
        var a = $(".select-fundraisers").val();
        //$("#myInput").on("keyup", function() {
        var value = $(".select-fundraisers").val().toLowerCase();
        $("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
});
        $("#myInput").on("keyup", function() {
            var value2 = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value2) > -1)
            });
        });

//search show

$(".search-icon").click(function(){
   // alert("asd");
    $(".myinput").toggleClass("width");
    $(".myinput").focus();

})

});

</script>


<style>
  
    .search-icon
    {
        cursor: pointer;
        color:rgb(161, 161, 161);
        transition: 0.3s;
    }
    .search-icon:hover
    {
        color:rgb(134, 23, 23);
        transform: scale(1.1);
    }

     .myinput
    {
        font-size: 20px;
        outline: none;
        border: none;
        border-bottom: solid 2px black;
        text-align: center;
        width:0px;
        transition: 0.3s;
    }
    .myinput.width
    {
        width:200px;
    }


.u_type
{
    text-transform: uppercase;
}
.select-fundraisers
{
    width:10%;
    font-size: 20px;
    color:rgb(13, 88, 138);
    text-transform: uppercase;
    outline: none;
    border:none;
    border-bottom: 2px solid rgb(0, 0, 0);
}
.select-fundraisers
{
    width:200px;
}

table, td, th {  
  border: 1px solid rgba(212, 212, 212, 0.397);
  text-align: left;
  
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
}

.circle-1
{
    color:rgba(0, 0, 0, 0.514);
    font-size: 22px;
    cursor: wait;
}
.circle-1-2 
{
    color:rgba(0, 0, 0, 0.514);
    font-size: 22px;
    color:green;
    cursor: auto;
    display: none;

}


.deta-process::-webkit-scrollbar {
  width: 0px;
  height: 10px;
  border-radius: 100px;
  transition: 0.3s;
}

.deta-process::-webkit-scrollbar-track {
  background: rgb(228, 228, 228); 
}
 
.deta-process::-webkit-scrollbar-thumb {
  background: rgb(14, 132, 179); 
}

.deta-process::-webkit-scrollbar-thumb:hover {
  background: rgb(9, 68, 92); 
}

.img-for-all
{
    padding: 2px;
    width:40px;
    border: 2px solid rgb(255, 255, 255);
    border-radius: 100px;
    cursor: pointer;
    transition: 0.1s;
}
.img-for-all:hover
{
    border: 2px solid rgb(141, 143, 139);
    transform: scale(1.1);
}

.text1
{
text-align: center;
color:rgb(133, 131, 131);
border-radius: 100px;
position: static;
transition: 0.3s;
}
.ap, .dp, .sc, .dl
{
font-size: 0px;
}
.ap.add
{
padding: 5px;
font-size: 16px;
}
.dp.add
{
padding: 5px;
font-size: 16px;
}
.sc.add
{
padding: 5px;
font-size: 16px;
}
.dl.add
{
padding: 5px;
font-size: 16px;
}

.u_action
{
    min-width: 210px;
}

.search-bar
{
    float:right;
    margin-right: 20px;
}

.br-tag
{
    display: none;
}

.deta-process
{
    overflow: scroll;
}
.fundraisers-table th
{
    min-width: 150px;
}



.block-campaign, .unblock-campaign, .success-campaign
{
	width:100px;
    color:white;
    border-radius: 50px;
    outline: none;
    padding: 5px;
    padding-left: 10px;
    padding-right: 10px;
    border:none;
    font-size: 15px;
    transition: 0.3s;
}
.block-campaign
{
    background: rgb(236, 26, 26);
}
.unblock-campaign
{
    display: block;
    background: rgb(50, 177, 11);
}


.block-campaign:hover
{
    background: rgb(131, 9, 9);
}
.unblock-campaign:hover
{
    background: rgb(27, 100, 5);
}

.success-campaign
{	
	background-color:#169dde;
}

.success-campaign:hover
{	
	background-color:#31708f;
}

@media(max-width:975px)

{

.deta-process::-webkit-scrollbar {
  height: 7px;
}


.br-tag
{
    margin-top: -10px;
    display: block;
}
.search-bar
{
    float:none;
}
.fundraisers-table th
{
    min-width: 130px;
}

.deta-process
{
    overflow: scroll;
}
}

</style>



<script>
        $(function(){
            $(".approve-logo").hover(function(){
                $(".ap").toggleClass("add");
                $(".dp").removeClass("add");
                $(".sc").removeClass("add");
                $(".dl").removeClass("add");

            });

            $(".disapprove-logo").hover(function(){
                $(".dp").toggleClass("add");
                $(".ap").removeClass("add");
                $(".sc").removeClass("add");
                $(".dl").removeClass("add");
            });

            $(".success-logo").hover(function(){
                $(".sc").toggleClass("add");
                $(".dp").removeClass("add");
                $(".ap").removeClass("add");
                $(".dl").removeClass("add");
            });

            $(".delete-logo").hover(function(){
                $(".dl").toggleClass("add");
                $(".sc").removeClass("add");
                $(".dp").removeClass("add");
                $(".ap").removeClass("add");
                
            });
      
        })
</script>


<div class="fundraisers-details">
<table id="example" class="fundraisers-table">
    <thead>
    <tr>
    	<th>NAME</th>
    	<th>CONTACT</th>
        <th>TITLE</th>
        <th>CREATED</th>
        <th>START DATE</th>
        <th>END DATE</th>
        <th>GOAL</th>
        <th>RAISED</th>
        <th>DONORS</th>
        <th>STATUS</th>
        <th>ACTION
                <span class="status-text">
                        <span class="text1 ap">Approve</span>
                        <span class="text1 dp">Disapprove</span>
                        <span class="text1 sc">Success</span>
                        <!-- <span class="text1 dl">Delete</span> -->
                        <br>
                </span>
        </th>
        <th>VIEW</th>


    </tr>
</thead>

<tbody id="myTable">

<c:forEach var="cm" items="${data1}">

        <tr>
          <td>${cm.fundraisers_name}</td>
          <td>${cm.fundraisers_contact}</td>
          <td>${cm.fundraisers_title}</td>
          <td>${cm.fundraisers_created_date}</td>
          <td>${cm.fundraisers_start_date}</td>
          <td>${cm.fundraisers_end_date}</td>
          <td>${cm.fundraisers_goal_amount}</td>
          <td>${cm.fundraisers_raised_amount}</td>
          <td>${cm.fundraisers_donor_list}</td>
          <td>
          <span class="user-status">
	              <c:if test="${cm.fundraisers_status == 0}">
	              	<button value="${cm.campaign_id}" type="button" class="block-campaign ajax-block-campaign-button">Disapprove</button>
	              </c:if>
	
	              <c:if test="${cm.fundraisers_status == 1}">
	              	<button value="${cm.campaign_id}" type="button" class="unblock-campaign ajax-unblock-campaign-button">Approve</button>
	              </c:if>
	              
	              <c:if test="${cm.fundraisers_status == 2}">
	              	<button value="${cm.campaign_id}" type="button" class="success-campaign ajax-unblock-campaign-button"><i class="fa fa-thumbs-o-up"></i> Success</button>
	              </c:if>
	          </span>
          </td>
          
          <td class="u_action">
              <span class="user-status">
                    <img value="${cm.campaign_id}" class="img-for-all approve-logo ajax-submit-approve-campaign" src="/destiny/files/dashboard-admin-images/app.jpg">
                    <img value="${cm.campaign_id}" class="img-for-all disapprove-logo ajax-submit-disapprove-campaign" src="/destiny/files/dashboard-admin-images/dis.jpg">
                    <img value="${cm.campaign_id}" class="img-for-all success-logo ajax-submit-success-campaign" src="/destiny/files/dashboard-admin-images/suc.jpg">
                    <!-- <img class="img-for-all delete-logo" src="/destiny/files/dashboard-admin-images/del.jpg"> -->
                </span>
          </td>
          
          <td class="u_view"><img cid="${cm.campaign_id}" fid="${cm.fundraisers_id}" class="img-for-all view-logo ajax-edit-campaign" data-toggle="modal" data-target="#myModal" src="/destiny/files/dashboard-admin-images/view1.jpg"></td>
        </tr>
        
</c:forEach>
  
    </tbody>
      
</table>
</div>

<br>
</div>


</div>
</div>
</div>
</div>

</div>


</div>


<!--View Campaign All Details-->

<div class="view-campaign">

<style>
.view-logo-btn
{
    display: none;
}
.modal-dialog
{
    width:90%;
}
#myModal
{
    z-index: 999999;
}

@media(max-width:975px)
{
    .modal-dialog
{
    width:95%;
}
}

</style>    

<script>
$(function(){
    $(".view-logo").click(function(){
    $(".view-logo-btn").click();
        
    })
})
</script>

<div class="container">
  <!-- Trigger the modal with a button -->
  <!-- <button type="button" class="btn btn-info btn-lg view-logo-btn" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="text-align: center">Campaign Details</h4>
        </div>
        <div class="modal-body">


<style>
 
.amount-text
{
    padding: 20px;
    padding-left: 40px;
    padding-right: 40px;
    background-color: rgb(9, 127, 173);
    color: white;
    outline: none;
    font-size: 18px;
    text-transform: uppercase;
}
.t-amount
{
    background-color: rgb(7, 56, 75);
    color:white;
}

.d-amount
{
    background-color: rgba(10, 17, 59, 0);
    color:white;
}

.p-amount
{
    background-color: rgba(59, 10, 26, 0);
    color:white;
}

.d-button
{
    background-color: rgb(10, 49, 59);
    color:white;
    transition: 0.3s ease-in-out;
    
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 5px;
}

.d-button:hover
{
    background-color: rgb(11, 99, 119);
    box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
    border-radius: 10px;

}

.side-text
{
    margin-left: -30px;
    height: 400px; 
    /*background-color: rgb(32, 86, 107); */
    color:white;
    text-align: center;
    font-size: 30px;
}

@media (max-width:975px)
{
    .amount-text
{
    padding: 10px;
    outline: none;
    font-size: 11px;

}

.cause_amount
{
    text-align: center
}

.side-text
{
    margin-left: 0px;
    height: auto;
}
.side-text1
{
    height: auto;
}

}

.cause_title
{
    text-transform: uppercase;
    font-size: 50px;
    padding-top: 10px;
    padding-bottom: 10px;
    color: rgb(255, 255, 255);
    font-weight: bold;
    text-align: center;
    width:100%;
    overflow: hidden;


}  

@media(max-width:975px)
{

    .cause_title
{
    font-size: 30px;
}  

}

</style>


<div class="cause-details-main">

<div class="cause-details-section">


<div class="cd-section2">    
<div style="background-color:rgb(11, 108, 133); padding-top: 25px; padding-bottom: 25px;">
<div class="container-fluid">
    <div class="cause_amount">
    
        <div class="cause_title camp_title"></div>

        <br><br>
        <div class="col-md-5">
        <span class="t-amount amount-text">Goal &#8377; <span class="goal-percent camp_goal_amount" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span></span>
        <span class="r-amount amount-text">Achieved  &#8377; <span class="achieved-percent camp_raised_amount" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span></span>
        <br><br><br>
        </div>
<script>
$(function()
{
    var gl= $(".goal-percent").html();
    var ac= $(".achieved-percent").html();
    
    var tp=ac/gl*100;
    var tp2=Math.round(tp);
    $(".ach-percent").html(tp2 +"%");


})
</script>
        <div class="col-md-5">
        <span class="p-amount amount-text">OF OUR GOAL <span class="ach-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span> </span>
        <span class="d-amount amount-text">Share <span style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">48</span> </span>
        <br><br><br>
        </div>
        <div class="col-md-2">
                <a href="#" style="text-decoration: none"  class=" donate-popup"><span class="d-button amount-text"><button value="${cm.campaign_id}" class="ourcausebtn1" style="font-weight: bold; outline:none; border:none; background-color:transparent;">Donate Now</button> </span></a>
           <br><br>
        </div>
        
    </div>
</div>
</div>
</div>

<br><br>

<div class="cd-section3">
<div class="container-fluid">    
    

<style>
        .user-images1
{
    height: 450px;
    overflow: hidden;
    cursor: pointer;
    background-color: rgba(255, 0, 0, 0);
    transition: 0.3s;
}

.user-images .slick-slide
{
    height: auto;
    cursor: pointer;
}

   .slick-dots li button 
        {
        
            background-color: rgb(19, 142, 190);
            border-radius: 25px;
            width: 12px;
            height: 12px;
            text-indent: -9999px;
        }
        
         .slick-dots li.slick-active
        {
            transform: scale(1.2);
            opacity: 0.3;
        }
</style>    

<script>

$(function(){
        $(".user-images").slick
        ({
         autoplay:true,
         dots:true,
         slidesToShow: 1,
         arrows:false,
         speed:1000,

        });
});

</script>


<div class="col-md-8 container-fluid user-images1">
<div class="user-images">

<c:forTokens items = "${cm.fundraisers_campaign_images}" delims = "," var = "name">
         	<img class="img-path1" src="<c:out value = "${name}"/>" style="width:100%; height: 400px;">
</c:forTokens>

</div>
<br><br>

</div>

    <div class="col-md-4 side-text1">
        <div class="side-text">

<style>

.tips-text
{
    color:rgb(255, 255, 255); 
    text-align: left;
    font-size: 18px;
}



.verified-button
{
    height: 30px;
    font-size: 12px;
    background-color: rgb(14, 86, 104);
    border:none;
    outline:none;
    border-radius: 50px;
    float:right;
    padding-left: 10px;
    padding-right: 10px;
    transition: 0.3s;
    
}

.verified-button:hover
{
    background-color: rgb(255, 255, 255);
    color:black;
}

.img-icon
{
	background:rgb(21, 160, 214);
    width:60px;
    height:60px;
    border-radius: 50px;
    border:solid 2px white;
    float:right
}

.cb-details
{
    font-size: 25px; 
    border-bottom: solid 0.52px white; 
    padding-bottom: 15px;
}

@media(max-width:400px)
{
    .cb-details
{
    font-size: 25px; 
    border-bottom: solid 0.0px white; 
    padding-bottom: 15px;
}
    
.img-icon
{
    width:40px;
    height:40px;
}

}
</style>

<div class="container-fluid">

<div class="camp-details" style="line-height: 15px; background-color: rgb(21, 160, 214); padding: 15px; border-radius: 5px">
<br>
<p class="cb-details"> Campaigner Details 
<img class="img-icon camp_personal_profile" src=""></p>
<br><br>
	<button type="button" style="display: none" class="verified-button varifies-personal camp_verified_fundraisers">VERIFIED <i class="fa fa-check-circle"></i></button>
	<button type="button" style="display: none" class="verified-button unvarified camp_unverified_fundraisers">UNVERIFIED <i class="fa fa-times-circle"></i></button>

<p class="tips-text" style="text-transform: capitalize;"><i class="fa fa-user"style="width:15px;" ></i> &nbsp; <span class="camp_personal_name"></span></p>
<p class="tips-text camp_category_type" style="text-transform: capitalize;"><i class="fa fa-vcard" style="font-size:15px; width:15px;"></i> &nbsp; <span class="camp_category_type"></span></p>
<p class="tips-text">
<i class="fa fa-map-marker" style="width:15px; text-transform: capitalize;"></i> &nbsp; <span class="camp_personal_city"></span></p>
</div>

<br>

<div class="camp-details" style="line-height: 15px; background-color: rgb(21, 160, 214); padding: 15px; border-radius: 5px">
<br>
<p class="cb-details">Beneficiary Details
<img class="img-icon camp_fundraisers_profile_image" src="${cm.fundraisers_profile_image}"></p>
<br><br>

	<button type="button" style="display: none" class="verified-button varifies-personal camp_verified_campaign">VERIFIED <i class="fa fa-check-circle"></i></button>
	<button type="button" style="display: none" class="verified-button unvarified camp_unverified_campaign">UNVERIFIED <i class="fa fa-times-circle"></i></button>

<p class="tips-text" style="text-transform: capitalize;"> <i class="fa fa-user" style="width:30px;"></i> <span class="camp_fundraisers_name"></span></p>
<p class="tips-text" style="text-transform: capitalize;"> <i class="fa fa-phone" style="width:30px;"></i> <span class="camp_fundraisers_contact"></span></p>
<p class="tips-text"> <i class="fa fa-envelope" style="width:30px;"></i> <span class="camp_fundraisers_email"></span></p>

<br>
</div>


</div>

        </div>
    </div>

</div>
</div>

<br><br>

<div class="col-md-8 cd-section4-sction5">
    
<div class="cd-section4" style="background-color: white; border-top-left-radius: 10px; border-top-right-radius: 10px;">



<script>

$(function height_manage(){

$(window).resize(function(){
    var ha1=$(window).width();
    
    if(ha1 < 990)
    {
        $(".height-fixer").css({"height":"auto"});
        $(".height-fixer-2").css({"height":"auto"});

        $(".height-fixerel").css({"height":"auto"});
        $(".height-fixerel-2").css({"height":"auto"});

        $(".height-fixerad").css({"height":"auto"});
        $(".height-fixerad-2").css({"height":"auto"});

    }
    
    else
    {
        $(".height-fixer").css({"height":"350px"});
        $(".height-fixer-2").css({"height":"100%"});

        $(".height-fixerel").css({"height":"400"});
        $(".height-fixerel-2").css({"height":"100%"});

        $(".height-fixerad").css({"height":"400"});
        $(".height-fixerad-2").css({"height":"100%"});

    }



});

$(".height-fixer")
});


$(function hide_show(){

    $(".speed-image").click(function(){
        
    $(".speed-image").css({"border-bottom":"solid 2px rgb(150, 150, 150)"});
    $(".eligibility-image").css({"border-bottom":"none"});
   

    $(".description-section").show();
    $(".document-section").hide();
    $(".donation-section").hide();
    $(".comment-section").hide();

    });

    $(".eligibility-image").click(function(){
    
    $(".eligibility-image").css({"border-bottom":"solid 2px rgb(150, 150, 150)"});
    $(".speed-image").css({"border-bottom":"none"});
    
    $(".document-section").show();
    $(".description-section").hide();
    $(".donation-section").hide();
    $(".comment-section").hide();
    
    });

/*
    $(".amount-image").click(function(){
    
        $(".eligibility-image").css({"transform":"scale(0.50)", "opacity":"0.5"});
    $(".speed-image").css({"transform":"scale(0.50)", "opacity":"0.5"});
    $(".cost-image").css({"transform":"scale(0.50)", "opacity":"0.5"});
    $(".amount-image").css({"transform":"scale(0.6)", "opacity":"1"});

    $(".donation-section").show();
    $(".description-section").hide();
    $(".document-section").hide();
    $(".comment-section").hide();
    
    });

    $(".cost-image").click(function(){
    
     
        $(".eligibility-image").css({"transform":"scale(0.50)", "opacity":"0.5"});
    $(".speed-image").css({"transform":"scale(0.50)", "opacity":"0.5"});
    $(".cost-image").css({"transform":"scale(0.6)", "opacity":"1"});
    $(".amount-image").css({"transform":"scale(0.50)", "opacity":"0.5"});

    $(".comment-section").show();
    $(".description-section").hide();
    $(".document-section").hide();
    $(".donation-section").hide();
    
    });
    
    */

})
</script>



<style>

.details-button
{
    width:49%;
    background-color: transparent;
    border: none;
    font-size: 2vmax;
    padding-top: 20px;
    outline: none;
    color: rgb(143, 142, 142);
    
}

.details-button:hover
{
    color: rgb(0, 0, 0);
}


</style>
<br>
<center>
<button class="details-button speed-image" style="border-bottom:solid 2px rgb(150, 150, 150)">DESCRIPTION</button>
<button class="details-button eligibility-image">DOCUMENTS</button>
</center>

<div class="container-fluid">  



<style>

    
.description-section, .document-section, .donation-section, .comment-section
{

    animation-name: testing11;
    animation-duration: 2s;
    
}

@keyframes testing11
{
    0%
    {
        opacity: 0;
        transform: scale(0.9);
    }

    100%
    {
        opacity: 1;
        transform: scale(1);
    }

}


.images-style
{
    width:100px;
    height:100px;
    border-radius: 50px;
    border:solid 5px none;
    transition: 0.2s ease-in-out;
    transform: scale(0.50);
    opacity: 0.5;
    
    
}

.images-style:hover
{
    cursor: pointer;
    border:solid 5px rgb(51, 51, 51);
    opacity: 1;

}


@media (max-width:975px)
{
.images-style
{
    width:70px;
    height:70px;
}
}

</style>





<!--
    <div class="col-md-12" style="text-align: center;"> 
    <img src="/destiny/files/images/des-icon.png" class="images-style speed-image" style="transform: scale(0.6); opacity: 1;">
    <img src="/destiny/files/images/document-icon.png" class="images-style eligibility-image">
    
    <img src="/destiny/files/images/donation-icon.png" class="images-style amount-image">
    <img src="/destiny/files/images/comment-icon.png" class="images-style cost-image">
-->

    <br><br>

</div>



<div class="col-md-12" style="background-image:linear-gradient(rgb(255, 255, 255), rgba(255, 255, 255, 0.425));  background-size: 100% 100%;  border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
<div style="background-color:rgba(0, 0, 0, 0); margin-left: -15px; margin-right: -15px;">
    <br>


<!--Description Start-->
<div class="description-section" style="display: block;">


<!--    <p style="text-align: center; font-size: 25px;">DESCRIPTION</p>
    <hr style="border:solid 1.5px rgb(224, 109, 80); text-align: center; width: 90%;">
    <br>    

--> 


<div class="col-md-12">
    <p style="font-size: 15px; text-align: justify;" class="camp_fundraisers_story">
            
            
    </p>
    
   <br><br>
</div>


</div>
<!--SPEED  End-->



<!--Eligibility Start-->
<div class="document-section" style="display: none">
<!--
    <p style="text-align: center; font-size: 25px;">DOCUMENTS</p>
    <hr style="border:solid 1.5px rgb(224, 109, 80); text-align: center; width: 90%;">
    <br>    
-->

<style>
.document-details img
{
    width:200px; 
    height: 200px;
    transition: 0.2s ease-in-out;
    border-radius: 5px;
    border:solid 2px rgba(0, 0, 0, 0.616);
    margin-right: 10px;
    opacity: 0.6;
}

.document-details img:hover
{
    cursor: pointer;
    transform: scale(1.05);
    opacity: 8;

}

.document-button
{
	background-image:url('/destiny/files/images/documents.png');
	background-size:100% 100%;
	background-color:white;
	color:white;
    width:200px; 
    height: 200px;
    transition: 0.2s ease-in-out;
    border-radius: 5px;
    border:solid 2px rgba(0, 0, 0, 0.616);
    outline:none;
    margin-top:10px;
    margin-right:10px;
    opacity: 0.6;
}

.document-button:hover
{
    cursor: pointer;
    transform: scale(1.05);
    opacity: 8;

}


.images-effct
{
    transition: 0.3s ease-in-out;
    width:100%;
    height: 100%;
    border-radius: 10px;

}


.close-button
{
    display: none;
    font-size: 40px;
    position: relative;
    right: -45%;
    top:70px;
    color:rgb(83, 19, 19);
    transition: 0.5s ease-in-out;
}


.close-button:hover
{
    cursor: pointer;
    color:rgb(219, 45, 45);
    transform: scale(0.91);

}
.close-button:active
{
    transform: scale(0.91);
}
.display-image
{
animation-name: zoom1;
animation-duration: 1.50s;
}

@keyframes zoom1
{
    from
    {
        opacity: 0;
    }
    to
    {
        opacity: 1;
    }
}


@media (max-width:975px)
{
    .close-button
{
    right: -40%;
}

}
</style>


<script>
$(function zoom_image(){
    $(".zoom-image").click(function(){
        $(".display-image").show();
        $(".close-button").show();
        var a1=$(this).attr('src');
        $(".display-image img").attr('src', a1);
    });

    $(".close-button").click(function(){
    $(".display-image").hide();
    $(".close-button").hide();

    })


})
</script>

 <center>

<span class="old-document document-details">
<c:forTokens items = "${cm.fundraisers_campaign_documents}" delims = "," var = "doc">

<c:set var="name" value="${doc}"/>
<c:set var="docf" value="${fn:substringAfter(name, '.')}"/>

<c:if test="${docf == 'jpg' || docf == 'JPG' || docf == 'jpeg' || docf == 'JPEG' || docf == 'png' || docf == 'PNG' || docf == 'svg' || docf == 'SVG'}">
	<img class="zoom-image" src="${doc}">
</c:if>	

<c:if test="${docf != 'jpg' && docf != 'JPG' && docf != 'jpeg' && docf != 'JPEG' && docf != 'png' && docf != 'PNG' && docf != 'svg' && docf != 'SVG'}">
	<a target="_blank" href="${doc}"><button type="button" class="document-button">'</button></a>
</c:if>
         
</c:forTokens>
</span> 
 


    
<br><br>
<i class="fa fa-times-circle close-button"></i>
    <div class="display-image" style="display: none"><img src="" class="images-effct"></div>



</center>


<br><br>
</div>

<!--ELIGIBILITY End-->


</div>
</div>

</div>


<div class="container-fluid"></div>
<br><br>



<c:if test="${fn:length(data5) != 0}">
<c:forEach var="cam" items="${data5}">

<div class="cd-section5" style="background-color: white; border-radius: 10px; font-size: 18px; padding: 10px;">
<div class="container-fluid" style="text-transform: capitalize;">
<br>
        <div><p  style="font-size: 25px; color:rgb(41, 41, 41)">Bank Account Details</p></div>
        <hr>

Account Number : <b> ${cam.account_number}</b>
<br>
Account Holder Name : <b> ${cam.account_holder_name}</b>
<br>
Bank Name: <b> ${cam.account_bank_name}</b>
<br>
IFSC Code : <b> ${cam.account_ifsc}</b>
<br><br>
<a href="#" style="text-decoration: none;">Click here to read this before you donate via the above options</a>
<br>
</div>
</div>

</c:forEach>
</c:if>



<c:if test="${fn:length(data5) == 0}">

<div class="cd-section5" style="background-color: white; border-radius: 10px; font-size: 18px; padding: 10px;">
<div class="container-fluid">
<br>
        Use the information below to make a direct bank transfer through NEFT/RTGS/IMPS.
<br>
<br>
- Account number : <b> 123456789</b>
<br>
- Account name : <b> Rahul</b>
<br>
- IFSC code : <b> sbi115822ok</b>
<br>
<br>
<a href="#" style="text-decoration: none;">Click here to read this before you donate via the above options</a>
<br>

</div>
</div>
</c:if>

<br><br>


</div>    
  
</div>

<div class="col-md-4 cd-section5">

<style>

.fb-button
{
    font-size: 20px;
    height: 50px;
    background-color: rgb(12, 26, 88);
    outline: none;
    border: none;
    color:white;
    transition: 0.3s ease-in-out;
    border-radius: 50px;
    
}
.fb-button:hover
{
    background-color: rgb(50, 77, 194);
}
.fb-button:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}

.dn-button
{
    font-size: 20px;
    height: 50px;
    background-color: rgb(218, 77, 42);
    outline: none;
    border: none;
    color:rgb(255, 255, 255);
    transition: 0.3s ease-in-out;
    border-radius: 50px;
    
}
.dn-button:hover
{
    background-color: rgb(160, 45, 17);
}
.dn-button:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}

.cd-section5
{
    /*margin-top: 115px;*/
}

@media (max-width:975px)
{
    .fb-button
{
    font-size: 20px;
}
}
</style>




<style>
.upi-text
{
    outline: none;
    border:none;
    background-color: transparent;
    resize: none;
    font-weight: bold;
    max-width: 100%;
    text-align: center;
}

.upi-text:hover
{
    cursor: copy;
}

.upi-text:focus
{
    outline: none;
}

.copy-code
{
    transition: 0.3s ease-in-out;
    color:white;
    background-color: rgb(20, 92, 20);

}
.copy-code:hover
{
    background-color: rgb(23, 194, 23);
    color:white;
}

.copy-code:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.90)
}


</style>

<script>
function myFunction() {
  var uid = document.getElementById("myInput");
  uid.select();
  document.execCommand("copy");
  //alert("Copied the text: " + copyText.value);
}
</script>




<button class="ourcausebtn1 form-control dn-button donate-popup" value="${cm.campaign_id}"><i class="fa fa-thumbs-up"></i> DONATE NOW </span></button>    
<br>
<p style="font-size: 18px;font-weight: bold; text-align: justify; text-align: center; font-style: italic">Funds will be transferred to the hospital</p>
<br>
<div class="upi" style="box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.534); background-color: white; border-radius: 10px; text-align: center;">
    <div class="container-fluid"><br>
        <p style="font-size: 15px;font-weight: bold; text-align: justify;  font-style: italic">
            Donate Via PayTm Or UPI
        </p>
        <hr style="border: solid 0.5px black; margin-top: -2px;">
            <div class="col-md-6">
                <img src="${cm.fundraisers_upi_image}" style="width:150px; height: 150px;">    
            </div>
            <div class="col-md-6">
                <img src="/destiny/files/images/upi.png" style="width:100px; height: 40px;"><br><br>
                <textarea readonly id="myInput" class="upi-text">${cm.fundraisers_upi_number}</textarea>
                <br>
                <center><button onclick="myFunction()" class="form-control copy-code" style="width:100px; border-radius: 50px;">COPY</button></center>
                <br>
            </div>

    </div>
</div>

<br><br>
<button class="form-control fb-button"><i class="fa fa-facebook-official"></i> SHARE ON FACEBOOK</span></button>    
<br>
<p style="font-size: 18px;font-weight: bold; text-align: justify; text-align: center; font-style: italic">Every social media share can bring &#8377;5,000 </p>

</div>

<div class="container-fluid"></div>


<br><br>
</div>
 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <a href="campaign-donors"><button type="button" class="btn btn-default">Donors</button></a>
          <a href="edit-campaign"><button type="button" class="btn btn-default">Edit</button></a>
        </div>
      </div>
    </div>
  </div>
  
</div>

    

</div>


<div class="col-md-12"></div>

<br><br>
<br><br>


<!--Footer Start-->

    <div class="footer_import">
    <script>
    $(function(){
    $(".footer_import").load("admin-footer");  
    })
    </script>
    </div>
  
  

<!--Footer End-->



<!--Donate popup Start-->

<script>
    $(function(){
        $(".donate-popup").click(function(){
            $(".close-button-main").click();
        })
    })
    </script>
    
    <!--<button class="donate-popup">Donate</button>-->
    
    <span data-toggle="modal" class="close-button-main" data-target="#myModal"></span>
          
    
    <div class="donate-import">
    <script>
    $(function(){
    $(".donate-import").load("donate");  
    })
    </script>
    </div>

<!--Donate Pop End-->    




        
</body>

</html>