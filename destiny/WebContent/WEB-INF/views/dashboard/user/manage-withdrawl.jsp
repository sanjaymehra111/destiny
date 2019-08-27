<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
    
    <!--For slick bar-->         
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css">

    <!--Textarea-->
    <script src="https://cdn.ckeditor.com/4.11.1/basic/ckeditor.js"></script>


<script>
$(function(){

	$(".submit-personal-ajax-button").click(function(){

	var url = "/destiny/campaign_acount_details";
	var data = new FormData();
	 
	data.append("campaign_id", $(".campaign_id").html());
	data.append("fundraisers_id", $(".fundraisers_id").html());
	data.append("account_type", 'personal');
	data.append("account_holder_name", $(".account_holder_name").val());
	data.append("account_number", $(".account_number").val());
	data.append("account_ifsc", $(".account_ifsc").val());
	data.append("account_swift", $(".account_swift").val());
	data.append("account_bank_name", $(".account_bank_name").val());
	data.append("pan_images", $(".upload-pan-h")[0].files[0]);
	data.append("docs_files", $(".upload-aadhar-h")[0].files[0]);
	data.append("cancel_cheque_images", $(".upload-cheque-h")[0].files[0]);


	$.ajax({
		
		url:url,
		data:data,
		contentType:false,
		processData:false,
		type:'post',
		cache:false,
		enctype: 'multipart/form-data',
		success : function(){alert("Update Success")},
	 	error : function(){alert("Error Found")}
		
	});//Ajax Close

	});//submit-personal-ajax-button  Close

	
	
	$(".submit-company-ajax-button").click(function(){

		var url = "/destiny/campaign_acount_details";
		var data = new FormData();
		 
		data.append("campaign_id", $(".campaign_id").html());
		data.append("fundraisers_id", $(".fundraisers_id").html());
		data.append("account_type", 'company');
		data.append("account_holder_name", $(".company_account_holder_name").val());
		data.append("account_number", $(".company_account_number").val());
		data.append("account_ifsc", $(".company_account_ifsc").val());
		data.append("account_swift", $(".company_account_swift").val());
		data.append("account_bank_name", $(".company_account_bank_name").val());
		data.append("pan_images", $(".upload-pan-hc")[0].files[0]);
		data.append("docs_files", $(".upload-doc-hc")[0].files[0]);
		data.append("cancel_cheque_images", $(".upload-cheque-hc")[0].files[0]);

	$.ajax({
			
			url:url,
			data:data,
			contentType:false,
			processData:false,
			type:'post',
			cache:false,
			enctype: 'multipart/form-data',
			success : function(){alert("Update Success")},
		 	error : function(){alert("Error Found")}
			
			
		});//Ajax Close

		});//submit-personal-ajax-button  Close

	
})// main function close

</script>

</head>


<title> Destiny World</title>

<c:forEach var="fm" items="${data1}">
<c:forEach var="cm" items="${data2}">

<body style="font-family: algerrian sans-serif; background-color: rgba(224, 224, 224, 0.527);">

<!--Header Start-->

    <div class="header_import">
    <jsp:include page="user-header.jsp" />
    </div>
    
<!--Header End-->


<style>


.verified-button, .un-verified-button
{
    height: 30px;
    font-size: 12px;
    background-color: #30846b;
    border:none;
    outline:none;
    border-radius: 50px;
    text-align:center;
    padding-left: 10px;
    padding-right: 10px;
    transition: 0.3s;
    color:white;
    width:120px;
    
}
.verified-button:ACTIVE 
{
    transform:scaleX(-1);
}

.un-verified-button
{
    background-color: #b32121;
}
.un-verified-button:ACTIVE
{
     transform:scaleX(-1);
}  

th, td {
  padding: 15px;
}

.user-profile-section
{
    margin-top: 10px;
}

.ov-section1, .ov-section2, .ov-section3, .ov-section4, .ov-section5, .head1
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



.title
{
    color:black;
    font-size: 25px;
}

.donors-icons
{
width:40px
}
.help-text
{
font-size: 18px;
}


.manage-header
{
    text-align: center;
}

.mdh
{
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 5px;
    color:rgb(126, 125, 125);
    font-weight: bold;
    font-size: 15px;
}

.mdh:hover
{
    color:rgb(20, 120, 187);
}


.dashboard-withdrawl
{   
    color:rgb(20, 120, 187);
    border-bottom: 2px solid rgb(20, 120, 187);
}

.manage-header .slick-slide
{
    height:25px;
}

/*

.manage-header .slick-next, .manage-header .slick-prev
{
   background-color: rgba(16, 98, 153);
    border-radius: 500px;  
    font-size: 1px;
    height:25px;
    width: 25px;
}
.manage-header .slick-next:hover, .manage-header .slick-prev:hover
{
    background-color: rgb(16, 98, 153);
    
}

.manage-header .slick-next:focus, .manage-header .slick-prev:focus
{
background-color: rgba(16, 98, 153);
}

.manage-header .slick-next:active, .manage-header .slick-prev:active
{
    background-color: rgba(16, 98, 153);
}

*/

.boost-text
{
    font-size: 15px;
}

.youtube-video
{
width: 100%;
height: 300px;
border: none;
}

.need-help-text
{
    display: block;
}

@media(max-width:975px)
{

    
.need-help-text
{
    display: none;
}

    .help-text
{
font-size: 15px;
}

.dashboard-overview
{   
    border-bottom: 0px solid white;
}

    .fun-step1
{
    width:96%;
    top:10px;

}
.connect-text
{
    font-size: 25px; 
}
.ov-section1
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

@media(max-width:600px)
{
    .mdh
{
    font-size: 12px;
}
.boost-text
{
    font-size: 12px;
}

}
</style>



<div class="user-profile-section">


<!--manage Header Start-->

<!--Manage Header Start-->

    <div class="manage_header_import">
    <jsp:include page="manage-header.jsp" />
    </div>
    
<!--manage Header End-->


<div class="container-fluid"> 


<div class="ov-section1">
<div class="container-fluid">
<div class="section1-data2">
<br>

<div class="campaign_id hidden">${cm.campaign_id}</div>
<div class="fundraisers_id hidden">${fm.fundraisers_id}</div>

<div class="col-md-12">
<span style="font-size: 25px;">Account Overview</span>
<span style="float:right; font-weight: bold;" class="need-help-text">
Need help? Contact your campaign manager at 1234567890  or send e-mail at destiny.world@hotmail.com
</span>
<hr style="border:solid 0.5px grey">
<br>


<div class="col-md-6" style="text-align: center">
<div class="col-md-12" style="background-color: rgba(235, 235, 235, 0.329);">
<br>
    <span style="font-size: 30px; font-weight: bold; color: rgb(9, 84, 128)">TOTAL RAISED</span><br>
    <span style="font-size: 30px; font-weight: bold; color: rgb(9, 84, 128)">&#8377; 
     <c:set var="ramount" value="${fn:substringBefore(cm.fundraisers_raised_amount, '.')}"/>
			${ramount}
</span><br><br>
</div>
<!-- 
<div class="col-md-6" style="text-align: center">
    <br>
    <span style="font-size: 20px; font-weight: bold; text-transform: uppercase;  color: rgb(0, 0, 0) ">Raised In INR</span><br>
    <span style="font-size: 25px; font-weight: bold;">&#8377; 5300 </span><br><br>
</div>

<div class="col-md-6" style="text-align: center">
    <br>
    <span style="font-size: 20px; font-weight: bold; text-transform: uppercase;  color: rgb(0, 0, 0) ">Raised In USD</span><br>
    <span style="font-size: 25px; font-weight: bold;">$ 31 </span><br><br>
</div>
 -->
<br>
<br>
</div>


<div class="col-md-6" style="text-align: center">
<div class="col-md-12" style="background-color: rgba(235, 235, 235, 0.329);">
<br>

    <span style="font-size: 30px; font-weight: bold; color: rgb(9, 84, 128)">Available For Withdrawal</span><br>
    <span style="font-size: 30px; font-weight: bold; color: rgb(9, 84, 128)">&#8377; ${ramount}</span><br><br>
</div>
<!-- 
<div class="col-md-6" style="text-align: center">
<br>    <span style="font-size: 20px; font-weight: bold; text-transform: uppercase;  color: rgb(0, 0, 0) ">In INR</span><br>
    <span style="font-size: 25px; font-weight: bold;">&#8377; 5300 </span><br><br>
</div>

<div class="col-md-6" style="text-align: center">
<br>    <span style="font-size: 20px; font-weight: bold; text-transform: uppercase;  color: rgb(0, 0, 0) "> In USD</span><br>
    <span style="font-size: 25px; font-weight: bold;">$ 31 </span><br><br>
</div>
 -->
</div>

<div class="container-fluid"></div><br>

<div class="withdraw" style="text-align:center">

<script type="text/javascript">
$(function(){
	
	var cdate= new Date();
	var cdate2 = ('0' + cdate.getDate()).slice(-2)+ '-' + ('0' + (cdate.getMonth()+1)).slice(-2) + '-' +cdate.getFullYear();

	$(".request_date").val(cdate2);
	

	
	
	$(".withdraw-button").click(function(){
		$(".withdraw-button").hide();
		$(".request-form").show();
	});
	
	$(".request-cancel").click(function(){
		$(".withdraw-button").show();
		$(".request-form").hide();
		$(".withdraw-amount-error").css({"font-size":"0px"});
	});
	
	
	$(".request-submit").click(function(){
		
		var av = new Number($(".available-amount").val());
		var am = new Number($(".withdraw-amount").val());
		
		if(am == null || am == "" || am > av)
		{
			$(".withdraw-amount-error").css({"font-size":"18px"});
			return false;
		}
		else
		{
			$(".withdraw-amount-error").css({"font-size":"0px"});
			$(".withdraw-button").show();
			$(".request-form").hide();
			return true;
		}
		
	})
		
	$(".withdraw-amount").keydown(function(){
		
		var av = new Number($(".available-amount").val());
		var am = new Number($(".withdraw-amount").val());
	
		
		
		if(am > av)
			{
				$(".withdraw-amount-error").css({"font-size":"18px"});
				$(".withdraw-amount").val(av);
				return false;
			}
			
		else
			{
			  	$(".withdraw-amount-error").css({"font-size":"0px"});
				return true;
			}
	});
	
	
	
})
</script>


<style>
.withdraw-button 
{	
	background-color: rgb(7, 98, 121);
	color:white;
	outline:none;
	border:none;
	width:350px;
	height:60px;
	font-size:20px;
	border-radius:5px;
	transition:0.3s;
}
.withdraw-button:hover
{
	background-color:#109cbf;
}

.request-cancel, .request-submit
{	
	background-color: rgb(7, 98, 121);
	color:white;
	outline:none;
	border:none;
	width:250px;
	height:40px;
	font-size:20px;
	border-radius:5px;
	margin-top:20px;
	transition:0.3s;
}

.request-cancel:hover
{
background-color:#109cbf;
}
.request-submit:hover
{
	background-color:#109cbf;
}

.withdraw-amount
{
	text-align:center;
	border:none;
	outline:none;
	border-bottom:solid 2px black;
	font-size:20px;
}

.withdraw-amount::-webkit-inner-spin-button, 
.withdraw-amount::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}


@media(max-width:975px)
{
.withdraw-button 
{	
	width:250px;
}
	
}
</style>


<br>
<button class="withdraw-button" type="text">Withdraw Amount Request</button><br>

<span class="request-form" style="display:none">
<input class="available-amount hidden" value="${ramount}">

<form name="campaign_withdraw_amount" action="/destiny/campaign_withdraw_amount_request" model="CampaignWithdrawAmountModel">

	<input class="hidden" name="campaign_id" value="${cm.campaign_id}">
	<input class="hidden" name="fundraisers_id" value="${cm.fundraisers_id}">
	<input class="request_date hidden" name="request_date" type="text">
	<input name="withdraw_amount" type="number" class="withdraw-amount" placeholder="Withdraw Amount" min="0" max="${amount}"><br><br>

	<div class="withdraw-amount-error" style="font-size:0px; color:red; transition:0.3s;">Withdraw Amount Should Be Less Or Equal Than Available Amount</div>

	<button class="request-cancel" type="button">Cancel</button> 
	<button class="request-submit" >Submit</button><br><br>

</form>	

</span>



</div>





<hr style="border:solid 0.5px grey">
<span style="float:right; font-weight: bold; font-size: 15px; text-align: justify" >
*Due to the wire and remittance fees charged by various banks and remittance partners, a US $ 40 wire fee will be charged on every international transfer made to you.
This fee will be automatically deducted from the money raised on your fundraiser.

<br><br>

</span>
</div>
</div>
</div>
</div>

<br><br>

<div class="col-md-6">

<style>
.bank-icon
{
    width:60%;
    height: 350px;
    border-radius: 1000px;
}


.ac-form
{
    text-align: left
}
.text-field1
{
    border:none;
    outline: none;
    width: 100%;
    border-bottom: solid 1px rgb(0, 0, 0);
    padding-top: 30px;
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 5px;
}
.add-bank-account
{
    display: none;
}

.company-account
{
    display: none;
}

@media(max-width:976px)
{
.bank-icon
{
    width:200px;
    height: 200px;
    border-radius: 1000px;
}   
}
</style>

<script>
$(function hide_show(){

    $(".add-account-button").click(function(){
    $(".add-bank-account").show();
    $(".show-hide-image").hide();
    });

    $(".cancel-personal, .cancel-company").click(function(){
    $(".add-bank-account").hide();
    $(".show-hide-image").show();
    });

    $(".personal-button").click(function(){
    $(".personal-button").css({"background-color":"rgba(28, 196, 238, 0.212)", "color":"black"});
    $(".company-button").css({"background-color":"white", "color":"black"});

    $(".personal-account").show();
    $(".company-account").hide();
    });

    $(".company-button").click(function(){
    $(".company-button").css({"background-color":"rgba(28, 196, 238, 0.212)", "color":"black"});
    $(".personal-button").css({"background-color":"white", "color":"black"});
            
    $(".company-account").show();
    $(".personal-account").hide();
    });



})

</script>

<c:if test="${fn:length(data4) == 0}">

<div class="ov-section3">
<div class="container-fluid" style="text-align: center">
<br>
<p  style="font-size: 25px; color:rgb(41, 41, 41)">Bank Account</p>
<hr>

<div class="show-hide-image">

<img src="/destiny/files/dashboard-admin-images/bank1.jpg" class="bank-icon">
<br>
<br>

<button class="button2 add-account-button">add account</button>
<br><br><br>
</div>
 
<div class="add-bank-account">

<div class="set1-fix">
        <button class="button1 personal-button" style="width:130px; background-color: rgba(28, 196, 238, 0.212); ">Personal</button>    
        <button class="button1 company-button" style="width:130px">Company</button>    
</div>
<br><br>


<!--Personal account start-->

<div class="personal-account">
<div class="container-fluid">

<form name="personal-account-form">    


<p style="background-color: rgba(4, 123, 139, 0.082); border-radius: 10px; padding: 10px;"><br>
        For medical fundraisers, we prefer to disburse funds to the hospital only. Funds will be disbursed to personal accounts only after a thorough check and consideration by the Impact Guru team and the final decision to disburse the amount will be subject to Impact Guru’s discretion.
        <br><br>
</p>
<div class="ac-form">

<input class="text-field1 account_holder_name" type="text" name="account_holder_name" placeholder="Account Holder Name*" required><br>
<input class="text-field1 account_number" type="text" name="account_number" placeholder="Account Number*" required><br>
<input class="text-field1 account_ifsc" type="text" name="account_ifsc" placeholder="IFSC Code*" required><br>
<input class="text-field1 account_swift" type="text" name="account_swift" placeholder="SWIFT Code"><br>
<input class="text-field1 account_bank_name" type="text" name="account_bank_name" placeholder="Bank Name*" required><br>

<div class="upload-button">

<script>
$(function upload(){

//pan card

$(".upload-pan-s").click(function(){
    $(".upload-pan-h").click(); 
});

$(".upload-pan-h").change(function(){
    var pan=$(".upload-pan-h").val(); 
    var pan_no = pan.replace(/^.*\\/, "");
    $(".pan-details").html(pan_no);
});



//aadhar card

$(".upload-aadhar-s").click(function(){
    $(".upload-aadhar-h").click(); 
});

$(".upload-aadhar-h").change(function(){
    var aadhar=$(".upload-aadhar-h").val(); 
    var aadhar_no = aadhar.replace(/^.*\\/, "");
    $(".aadhar-details").html(aadhar_no);
});



//cheque card

$(".upload-cheque-s").click(function(){
    $(".upload-cheque-h").click(); 
});

$(".upload-cheque-h").change(function(){
    var cheque=$(".upload-cheque-h").val(); 
    var cheque_no = cheque.replace(/^.*\\/, "");
    $(".cheque-details").html(cheque_no);
});




//submit personal form

$(".submit-personal").click(function(){

var pa=$(".upload-aadhar-h").val(); 
var pb=$(".upload-pan-h").val(); 
var pc=$(".upload-cheque-h").val(); 

if(pa =="" || pb =="" || pc =="")
{
$(".alert-message").html("Please Upload All Necessary Documents");
return false;
}

else
{
$(".alert-message").html("");
$(".submit-personal-ajax-button").click();
return true;
}

});

});

</script>



<div class="hide-button"  style="display: none">

<input class="upload-pan-h" type="file" name="pan_number">
<input class="upload-aadhar-h" type="file" name="aadhar_number">
<input class="upload-cheque-h" type="file" name="cheque_number">

</div>
<br>
<br>

<div class="col-md-12 show-button">

<div class="col-md-6" style="text-align: center; overflow: hidden;">
        <button class="button2 upload-pan-s" type="button" style="background-color: rgb(241, 90, 31); font-size: 17px;"><i class="fa fa-upload"></i> | pan card</button>
        <br>
        <div class="pan-details"></div>
<br></div>

<div class="col-md-6" style="text-align: center; overflow: hidden;">
<button class="button2 upload-aadhar-s" type="button" style="background-color: rgb(241, 90, 31); font-size: 17px;"><i class="fa fa-upload"></i> | aadhar card</button>
<div class="aadhar-details"></div>
<br></div>
<br>
<div class="col-md-12" style="text-align: center; overflow: hidden;">
<button class="button2 upload-cheque-s" type="button" style="background-color: rgb(241, 90, 31); font-size: 17px;"><i class="fa fa-upload"></i> | cancel cheque</button>
<div class="cheque-details"></div>
<br>
<div class="alert-message" style="color:rgba(175, 29, 29, 0.884);"></div>
<br>
</div>
</div>



</div>

</div>
<button class="submit-personal-ajax-button hidden" type="button"></button>
<button class="button2 submit-personal" type="button">Next</button><br><br>
<button class="button2 cancel-personal" type="button">Cancel</button>
</form>

</div>
</div>

<!--Personal account end-->
   



<!--company account start-->

<div class="company-account">
<div class="container-fluid">

<form name="company-account-form">    

<div class="ac-form">

<input class="text-field1 company_account_holder_name" type="text" name="company_account_holder_name" placeholder="Account Holder Name*" required><br>
<input class="text-field1 company_account_number" type="text" name="company_account_number" placeholder="Account Number*" required><br>
<input class="text-field1 company_account_ifsc" type="text" name="company_account_ifsc" placeholder="IFSC Code*" required><br>
<input class="text-field1 company_account_swift" type="text" name="company_account_swift" placeholder="SWIFT Code"><br>
<input class="text-field1 company_account_bank_name" type="text" name="company_account_bank_name" placeholder="Bank Name*" required><br>

<div class="upload-button">

<script>
$(function upload(){

	
//pan card

$(".upload-pan-sc").click(function(){
    $(".upload-pan-hc").click(); 
});

$(".upload-pan-hc").change(function(){
	var panc=$(".upload-pan-hc").val(); 
	var panc_no = panc.replace(/^.*\\/, "");
    $(".pan-detailsc").html(panc_no);
});



//aadhar card

$(".upload-doc-sc").click(function(){
    $(".upload-doc-hc").click(); 
});

$(".upload-doc-hc").change(function(){
    var doc=$(".upload-doc-hc").val(); 
    var doc_no = doc.replace(/^.*\\/, "");
    $(".doc-detailsc").html(doc_no);
});



//cheque card

$(".upload-cheque-sc").click(function(){
    $(".upload-cheque-hc").click(); 
});

$(".upload-cheque-hc").change(function(){
    var chequec=$(".upload-cheque-hc").val(); 
    var chequec_no = chequec.replace(/^.*\\/, "");
    $(".cheque-detailsc").html(chequec_no);
});


//submit company form

$(".submit-company").click(function(){
	var ca=$(".upload-doc-hc").val(); 
    var cb=$(".upload-pan-hc").val(); 
    var cc=$(".upload-cheque-hc").val(); 

if(ca =="" || cb =="" || cc =="")
{
    $(".alert-message").html("Please Upload All Necessary Documents");
    return false;
}

else
{
    $(".alert-message").html("");
    $(".submit-company-ajax-button").click();
    return true;
}

});



})

</script>


<div class="hide-button"  style="display: none">

<input class="upload-pan-hc" type="file" name="pan_number">
<input class="upload-doc-hc" type="file" name="doc_number">
<input class="upload-cheque-hc" type="file" name="cheque_number">

</div>
<br>
<br>

<div class="col-md-12 show-button">

<div class="col-md-6" style="text-align: center; overflow: hidden;">
        <button class="button2 upload-pan-sc" type="button" style="background-color: rgb(241, 90, 31); font-size: 17px;"><i class="fa fa-upload"></i> | pan card</button>
        <br>
        <div class="pan-detailsc"></div>
<br></div>

<div class="col-md-6" style="text-align: center; overflow: hidden; ">
<button class="button2 upload-doc-sc" type="button" style="background-color: rgb(241, 90, 31); font-size: 17px;"><i class="fa fa-upload"></i> | extra doc</button>
<div class="doc-detailsc"></div>
<br></div>
<div class="col-md-12" style="text-align: center; overflow: hidden;">
<button class="button2 upload-cheque-sc" type="button" style="background-color: rgb(241, 90, 31); font-size: 17px;"><i class="fa fa-upload"></i> | cancel cheque</button>
<div class="cheque-detailsc"></div>
<br>
<div class="alert-message" style="color:rgba(175, 29, 29, 0.884);"></div>
<br>
</div>
</div>




</div>



</div>
<button class="submit-company-ajax-button hidden" type="button"></button>
<button class="button2 submit-company" type="button">Next</button><br><br>
<button class="button2 cancel-company" type="button">Cancel</button>
</form>

</div>
</div>

<!--company account end-->
   
</div>

</div>
</div>

</c:if>





<c:if test="${fn:length(data4) != 0}">
<c:forEach var="cam" items="${data4}">


<div class="cd-section5" style="background-color: white; border-radius: 10px; font-size: 18px; padding: 10px;">
<div class="container-fluid" style="text-transform: capitalize;">
<br>
        <div><p  style="font-size: 25px; color:rgb(41, 41, 41)">Bank Account Details</p></div>
        <hr>

Account Number : <b> ${cam.account_number}</b>
<br>
Account Holder Name : <b> ${cam.account_holder_name}</b>
<br>
Account Type : <b> ${cam.account_type}</b>
<br>
IFSC Code : <b> ${cam.account_ifsc}</b>
<br>
SWIFT Code : <b> ${cam.account_swift}</b>
<br>
Bank Name: <b> ${cam.account_bank_name}</b>
<br><br>
PAN IMAGE: <br><img style="width:100%; height:300px" src="${cam.pan_image}">
<br><br>
CANCEL CHEQUE IMAGE: <br> <img style="width:100%; height:300px" src="${cam.cancel_cheque_image}">
<br><br>
EXTRA DOC IMAGE : <br> <img style="width:100%; height:300px" src="${cam.doc_files}">
<br>

<br><br>



</div>
</div>

</c:forEach>
</c:if>



<br><br>

</div>


<div class="col-md-6">
<div class="ov-section3">

<c:if test="${fn:length(data5) == 0}">
	<div class="container-fluid" style="text-align: center">
	<br>
	<p  style="font-size: 20px; color:rgb(41, 41, 41)">Past Withdrawal Requests</p>
	<hr>
	<p style="font-size: 25px">You haven't made any withdrawal requests yet</p>
	<br>
	</div>
</c:if>

<c:if test="${fn:length(data5) != 0}">
	<div class="container-fluid" style="text-align: center">
	<br>
	<p  style="font-size: 20px; color:rgb(41, 41, 41)">Past Withdrawal Requests</p>
	<hr>
	<style>
	@media(max-width:975px)
	{
	.withdraw-table
	{overflow:scroll}
	}
	</style>
	<div class="withdraw-table" style="width:100%;">
	<table style="width:100%"> 
		<th style="width:30%">DATE</th>
		<th style="width:30%">AMOUNT</th>
		<th style="width:40%;">STATUS</th>
		  
		<c:forEach var="cwa" items="${data5}"> 
	
			<tr>
				<td>${cwa.request_date}</td>
				<td>&#8377; ${cwa.withdraw_amount}</td>
				<td>
					<c:if test="${cwa.withdraw_status == 0}">
						<button type="button" class="un-verified-button">UNAPPROVED <i class="fa fa-times-circle"></i></button>
					</c:if>
					<c:if test="${cwa.withdraw_status == 1}">
						<button type="button" class="verified-button">APPROVED <i class="fa fa-check-circle"></i></button>
					</c:if>
				</td>
			</tr>
				
		</c:forEach>
	</table>
		
		
	</div>
	
	</div>
</c:if>

</div>
</div>
</div>
</div>

<br><br>
<br><br>


<!--Footer Start-->

    <div class="footer_import">
    <jsp:include page="user-footer.jsp" />
    </div>
    

<!--Footer End-->




        
</body>

</c:forEach>
</c:forEach>
</html>