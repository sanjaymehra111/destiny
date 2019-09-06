<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    
    <!--Table-->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    

    
  
<script>

		$(function(){
			
		$(".ajax-unblock-user-button").click(function unblock_user(){
			var unblock_user = $(this).val();
			
			var url1 = "/destiny/unblock_user";
			var data1 = new FormData();
			
			data1.append("unblock_user", unblock_user);
			
			$.ajax({
				
				url:url1,
				data:data1,
				type : 'post',
				cache : false,
				processData : false,
				contentType : false,
				dataType: 'text',
	 			success : function(){alert("success")},
				error : function(){alert("error")}
				
			}); //ajax-close
		});//	
		
		
		$(".ajax-block-user-button").click(function(){
			var block_user = $(this).val();
			var url2 = "/destiny/block_user";
			var data2 = new FormData();
		
			data2.append("block_user", block_user);
		
			$.ajax({
				
				url:url2,
				data:data2,
				type : 'post',
				cache : false,
				processData : false,
				contentType : false,
				dataType: 'text',
				success : function(){alert("success")},
				error : function(){alert("error")}
				
			}); //ajax-close
		});//	
		
			
		$(".ajax-edit-user-button").click(function unblock_user(){
			var edit_user_id = $(this).val();
			
			var url3 = "/destiny/edit_user";
			var data3 = new FormData();
			data3.append("edit_user_id", edit_user_id);
			
			$.ajax({
				
				url:url3,
				data:{edit_user_id : edit_user_id},
				type : 'GET',
				contentType : "application/json; charset=utf-8",
				dataType: 'json',
	 			success : function(data)
	 			 	{
	 					$(".ajax-user-id").val(data.fundraisers_id);
	 					$(".ajax-user-email").val(data.personal_email);
	 					$(".ajax-user-pan_no").val(data.personal_pan_no);
	 					$(".ajax-user-aadhar_no").val(data.personal_aadhar_no);
	 				},
	 			error : function(){alert("error")}
				
			}); //ajax-close
		});//	
			
		
		//update_user_details 
		
		$(".ajax-user-update-details").click(function update_user_details(){
			
			var id = $(".ajax-user-id").val();
			var email = $(".ajax-user-email").val();
			var pan = $(".ajax-user-pan_no").val();
			var aadhar = $(".ajax-user-aadhar_no").val();
			
			var url4="/destiny/update_user_details"
			
			$.ajax
			({
				
				
				url:url4,
				data:{id:id, email:email, pan:pan, aadhar:aadhar},
				type:'GET',
				cache:false,
				contentType:"application/json; charset=utf-8",
				dataType:"text",
				success : function(){alert("success")},
				error : function(){alert("error")} 

			
			}); //ajax close
			}); // update_user_details close

	
			
		});
		
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

      

</head>


<title> Destiny World</title>

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
    FUNDRAISERS  
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
  min-width: 110px;
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

.block-user, .unblock-user, .edit-user
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
.block-user
{
    background: rgb(236, 26, 26);
}
.unblock-user
{
    display: block;
    background: rgb(50, 177, 11);
}


.block-user:hover
{
    background: rgb(131, 9, 9);
}
.unblock-user:hover
{
    background: rgb(27, 100, 5);
}

.edit-user
{
	border:solid 2px #0e84b3;
	background-color:white;
	color:black;
}

.edit-user:hover
{
	border:solid 2px #0e84b3;
	background-color:#0e84b3;
	color:white;
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

@media(max-width:975px)
{
	th, td {
	  min-width: 100px;
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
	    min-width: 100px;
	}
	
	.deta-process
	{
	    overflow: scroll;
	}
}

</style>


<div class="fundraisers-details">
<table id="example" class="fundraisers-table">
    <thead>
    <tr>
    	<th>NAME</th>
        <th>TYPE</th>
        <th>CONTACT</th>
        <th>DOB</th>
        <th>CITY</th>
        <th>PAN NO.</th>
        <th>AADHAR NO.</th>
        <th>PROFILE</th>
        <th>UPDATED</th>
        <th>STATUS</th>
        <th>MODIFY</th>
    </tr>
</thead>

<tbody id="myTable">
<c:forEach var="fm" items="${data1}">

        <tr>
          <td>${fm.personal_name}</td>
          <td>${fm.category_type}</td>
          <td>${fm.personal_number}</td>
          <td>${fm.personal_dob}</td>
          <td>${fm.personal_city}</td>
          <td>${fm.personal_pan_no}</td>
          <td>${fm.personal_aadhar_no}</td>
          <td style="text-align:center"><img src="${fm.personal_profile_image}"  style="width:50px; height:50px; border-radius: 100px;"></td>
          <td>${fm.personal_updated_date}</td>
          <td>
              <span class="user-status">
	              <c:if test="${fm.personal_status == 0}">
	              	<button value="${fm.fundraisers_id}" type="button" class="unblock-user ajax-unblock-user-button">Un-Block</button>
	              </c:if>
	
	              <c:if test="${fm.personal_status == 1}">
	              	<button value="${fm.fundraisers_id}" type="button" class="block-user ajax-block-user-button">Block</button>
	              </c:if>
              </span>
          </td>
          <td>
          	<button value="${fm.fundraisers_id}" type="button" data-toggle="modal" data-target="#myModal" class="edit-user ajax-edit-user-button">Edit</button>
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





  <!-- Modal -->
  
<style>
.edit-mode-text
{
	text-align:center;
	border:none;
	outline:none;
	border-bottom:solid 2px #0e84b3; 
	border-radius:20px;
	width:50%;
	height:40px;
	padding:10px;
	font-size:17px;
}

.show-user-email, .show-user-pan, .show-user-aadhar
{
	font-size:0px;
	transition:0.3s;
	color:white;
}

.ajax-user-email:hover ~ .show-user-email, .ajax-user-email:focus ~ .show-user-email
{
	font-size:15px;
	color:#0e84b3;
}
.ajax-user-pan_no:hover ~ .show-user-pan, .ajax-user-pan_no:focus ~ .show-user-pan
{
	font-size:15px;
	color:#0e84b3;
}
.ajax-user-aadhar_no:hover ~ .show-user-aadhar, .ajax-user-aadhar_no:focus ~ .show-user-aadhar
{
	font-size:15px;
	color:#0e84b3;
}
</style>  
  
  <div class="modal fade" id="myModal" role="dialog" style="z-index: 9999; margin-top:10%"">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="text-align: center">Update Details</h4>
        </div>
         
        <div class="modal-body" style="text-align:center;">
          <p><input class="edit-mode-text ajax-user-id hidden" type="text" value="${fm.fundraisers_id}"></p>
          <p><input class="edit-mode-text ajax-user-email" type="email" maxlength="50" value="${fm.personal_email}" placeholder="User Email"><span class="show-user-email" style="margin-left:20px;"> Email</span></p>
          <p><input class="edit-mode-text ajax-user-pan_no" type="text" maxlength="20" value="${fm.personal_pan_no}" placeholder="User Pan Number"><span class="show-user-pan" style="margin-left:20px;"> Pan</span></p>
          <p><input class="edit-mode-text ajax-user-aadhar_no" type="text" maxlength="20" value="${fm.personal_aadhar_no}" placeholder="User Aadhar Number"><span class="show-user-aadhar" style="margin-left:20px;"> Aadhar</span></p>
        </div>
        
        
        <div class="modal-footer">
          <button type="button" class="btn btn-success ajax-user-update-details">Update</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Modal End-->


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