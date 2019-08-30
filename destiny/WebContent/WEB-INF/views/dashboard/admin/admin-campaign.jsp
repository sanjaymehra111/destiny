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
	
	 
/* 	 
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
	  */
	 
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
    CAMPAINGS 
    
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
        <th>TYPE</th>
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
        <th>VIEW / EDIT</th>


    </tr>
</thead>

<tbody id="myTable">

<c:forEach var="cm" items="${data1}">

        <tr>
          <td>${cm.fundraisers_name}</td>
          <td>${cm.fundraisers_contact}</td>
          <td>${cm.fundraisers_title}</td>
          <td>${cm.campaign_type}</td>
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
          
          <td class="u_view">
          	<a target="_blank" href="/destiny/admin-edit-campaign/${cm.fundraisers_id}/${cm.campaign_id}"><img cid="${cm.campaign_id}" fid="${cm.fundraisers_id}" class="img-for-all view-logo ajax-edit-campaign" data-toggle="modal" data-target="#myModal" src="/destiny/files/dashboard-admin-images/view1.jpg"></a>
          </td>
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



        
</body>

</html>