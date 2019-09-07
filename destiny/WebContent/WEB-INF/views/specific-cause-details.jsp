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

</head>

<c:forEach var="fm" items="${data3}">
<c:forEach var="cm" items="${data4}" >
 
<body style="font-family: algerrian sans-serif;  background-color: rgba(182, 184, 184, 0.11);">

       
<!--Header Start-->

    <div class="header_import">
    <jsp:include page="header.jsp" />
     </div> 
    
<!--Header End-->

<style>
  

.amount-text
{
    padding: 20px;
    padding-left: 40px;
    padding-right: 40px;
    background-color: rgb(9, 127, 173);
    color: white;
    outline: none;
    font-size: 20px;
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
    padding: 20px;
    outline: none;
    font-size: 12px;

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
    padding-top: 100px;
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
    
        <div class="cause_title">${cm.fundraisers_title}</div>

        <br><br>
        <div class="col-md-6">
        <span class="t-amount amount-text">Goal &#8377; <span class="goal-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">${cm.fundraisers_goal_amount}</span> </span>
        <span class="r-amount amount-text">Achieved  &#8377; <span class="achieved-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">
        <c:set var="ramount" value="${fn:substringBefore(cm.fundraisers_raised_amount, '.')}"/>
			${ramount}
        </span></span>
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
        <div class="col-md-4">
        <span class="p-amount amount-text">GOAL <span class="ach-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span> </span>
        <span class="d-amount amount-text">DONOR <span style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">${cm.fundraisers_donor_list}</span> </span>
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
<img class="img-icon" src="${fm.personal_profile_image}"></p>
<br><br>
<c:if test="${fm.personal_status eq 1}">
	<button type="button" class="verified-button varifies-personal">VERIFIED <i class="fa fa-check-circle"></i></button>
</c:if>	
<c:if test="${fm.personal_status eq 0}">
	<button type="button" class="verified-button unvarified">UNVERIFIED <i class="fa fa-times-circle"></i></button>
</c:if>

<p class="tips-text" style="text-transform: capitalize;"><i class="fa fa-user"style="width:15px;" ></i> &nbsp; ${fm.personal_name}</p>
<p class="tips-text" style="text-transform: capitalize;"><i class="fa fa-vcard" style="font-size:15px; width:15px;"></i> &nbsp; ${fm.category_type}</p>
<p class="tips-text">
<i class="fa fa-map-marker" style="width:15px; text-transform: capitalize;"></i> &nbsp; ${fm.personal_city}</p>
</div>

<br>

<div class="camp-details" style="line-height: 15px; background-color: rgb(21, 160, 214); padding: 15px; border-radius: 5px">
<br>
<p class="cb-details">Beneficiary Details
<img class="img-icon" src="${cm.fundraisers_profile_image}"></p>
<br><br>

<c:if test="${cm.fundraisers_status eq 1}">
	<button type="button" class="verified-button varifies-personal">VERIFIED <i class="fa fa-check-circle"></i></button>
</c:if>	
<c:if test="${cm.fundraisers_status eq 0}">
	<button type="button" class="verified-button unvarified">UNVERIFIED <i class="fa fa-times-circle"></i></button>
</c:if>

<p class="tips-text" style="text-transform: capitalize;"> <i class="fa fa-user" style="width:30px;"></i> ${cm.fundraisers_name} </p>
<p class="tips-text" style="text-transform: capitalize;"> <i class="fa fa-phone" style="width:30px;"></i> ${cm.fundraisers_contact} </p>
<p class="tips-text"> <i class="fa fa-envelope" style="width:30px;"></i> ${cm.fundraisers_email} </p>

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
    <p style="font-size: 15px; text-align: justify;">
            
            ${cm.fundraisers_story}
            
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
    margin-top: 10px;
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

.document-details img
{
    margin-top: 10px;
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



<!--Footer Start-->

    <div class="footer_import">
    <jsp:include page="footer.jsp" />
     </div>
  

<!--Footer End-->


<script>
$(function transfer_id(){
	$(".ourcausebtn1").click(function(){
    var id = (this).value;
	//alert(id);
	$(".c_id").html(id);
	$(".cid").val(id);
  });
})
</script> 


<!--Donate popup Start-->

    <script>
    $(function(){
        $(".donate-popup").click(function(){
            $(".close-button-main").click();
        })
    })
    </script>
    
    <span data-toggle="modal" class="close-button-main" data-target="#myModal"></span>
          
    
    <div class="donate-import">
     <jsp:include page="donate.jsp" />
    </div>

<!--Donate Pop End-->    


</body>
</c:forEach>    
</c:forEach>
</html>