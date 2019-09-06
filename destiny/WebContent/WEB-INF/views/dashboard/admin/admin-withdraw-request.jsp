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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    
   <!--Table-->
  	  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
     
  
  
  
  <script>
  
  $(function(){
	  
	  
	  $(".ajax-unblock-withdraw-button").click(function unblock_withdraw(){
			var unblock_withdraw = $(this).val();
			var w_amount= $(this).attr('w_amount');
			var b_amount= $(this).attr('b_amount');
			var c_id= $(this).attr('c_id');
			var f_id= $(this).attr('f_id');
			
			var unblock_withdraw = $(this).val();
			var url1 = "/destiny/unblock_withdraw";
			
			
			$.ajax({
				
				url:url1,
				data:
					{
						unblock_withdraw : unblock_withdraw,
						w_amount : w_amount,
						b_amount : b_amount,
						c_id : c_id,
						f_id : f_id
						
					},
				type : 'get',
				cache : false,
				dataType: 'text',
	 			success : function(){alert("withdraw Request Approved")},
				error : function(){alert("error")}
				
			}); //ajax-close
		});//	
		
		
		$(".ajax-block-withdraw-button").click(function block_withdraw(){

			var block_withdraw = $(this).val();
			var w_amount= $(this).attr('w_amount');
			var b_amount= $(this).attr('b_amount');
			var c_id= $(this).attr('c_id');
			var f_id= $(this).attr('f_id');
			
			//alert("w : " + w_amount +"b :" + b_amount);
			
			var url2 = "/destiny/block_withdraw";
			
			
			$.ajax({
				url:url2,
				data:
					{
						block_withdraw : block_withdraw,
						w_amount : w_amount,
						b_amount : b_amount,
						c_id : c_id,
						f_id : f_id
						
					},
				type : 'get',
				cache : false,
				dataType: 'text',
	 			success : function(){alert("withdraw Request Un-Approved")},
				error : function(){alert("error")}
				
			}); //ajax-close
		});//	
		
		
		$(".ajax-action-withdraw-button").click(function action_withdraw(){
			
			var w_amount= $(this).attr('w_amount');
			var cid= $(this).attr('c_id');
			var fid= $(this).attr('f_id');
			var id= $(this).val();
			
			var url3 = "/destiny/action_withdraw";
			
			$.ajax({
				
				url:url3,
				data:
					{
						cid : cid,
						fid : fid
					},
					
				type : 'get',
				cache:false,
				contentType : "application/json; charset=utf-8",
				dataType: 'json',
	 			success : function(data)
				 	{
	 					var data1 = data[0];
	 					var data2 = data[1];
	 					var i;
	 					var html = '';
	 					 
	 					for (i = 0; i < data1.length; i++) 
	 					{
	 						html+='<tr>';
	                        html+='<td>'+data1[i].withdraw_amount+'</td>';
	                        html+='<td>'+data1[i].request_date+'</td>';
	                        if(data1[i].withdraw_status == 0)
	                        	html+='<td>'+"<button type='button' class='block-withdraw'>Disapproved</button>"+'</td>';
	                        else
	                        	html+='<td>'+"<button type='button' class='unblock-withdraw'>Approved</button>"+'</td>';
	                        html+='<td>'+data1[i].approved_date+'</td>';
	                            
	                        html+='</tr>';
	                        //so on 
	                    }
	                     $('.action_withdraw').html(html);
	                     $('.action_w_amount').html(w_amount);
	                     $('.action_b_amount').html(data2);
	                     
	                     $('.ajax-block-withdraw-button').val(id);
	                     $('.ajax-unblock-withdraw-button').val(id);
	                     
	                     
		 				
					},
				error : function(){alert("error")}
				
			}); //ajax-close
			
		}); // action_withdraw function close
		
  })
  
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
     
     <script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script> 

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
<p style="text-align: center; color:black; font-weight: bold; font-size: 20PX; text-transform: uppercase;">
        Withdraw Request
         <span class="br-tag"><br></span>
<!--     <span class="search-bar">
        <input id="myInput" class="myinput" placeholder="Search.." type="text"> &nbsp; <i class="fa fa-search search-icon"></i>
    </span>
 --></p>
</div>

<div class="deta-process">
<br>

<script>
$(function(){
    
    //sesearch function

  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
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

.block-withdraw, .unblock-withdraw, .action-withdraw
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
.block-withdraw
{
    background: rgb(236, 26, 26);
}
.unblock-withdraw
{
    background: rgb(50, 177, 11);
}

.action-withdraw
{	
background: #0e84b3;
}

.block-withdraw:hover
{
    background: rgb(131, 9, 9);
}
.unblock-withdraw:hover
{
    background: rgb(27, 100, 5);
}

.action-withdraw:hover
{	
background: #384755;
}

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

table, td, th {  
  border: 1px solid rgba(212, 212, 212, 0.397);
  text-align: left;
  min-width: 150px;
  
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

.block-user, .unblock-user
{
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
    display: none;
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

.deta-process::-webkit-scrollbar {
  width: 0px;
  height: 7px;
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

    .withdraw-table th
{
    min-width: 150px;
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

@media(max-width:975px)
{
    .br-tag
{
    margin-top: -20px;
    display: block;
}
.search-bar
{
    float:none;
}
    .withdraw-table th
{
    min-width: 100px;
}

.deta-process
{
    overflow: scroll;
}
}

</style>


<div class="withdraw-details">
<table id="example" class="withdraw-table">
    <thead>
    <tr>
    	<th>CAMPAIGN TITLE</th>
    	<th>WITHDRAW AMOUNT</th>
    	<th>REQUEST DATE</th>
        <th>STATUS</th>
        <th>ACTION</th>
        <th>VIEW CAMPAIGN</th>
    </tr>
</thead>

<tbody id="myTable">

<c:forEach var="cvam" items="${data1}">

        <tr>
          <td style="text-transform: capitalize;">${cvam.campaign_title}</td>
          <td>${cvam.withdraw_amount}</td>
          <td>${cvam.request_date}</td>
          <td>
          <span class="user-status">
	              <c:if test="${cvam.withdraw_status == 0}">
	              	<button type="button" class="block-withdraw">Disapproved</button>
	              	<%-- <button value="${cvam.withdraw_id}" c_id="${cvam.campaign_id}" f_id="${cvam.fundraisers_id}" w_amount="${cvam.withdraw_amount}" type="button" class="unblock-withdraw ajax-unblock-withdraw-button">Approve</button> --%>
	              </c:if>
	
	              <c:if test="${cvam.withdraw_status == 1}">
					<button type="button" class="unblock-withdraw">Approved</button>
					<%-- <button value="${cvam.withdraw_id}" c_id="${cvam.campaign_id}" f_id="${cvam.fundraisers_id}" w_amount="${cvam.withdraw_amount}" type="button" class="block-withdraw ajax-block-withdraw-button">Disapprove</button> --%>
	              </c:if>
	          </span>
          </td>
        
        <td>
        	<button value="${cvam.withdraw_id}" c_id="${cvam.campaign_id}" f_id="${cvam.fundraisers_id}" w_amount="${cvam.withdraw_amount}"  type="button"  data-toggle="modal" data-target="#myModal" class="action-withdraw ajax-action-withdraw-button">CLICK</button>
        </td>
        
        
        <td class="u_view">
          	<a target="_blank" href="/destiny/admin-edit-campaign/${cvam.fundraisers_id}/${cvam.campaign_id}"><img cid="${cm.campaign_id}" fid="${cm.fundraisers_id}" class="img-for-all view-logo ajax-edit-campaign" src="/destiny/files/dashboard-admin-images/view1.jpg"></a>
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
.table-hide
{
	height:0px;
	overflow: hidden;
	transition:0.3s;
}
.transaction_button
{
	width:40%;
	padding:5px;
	border-radius: 20px;
	background: #49aad2;
	color:white;
	outline:none;
	border:none;
}
/* 
.transaction_button:FOCUS ~ .table-hide
{
	
	height:40%;
	overflow: scroll;
	
} */
/* .transaction_button:focus
{
	background-color:white;
 	width:0px;
	font-size:0px;
	outline:0px;
	border:none;
} */


.table-hide::-webkit-scrollbar {
  width: 0px;
  height: 7px;
  border-radius: 50px;
  transition: 0.3s;
}

.table-hide::-webkit-scrollbar-track {
  background: rgb(228, 228, 228); 
}
 
.table-hide::-webkit-scrollbar-thumb {
  background: rgb(14, 132, 179); 
}

.table-hide::-webkit-scrollbar-thumb:hover {
  background: rgb(9, 68, 92); 
}
.modal-dialog
{
	width:60%; 
}
@media(max-width:975px)
{
.modal-dialog
{
	width:100%; 
}	
}
</style>  
  
  
<script>
	$(function(){
		$(".transaction_button").click(function(){
			$(".table-hide").css({"height":"40%", "overflow":"scroll"});
			$(".transaction_button").hide();
		})
	})  
</script>
  
  <div class="modal fade" id="myModal" role="dialog" style="z-index: 9999; margin-top: 5%;">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="text-align: center">WITHRAW REQUEST APPROVAL</h4>
        </div>
         
        <div class="modal-body" style="text-align:center;">
     
     <button type="button" class="transaction_button">View All Transaction</button><br>
        
<div class="table-hide">     
	<table id="example" class="withdraw-table">
	    <thead>
		    <tr>
		    	<th>WITHDRAW AMOUNT</th>
		    	<th>REQUEST DATE</th>
		    	<th>STATUS</th>
		        <th>UPDATED DATE</th>
		    </tr>
		</thead>
	
		<tbody id="myTable" class="action_withdraw">
		</tbody>
	</table>
</div>

        <br>
        <div style="font-size:18px;"><span>Request Amount</span> : &#8377 <span class="action_w_amount"></span></div>
        <div style="font-size:20px; font-weight: bold"><span>Balance Amount</span> : &#8377 <span class="action_b_amount"></span></div>
      	
        
        
        
        </div>
        
        
        <div class="modal-footer">
        
        <button data-dismiss="modal" c_id="${cvam.campaign_id}" f_id="${cvam.fundraisers_id}" w_amount="${cvam.withdraw_amount}" type="button" class="block-withdraw ajax-block-withdraw-button">Disapprove</button>
	    <button data-dismiss="modal" c_id="${cvam.campaign_id}" f_id="${cvam.fundraisers_id}" w_amount="${cvam.withdraw_amount}" type="button" class="unblock-withdraw ajax-unblock-withdraw-button">Approve</button>
		          
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