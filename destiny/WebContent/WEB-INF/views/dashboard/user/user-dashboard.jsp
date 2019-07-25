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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    
    
  
      

</head>


<title> Destiny World</title>




<c:forEach var="fm" items="${data2}" >


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

.dashboard-profile
{   
    color:white;
    border-bottom: 2px solid white;
}
.user-profile-section
{
    margin-top: 200px;
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
<div class="col-md-8">

<div class="pr-section1">
<div class="container-fluid">

<div class="section1-data1" style="display: block">
<br><br>

<div class="col-md-12 text-center1 fix-details">
<div class="col-md-4">
<span class="section1-image"><img class="u-o-image" src="/destiny/files/dashboard-user-images/donorall.png" style="width:150px; height: 150px; border-radius: 100px; overflow: hidden;"></span><br>
<br>
</div>
<div class="col-md-4 top-bar-content">
<span >Email: <br><span class="fatch-data u-o-email">${fm.personal_email}</span></span><br>
<br>
</div>
<div class="col-md-4 top-bar-content">
<span class="section1-contact">Contact: <br><span class="fatch-data u-o-contact">${fm.personal_number}</span></span>
<br>
<br>
</div>
</div>

<div class="col-md-12 text-center1 change-details">
<div class="col-md-4">
<div style="text-overflow: ellipsis; width: 90%; overflow: hidden">
<span >Name: <br> <span class="fatch-data u-o-name">${fm.personal_name}</span></span><br><br>
<span >City Of Residence: <br><span class="fatch-data u-o-address">${fm.personal_city}</span></span><br><br>
</div>
</div>
<div class="col-md-4">    
<span >PAN No. : <br><span class="fatch-data pan_data">${fm.personal_pan_no}</span></span><br><br>
<span >Aadhar No. : <br> <span class="fatch-data aadhar_data">${fm.personal_aadhar_no}</span></span><br><br>
</div>
<div class="col-md-4">    
<span >Date Of Birth: <br><span class="fatch-data u-o-dob">${fm.personal_dob}</span></span><br><br>

<div class="all-button">

<div class="hide-button1" style="display: block">
<button class="edit-button1 button1">Edit</button>
</div>
</div>

<br><br><br>
</div>
</div>


</div>

<script>
$(function get_set_data(){

$(".edit-button1").click(function(){

    $(".section1-data1-edit-mode").show();
    $(".section1-data1").hide();
    
//get data

    var o_img=$(".u-o-image").attr("src");
    var o_email=$(".u-o-email").html();
    var o_contact=$(".u-o-contact").html();
    var o_name=$(".u-o-name").html();
    var o_address=$(".u-o-address").html();
    var o_dob=$(".u-o-dob").html();
    
    //alert(o_img);

//set data

    $(".u-n-image").attr("src", o_img);
    $(".u-n-email").html(o_email);
    $(".u-n-contact").html(o_contact);
    $(".u-n-name").val(o_name);
    $(".u-n-address").val(o_address);
    $(".u-n-dob").val(o_dob);

});

//cancel data

$(".cancel-button1").click(function(){

$(".section1-data1-edit-mode").hide();
$(".section1-data1").show();
$(".hide-error").css({"font-size":"0px"});

});


//Save data

$(".save-button1").click(function(){

var n_name = $(".u-n-name").val();
var n_address = $(".u-n-address").val();
var n_dob = $(".u-n-dob").val();

//alert(n_name);
if(n_name == "" || n_address == "" || n_dob == "")
{
    $(".hide-error").css({"font-size":"15px"});
    return false;
}

else
{
    $(".section1-data1-edit-mode").hide();
    $(".section1-data1").show();
    $(".hide-error").css({"font-size":"0px"});

    $(".u-o-name").html(n_name);
    $(".u-o-address").html(n_address);
    $(".u-o-dob").html(n_dob);

    $(".show-success").click();
    
    return ture;

}

});


//image-select

$(".edit-icon2").click(function(){
    $(".file-type-1").click();
});

/*
$(".file-type-1").change(function(){
     //   var img_src=$(".file-type-1").val();
      //  var img_src1 =img_src.replace(/^.*\\/, "");
       // alert(img_src1);

        //$(".u-n-image").attr("src", "../images/"+img_src1);

})


function readURL(input) 
{
            if (input.files && input.files[0]) 
            {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.blah').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
*/


})
</script>



<script type="text/javascript">
     function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.u-n-image').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>





<div class="section1-data1-edit-mode" style="display: none">
<style>
.fix-items
{
    cursor: not-allowed;
}
.new_details
{
    text-align: center;
    width:70%;
    border:none;
    border-bottom: solid 2px black;
    outline: none;
    font-size: 18px;
    padding: 5px;
}

::-webkit-clear-button
{
    display: none; /* Hide the button */
}
.date-hide::-webkit-inner-spin-button {
    -webkit-appearance: none;
    display: none;
}

.hide-error
{
    font-size: 0px;
    font-weight: bold;
    transition: 0.3s;
    color:red;
}
.edit-icon2
{
    position: static;
    cursor: pointer;
    border:solid 2px white;
    border-radius: 100px;
    margin-left:110px;
    margin-top:-60px;
    height: 50px;
    width:50px;
}
.file-type-1
{
    font-size: 0px;
    width:0px;
}
</style>


<br><br>
<!--<form name="user-new-details" method="get">-->

<div class="col-md-12 text-center1 fix-details">


<div class="col-md-4">
<span class="section1-image"><img class="u-n-image" src="" style="width:150px; height: 150px; border-radius: 100px; overflow: hidden;"></span><br>

<span class="edit-icon1"><img src="/destiny/files/dashboard-user-images/camera1.png" class="edit-icon2">
<input type="file" name="new_user_image" onchange="readURL(this);" class="file-type-1">

</span>

<br>
</div>
<div class="col-md-4 top-bar-content">
<span class="fix-items">Email: <br><span class="fatch-data u-n-email"></span></span><br>
<br>
</div>
<div class="col-md-4 top-bar-content">
<span class="section1-contact fix-items">Contact: <br><span class="fatch-data u-n-contact"></span></span>
<br>
<br>
</div>
</div>

<div class="col-md-12 text-center1 change-details" style="text-align: center">

<form name="user_update_details" action="user_update_details" modelAttribute="user_update_model">

<input type="text" name="fundraisers_id" value="${fm.fundraisers_id}" hidden>

<div class="col-md-4">
<span>Name <br> <span class="fatch-data">
    <input type="text" name="personal_name" maxlength="30" class="new_details u-n-name">
</span></span><br><br>
</div>

<div class="col-md-4">
<span >City Of Residence: <br><span class="fatch-data">
        <input type="text" name="personal_city" maxlength="50" class="new_details u-n-address">
</span></span><br><br>
</div>
<div class="col-md-4">    
<span >Date Of Birth: <br><span class="fatch-data">
        <input type="text" onfocus="this.type='date'" name="personal_dob" class="new_details date-hide u-n-dob">
</span></span><br><br>
</div>

<div class="col-md-3"></div>
<div class="col-md-6">    
<div class="all-button">
    <span class="hide-error">Please Fill All Necessary Details</span>
<div class="hide-button2" style="display: block">
<button type="button" class="cancel-button1 button1">Cancel</button>
<button type="submit" class="save-button1 button1">Save</button>
</div>

</div>

<br><br><br>
</div>

</form>

</div>

</form>

</div>

</div>
</div>

<br><br>

<div class="pr-section2">
<div class="container-fluid">
<div class="section1-data2">
<br><br>

<div class="col-md-12 text-center1 change-details">

<div class="col-md-4">
<div class="d-made">
<div class="col-md-4">    
<i class="fa fa-credit-card cards" style="color:rgb(255, 255, 255); background-color: rgb(17, 184, 196);"></i>
</div>
<div class="col-md-8">    
<span class="d-made" style="font-size: 25px; color:black">0</span><br> Donation Made
</div>
</div><br>
</div>

<div class="col-md-4">
<div class="d-made">
<div class="col-md-4">    
<i class="fa fa-money cards" style="color:rgb(255, 255, 255); background-color: rgb(202, 46, 26);"></i>
</div>
<div class="col-md-8">    
<span class="d-amount" style="font-size: 25px; color:black">1200</span><br> Donation Amount
</div>
</div><br>
</div>

<div class="col-md-4">
<div class="d-made">
<div class="col-md-4">    
<i class="fa fa-calendar cards" style="color:rgb(255, 255, 255); background-color: rgb(119, 196, 17);"></i>
</div>
<div class="col-md-8">    
<span class="d-date" style="font-size: 25px; color:black">02-05-2019</span><br> Donation Date
<br><br><br>
</div>
</div>
</div>


</div>
</div>
</div>
</div>

<br><br>

<script>
$(function(){
	var pan = $(".pan_data").html().length;
	var aadhar = $(".aadhar_data").html().length;
	//alert(pan);
	
	if (pan > 5)
		{
			$(".pan_card_tag").hide();		
		}

	else
	{
		$(".pan_card_tag").show();
	}
	
	if (aadhar > 5)
		{
			$(".aadhar_card_tag").hide();
		}
	
	else
	{
		$(".aadhar_card_tag").show();
	}
		
	if (pan > 5 && aadhar >5)
		{
			$(".pr-section3").hide();
		}
	
	else
	{
		$(".pr-section3").show();
		
	}
	
	
	
		

})

</script>


<div class="pr-section3">
<div class="container-fluid">
<div class="section1-data3">
<br><br>

<div class="col-md-12 text-center1 change-details">

<div class="pan_card_tag">
<form name="user-pan-no" action="user_pan_update" modelAttribute="user_update_model">
<div class="col-md-8"> 
<input type="text" name="fundraisers_id" value="${fm.fundraisers_id}" hidden>
<input type="text" class="pan-number pan-aadhar-number" name="personal_pan_no" placeholder="PAN CARD NUMBER">   <br> <br>
</div>
<div class="col-md-4"> 
    <button type="submit" class="button2"> Submit</button>
</div>
</form>

</div>

<br><br>

<div class="aadhar_card_tag">
<form name="user-pan-no" action="user_aadhar_update" modelAttribute="user_update_model">
<div class="col-md-8"> 
<input type="text" name="fundraisers_id" value="${fm.fundraisers_id}" hidden>
<input type="text" class="aadhar-number pan-aadhar-number" name="personal_aadhar_no" placeholder="AADHAR CARD NUMBER">   <br> <br>
</div>
<div class="col-md-4"> 
    <button class="button2"> Submit</button>

<br><br><br>
</div>
</form>
</div>

</div>
</div>
</div>
</div>

<br><br>

<div class="pr-section4">
<div class="container-fluid">
<div class="section1-data4">
<br><br>

<div class="col-md-12 text-center1 change-details">
<p class="connect-text"><i class="fa fa-globe" style="color:rgb(12, 86, 136)"></i> CONNECT WITH</p><br>
<div class="col-md-6">
    <button class="fb-button"><i class="fa fa-facebook-official"></i> &nbsp; FACEBOOK</button>
    <br><br>
</div>

<div class="col-md-6">
        <button class="in-button"><i class="fa fa-linkedin"></i> &nbsp; LINKEDIN</button>
<br><br><br>
</div>

</div>
</div>
</div>
</div>
<br><br>
</div>

<div class="col-md-4">
<div class="pr-section5">
    
<div class="container-fluid">
<div class="section2-data1">
<br><br>

<div class="progressbar" style="border-bottom: solid 2px rgba(0, 0, 0, 0.363)">
<script>
$(function(){
    var pg_ps =$(".progress-bar1").width() / $('.progress-bar1').parent().width() * 100;
    //alert(a);
    var pg_ps2=Math.round(pg_ps);
    $(".progressbar-percent").html(pg_ps2 + '%');
})
</script>
<div class="progress" style=" width:80%; height: 12px;">
    <div class="progress-bar1 progress-bar progress-bar-success progress-bar-striped active" aria-valuemax="100" style="width:12%">
        </div>
</div>
<span class="progressbar-percent" style="font-weight: bold; color:rgb(0, 0, 0); font-size: 20px; margin-top: -42px; right: 7%; position: absolute;">10</span>
</div>

<div class="heading" style="border-bottom: solid 2px rgba(0, 0, 0, 0.363)">
<br>
<p style="text-align: center; color:black; font-weight: bold;">
        YOUR PROFILE STRENGTH: AVERAGE
</p>
</div>

<div class="deta-process" >
<br>



<style>
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

</style>


<table>
  <tr>
    <td style="font-size: 18px;">Verify phone number</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 ph1" ></i>
    <i class="fa fa-check-circle circle-1-2 ph1"></i>
    </td>
  </tr>

   <tr>
    <td style="font-size: 18px;">Add city location</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 c1"></i>
    <i class="fa fa-check-circle circle-1-2 c2"></i>
    </td>
  </tr>

   <tr>
    <td style="font-size: 18px;">Verify Email ID</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 e1"></i>
    <i class="fa fa-check-circle circle-1-2 e2"></i>
    </td>
  </tr>

   <tr>
    <td style="font-size: 18px;">Link Facebook Profile</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 f1"></i>
    <i class="fa fa-check-circle circle-1-2 f2"></i>
    </td>
  </tr>


    <tr>
    <td style="font-size: 18px;">Link Linkedin Profile</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 l1"></i>
    <i class="fa fa-check-circle circle-1-2 l2"></i>
    </td>
  </tr>

   <tr>
    <td style="font-size: 18px;">Add profile pic</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 pr1"></i>
    <i class="fa fa-check-circle circle-1-2 pr2"></i>
    </td>
  </tr>


    <tr>
    <td style="font-size: 18px;">Add PAN card number</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 pn1"></i>
    <i class="fa fa-check-circle circle-1-2 pn2"></i>
    </td>
  </tr>

   <tr>
    <td style="font-size: 18px;">Add Aadhaar card number</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 ad1"></i>
    <i class="fa fa-check-circle circle-1-2 ad2"></i>
    </td>
  </tr>

     <tr>
    <td style="font-size: 18px;">Add date of birth</td>
    <td style="width:20%; text-align: center">
    <i class="fa fa-circle-thin circle-1 dob1"></i>
    <i class="fa fa-check-circle circle-1-2 dob2"></i>
    </td>
  </tr>


</table>
<br>
</div>


</div>
</div>
</div>
</div>

</div>


</div>
<div class="col-md-12"></div>
<script>

$(function(){

$(".show-success").click(function(){
$(".fun-step1").toggleClass('add');
});

$(".submit-function").click(function(){
$(".show-success").click();

});

});
</script>




<button class="show-success" style="display: none">show</button>

<div class="submit-function">
<div class="fun-step1">
Successfully Update    
<span class="fa fa-close success-close"></span>    
</div>
</div>



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
</c:forEach>

serssion id = ${sessionScope.s_id}


</html>