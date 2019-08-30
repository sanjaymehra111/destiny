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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    
    
  
      

</head>


<title> Destiny World</title>

<c:forEach var="ad" items="${data1}">

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
    margin-top: 2px;
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
<div class="col-md-4">
<div class="pr-section1">
<div class="container-fluid">

<div class="section1-data1" style="display: block; text-align:center">
<br><br>

<div class="col-md-12 text-center1 fix-details" style="display: block; text-align:center">
<div class="col-md-12">
<span class="section1-image"><img class="u-o-image" src="/destiny/files/dashboard-admin-images/admin.png" style="width:150px; height: 150px; border-radius: 100px; overflow: hidden;"></span><br>
<br>
</div>
<div class="col-md-12 top-bar-content">
<span >Name: <br><span class="fatch-data u-o-email">${ad.admin_name}</span></span><br>
<br>
</div>
<div class="col-md-12 top-bar-content">
<span class="section1-contact">Email: <br><span class="fatch-data u-o-contact">${ad.admin_id}</span></span>
<br>
<br>
</div>
</div>

<%--
<div class="col-md-12 text-center1 change-details">
<div class="col-md-4">
<span >ID: <br> <span class="fatch-data u-o-name">${ad.a_id}</span></span><br><br>
<span >Email: <br> <span class="fatch-data u-o-name">${ad.admin_id}</span></span><br><br>

<span >Name: <br> <span class="fatch-data u-o-name">Rajan</span></span><br><br>
<span >City Of Residence: <br><span class="fatch-data u-o-address">Delhi, India</span></span><br><br>
</div>
<div class="col-md-4">    
<span >PAN No. : <br><span class="fatch-data">ACGPM4585T</span></span><br><br>
<span >Aadhar No. : <br> <span class="fatch-data">3545-2554-7758</span></span><br><br>
</div>
<div class="col-md-4">    
<span >Date Of Birth: <br><span class="fatch-data u-o-dob">04-05-2018</span></span><br><br>

<div class="all-button">

<div class="hide-button1" style="display: block">
<button class="edit-button1 button1">Edit</button>
</div>
</div>

<br><br><br>
</div>
</div> --%>

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

        //$(".u-n-image").attr("src", "..//destiny/files/dashboard-admin-images/"+img_src1);

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

<span class="edit-icon1"><img src="/destiny/files/dashboard-admin-images/camera1.png" class="edit-icon2">
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
<div class="col-md-4">
<span>Name <br> <span class="fatch-data">
    <input type="text" name="new_user_name" class="new_details u-n-name">
</span></span><br><br>
</div>

<div class="col-md-4">
<span >City Of Residence: <br><span class="fatch-data">
        <input type="text" name="new_user_address" class="new_details u-n-address">
</span></span><br><br>
</div>
<div class="col-md-4">    
<span >Date Of Birth: <br><span class="fatch-data">
        <input type="text" onfocus="this.type='date'" name="new_user_dob" class="new_details date-hide u-n-dob">
</span></span><br><br>
</div>

<div class="col-md-3"></div>
<div class="col-md-6">    
<div class="all-button">
    <span class="hide-error">Please Fill All Necessary Details</span>
<div class="hide-button2" style="display: block">
<button type="button" class="cancel-button1 button1">Cancel</button>
<button class="save-button1 button1">Save</button>
</div>

</div>

<br><br><br>
</div>
</div>

</form>

</div>

</div>
</div>
<br><br>
</div>

<div class="col-md-8">
<div class="pr-section2">
    
<div class="container-fluid">
<div class="section2-data1">
<br>
<p style="text-align: center; color:rgb(19, 61, 109); font-size: 30px;">
        ALL DETAILS
</p>
<br>
</div>

<div class="deta-process" >



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
.fund, .batch, .link, .center
{
    text-align: center;
}

.show-details::-webkit-scrollbar {
  width: 0px;
  height: 7px;
  border-radius: 100px;
  transition: 0.3s;
}

.show-details::-webkit-scrollbar-track {
  background: rgb(228, 228, 228); 
}
 
.show-details::-webkit-scrollbar-thumb {
  background: rgb(14, 132, 179); 
}

.show-details::-webkit-scrollbar-thumb:hover {
  background: rgb(9, 68, 92); 
}
.show-details
{
    overflow: hidden;
}

@media(max-width:975px)
{
    .show-details
    {
        overflow: scroll;
    }
}
</style>

<div class="show-details" >

<table >
    <tr>
    <th class="center">NAME</th>
    <th class="center">BATCH</th>
    <th class="center">VIEW</th>
    </tr>

  <tr>
    <td class="fund">Fundraisers</td>
    <td class="batch">${fundraisers_qty}</td>
    <td class="link"><a href="admin-fundraisers"><img class="img-for-all view-logo" src="/destiny/files/dashboard-admin-images/view2.jpg"></a></td>
  </tr>

  <tr>
    <td class="fund">Campaign</td>
    <td class="batch">${campaigns_qty}</td>
    <td class="link"><a href="admin-campaign"><img class="img-for-all view-logo" src="/destiny/files/dashboard-admin-images/view2.jpg"></a></td>
  </tr>

  <tr>
    <td class="fund">Volunteer</td>
    <td class="batch">${volunteers_qty}</td>
    <td class="link"><a href="admin-volunteer"><img class="img-for-all view-logo" src="/destiny/files/dashboard-admin-images/view2.jpg"></a></td>
  </tr>


</table>
</div>

<br>
</div>

</div>

</div>

<br><br>
</div>

<br><br>
<div class="col-md-12">
<div class="pr-section3">
    
<div class="container-fluid">
<div class="section2-data1">
<br>
<p style="text-align: center; color:rgb(19, 61, 109); font-size: 30px;">
        HOME PAGE CONTENT
</p>
<br>
</div>

<div class="deta-process" >



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
.fund, .batch, .link, .center
{
    text-align: center;
}

.show-details::-webkit-scrollbar {
  width: 0px;
  height: 7px;
  border-radius: 100px;
  transition: 0.3s;
}

.show-details::-webkit-scrollbar-track {
  background: rgb(228, 228, 228); 
}
 
.show-details::-webkit-scrollbar-thumb {
  background: rgb(14, 132, 179); 
}

.show-details::-webkit-scrollbar-thumb:hover {
  background: rgb(9, 68, 92); 
}
.show-details
{
    overflow: hidden;
}

.home-sliders, .home-goals, .home-events, .home-blogs
{
    display: none;
}

.home-sliders.show, .home-goals.show, .home-events.show, .home-blogs.show
{
    display: block
}
.pen1,.pen2, .pen3, .pen4
{
    text-align: center;
}

.edit-pen-all
{
    font-size: 25px;
    color:gray;
    transition: 0.3s;
    cursor: pointer;
}

.edit-pen-all:hover
{
    transform: scale(1.15);
    color:rgb(13, 110, 122);
}

.home-edit-pen1.show2, .home-edit-pen2.show2,.home-edit-pen3.show2, .home-edit-pen4.show2
{
    transform: scale(1.5);
    color:rgb(9, 111, 124);
}

.all-content
{
    display: none;
}

@media(max-width:975px)
{
    .show-details
    {
        overflow: scroll;
    }
}
</style>

<script>
$(function show_hide_details(){

        
    $(".home-edit-pen1").click(function(){
        $(".all-content").show();
        $(".home-sliders").toggleClass('show');
        $(".home-edit-pen1").toggleClass('show2');
    });

    $(".home-edit-pen2").click(function(){
        $(".all-content").show();
        $(".home-goals").toggleClass('show');
        $(".home-edit-pen2").toggleClass('show2');
    });

    $(".home-edit-pen3").click(function(){
        $(".all-content").show();
        $(".home-events").toggleClass('show');
        $(".home-edit-pen3").toggleClass('show2');
    });

    $(".home-edit-pen4").click(function(){
        $(".all-content").show();
        $(".home-blogs").toggleClass('show');
        $(".home-edit-pen4").toggleClass('show2');
    });
    
})
</script>

<div class="show-details" >


    
<table >
    <tr>
    <th class="center">SLIDER</th>
    <th class="center">NEXT GOAL </th>
    <th class="center">EVENTS </th>
    <th class="center">BLOGS </th>
    </tr>

  <tr>

<td class="pen1">
        <span class="home-edit-pen1 edit-pen-all fa fa-pencil-square-o"></span>
</td>

<td class="pen2">
        <span class="home-edit-pen2 edit-pen-all fa fa-pencil-square-o"></span>
</td>

<td class="pen3">
        <span class="home-edit-pen3 edit-pen-all fa fa-pencil-square-o"></span>
</td>

<td class="pen4">
        <span class="home-edit-pen4 edit-pen-all fa fa-pencil-square-o"></span>
</td>

  </tr>

  <tr class="all-content">
<!--Slider-->

    <td class="home-slider">

            <div class="home-sliders">

        <style>
            .home-slider1-btn, .home-slider2-btn
            {
                width:0px;
                font-size: 0px;
                outline: 0px;
                border:0px;
            }  
            .slider-ft-image, .slider-bg-image
            {
                text-align: center
            }

            .bg-image,.ft-image
            {
                width:100px;
                height:100px;
            }
        </style>

        <script>
            $(function(){
                $(".bg-btn1").click(function(){
                    $(".home-slider1-btn").click()
                });
                $(".ft-btn1").click(function(){
                    $(".home-slider2-btn").click()
                });
            });
        </script>

        <script type="text/javascript">
            function readURL2(input) {
                if (input.files && input.files[0]) {
                    var reader2 = new FileReader();

                    reader2.onload = function (e) {
                        $('.bg-image').attr('src', e.target.result);
                    };

                    reader2.readAsDataURL(input.files[0]);
                }
            }

            function readURL3(input) {
                if (input.files && input.files[0]) {
                    var reader3 = new FileReader();

                    reader3.onload = function (e) {
                        $('.ft-image').attr('src', e.target.result);
                    };

                    reader3.readAsDataURL(input.files[0]);
                }
            }

        </script>
            <div class="slider-hide-button">
                <input type="file" onchange="readURL2(this);" class="home-slider1-btn" name="home-slider1"> 
                <input type="file" onchange="readURL3(this);" class="home-slider2-btn" name="home-slider2"> 
            </div>

            <div class="slider-show-button">
                <button type="button" class="button1 bg-btn1" style="width:100%">Background</button>
                <div class="slider-bg-image"><br>
                    <img src="/destiny/files/dashboard-admin-images/donor3.svg" class="bg-image">
                </div>
                <br>

                <button type="button" class="button1 ft-btn1" style="width:100%">Front</button>
                <div class="slider-ft-image"><br>
                    <img src="/destiny/files/dashboard-admin-images/donor3.svg" class="ft-image">
                </div>
                <br>
                
                <button type="submit" class="button1 slider-submit-btn" style="width:100%; background-color: rgb(8, 89, 121); color:white;">Submit</button>
            </div>
            </div>
    </td>


<!--Goal-->


     <td class="home-goal">

        <div class="home-goals" style="text-align: center;">

<style>
.goal-all
{
    border:none;
    outline: none;
    border-bottom: 2px solid black;
    text-align: center;
    font-size: 18px;
    text-transform: none;
    padding: 10px;
}    
</style>

<span class="goal1">
           <input type="text" name="gole1-title" placeholder="Title" class="goal-all goal1-title" value="new hospital">
           <input type="text" name="gole1-date" placeholder="Date"  class="goal-all goal1-date" value="1-5-2019">
</span>     
<br><br><hr>
<span class="goal2">
        <input type="text" name="gole2-title" placeholder="Title" class="goal-all goal2-title" value="new teacher">
        <input type="text" name="gole2-date" placeholder="Date" class="goal-all goal2-date" value="25-9-2020">
</span>           
<br><br><hr>
<span class="goal3">
        <input type="text" name="gole3-title" placeholder="Title" class="goal-all goal3-title" value="water wallas">
        <input type="text" name="gole3-date" placeholder="Date" class="goal-all goal3-date" value="15-5-2019">
</span>           
<br><br><hr>
<span class="goal4">
        <input type="text" name="gole4-title" placeholder="Title" class="goal-all goal4-title" value="new school">
        <input type="text" name="gole4-date" placeholder="Date" class="goal-all goal4-date" value="1-8-2022">
</span>           
<br><br><hr>

            <button type="submit" class="button1 slider-goal-btn" style="width:100%; background-color: rgb(8, 89, 121); color:white;">Submit</button>

        </div>
 
    </td>


<!--Events-->


      <td class="home-event">

        <div class="home-events" style="text-align: center;">


<span class="event1">
           <input type="text" name="event1-title" placeholder="Title" class="goal-all event1-title" value="new hospital">
           <input type="text" name="event1-description" placeholder="description"class="goal-all event1-date" value="Vivamus volutpat eros pulvinar velit laoreet, sit amet egestas erat dignissim sed quis.">
           <input type="text" name="event1-date" placeholder="Date" class="goal-all event1-date" value="1-5-2019">
           <input type="text" name="event1-time" placeholder="Time" class="goal-all event1-time" value="8:00 pm">
</span>           
<br><br><hr>

<span class="event2">
        <input type="text" name="event2-title" placeholder="Title" class="goal-all event2-title" value="new hospital">
        <input type="text" name="event2-description" placeholder="description"class="goal-all event2-date" value="Vivamus volutpat eros pulvinar velit laoreet, sit amet egestas erat dignissim sed quis.">
        <input type="text" name="event2-date" placeholder="Date" class="goal-all event2-date" value="1-5-2019">
        <input type="text" name="event2-time" placeholder="Time" class="goal-all event2-time" value="8:00 pm">
</span>           
<br><br><hr>

<span class="event3">
        <input type="text" name="event3-title" placeholder="Title" class="goal-all event3-title" value="new hospital">
        <input type="text" name="event3-description" placeholder="description"class="goal-all event3-date" value="Vivamus volutpat eros pulvinar velit laoreet, sit amet egestas erat dignissim sed quis.">
        <input type="text" name="event3-date" placeholder="Date" class="goal-all event3-date" value="1-5-2019">
        <input type="text" name="event3-time" placeholder="Time" class="goal-all event3-time" value="8:00 pm">
</span>           
<br><br><hr>

<span class="event4">
        <input type="text" name="event4-title" placeholder="Title" class="goal-all event4-title" value="new hospital">
        <input type="text" name="event4-description" placeholder="description"class="goal-all event4-date" value="Vivamus volutpat eros pulvinar velit laoreet, sit amet egestas erat dignissim sed quis.">
        <input type="text" name="event4-date" placeholder="Date" class="goal-all event4-date" value="1-5-2019">
        <input type="text" name="event4-time" placeholder="Time" class="goal-all event4-time" value="8:00 pm">
</span>           
<br><br><hr>

            <button type="submit" class="button1 slider-goal-btn" style="width:100%; background-color: rgb(8, 89, 121); color:white;">Submit</button>

        </div>
 
    </td>


<!--Blogs-->

    <td class="home-blog">

            <div class="home-blogs" style="text-align: center">

        <style>
            .home-blog-btn1,.home-blog-btn2,.home-blog-btn3

            {
                width:0px;
                font-size: 0px;
                outline: 0px;
                border:0px;
            }  

            .blog-image1,.blog-image2,.blog-image3
            {
                width:100px;
                height:100px;
            }
        </style>

        <script>
            $(function(){
                $(".blog-btn1").click(function(){
                    $(".home-blog-btn1").click()
                });

                $(".blog-btn2").click(function(){
                    $(".home-blog-btn2").click()
                });

                $(".blog-btn3").click(function(){
                    $(".home-blog-btn3").click()
                });
            });
        </script>

        <script type="text/javascript">
            function readURL4(input) {
                if (input.files && input.files[0]) {
                    var reader4 = new FileReader();

                    reader4.onload = function (e) {
                        $('.blog-image1').attr('src', e.target.result);
                    };

                    reader4.readAsDataURL(input.files[0]);
                }
            }
            function readURL5(input) {
                if (input.files && input.files[0]) {
                    var reader5 = new FileReader();

                    reader5.onload = function (e) {
                        $('.blog-image2').attr('src', e.target.result);
                    };

                    reader5.readAsDataURL(input.files[0]);
                }
            }
            function readURL6(input) {
                if (input.files && input.files[0]) {
                    var reader6 = new FileReader();

                    reader6.onload = function (e) {
                        $('.blog-image3').attr('src', e.target.result);
                    };

                    reader6.readAsDataURL(input.files[0]);
                }
            }

        </script>

        <div class="blog1">
            <div class="blog-hide-button1">
                <input type="file" onchange="readURL4(this);" class="home-blog-btn1" name="home-blog1"> 
            </div>

            <div class="blog-show-button1" style="text-align: center">
                <button type="button" class="button1 blog-btn1" style="width:100%">Image</button>
                <div class="blog-bg-image1"><br>
                    <img src="/destiny/files/dashboard-admin-images/donor3.svg" class="blog-image1">
                </div>
                <br>
            </div>

           <input type="text" name="blog1-title" placeholder="Title" class="goal-all blog1-title" value="new hospital">
           <input type="text" name="blog1-description" placeholder="Description" class="goal-all blog1-description" value="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.">
           <input type="text" name="blog1-link" placeholder="Link" class="goal-all blog1-link" value="http://led-lcd-repair.com/destiny.world/dashboard/admin/admin-dashboard.jsp">
            

</div>
<br><hr>

<div class="blog2">
        <div class="blog-hide-button21">
            <input type="file" onchange="readURL5(this);" class="home-blog-btn2" name="home-blog2"> 
        </div>

        <div class="blog-show-button2" style="text-align: center">
            <button type="button" class="button1 blog-btn2" style="width:100%">Image</button>
            <div class="blog-bg-image2"><br>
                <img src="/destiny/files/dashboard-admin-images/donor3.svg" class="blog-image2">
            </div>
            <br>
        </div>

       <input type="text" name="blog2-title" placeholder="Title" class="goal-all blog2-title" value="new hospital">
       <input type="text" name="blog2-description" placeholder="Description" class="goal-all blog2-description" value="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.">
       <input type="text" name="blog2-link" placeholder="Link" class="goal-all blog2-link" value="http://led-lcd-repair.com/destiny.world/dashboard/admin/admin-dashboard.jsp">
        

</div>
<br><hr>

<div class="blog3">
        <div class="blog-hide-button3">
            <input type="file" onchange="readURL6(this);" class="home-blog-btn3" name="home-blog3"> 
        </div>

        <div class="blog-show-button3" style="text-align: center">
            <button type="button" class="button1 blog-btn3" style="width:100%">Image</button>
            <div class="blog-bg-image3"><br>
                <img src="/destiny/files/dashboard-admin-images/donor3.svg" class="blog-image3">
            </div>
            <br>
        </div>

       <input type="text" name="blog3-title" placeholder="Title" class="goal-all blog3-title" value="new hospital">
       <input type="text" name="blog3-description" placeholder="Description" class="goal-all blog3-description" value="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.">
       <input type="text" name="blog3-link" placeholder="Link" class="goal-all blog3-link" value="http://led-lcd-repair.com/destiny.world/dashboard/admin/admin-dashboard.jsp">
        

</div>
<br><hr>




            <button type="submit" class="button1 blog-submit-btn" style="width:100%; background-color: rgb(8, 89, 121); color:white;">Submit</button>

            </div>
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

<div class="succ-show">
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
</div>

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
</c:forEach>
</html>