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
    
    <!--For slick bar-->         
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css">

    <!--Textarea-->
    <script src="https://cdn.ckeditor.com/4.11.1/basic/ckeditor.js"></script>
 
<script>
$(function ajax_form_data(){

$(".ajax-submit-campaign-details").click(function()
{

	var url1 = "/destiny/edit_campaign_details";
	var data = new FormData();

 	data.append("campaign_id", $(".campaign_id").html());
    data.append("fundraisers_id", $(".fundraisers_id").html());
    data.append("fundraisers_title", $(".edit-heading-main2").val());
    data.append("fundraisers_goal_amount", $(".goal-amount-old").val());
    data.append("fundraisers_story", CKEDITOR.instances['story_edit'].getData());
    /* data.append("fundraisers_name", $(".fn-old").val());
    data.append("fundraisers_contact", $(".fc-old").val());
    data.append("fundraisers_email", $(".fe-old").val());
    data.append("fundraisers_upi_number", $(".upi-text").val());
 */
	 	$.ajax({

		 	url:url1,
		 	data: data,
	 		enctype: 'multipart/form-data',
		 	processData: false,
		 	contentType: false,
	 	  	type: 'Post',    
		 	cache: false,
		 	success : function(){alert("Update Success")},
		 	error : function(){alert("Error Found")}

});//ajax close 
}); // button closed


//beneficiary details
$(".ajax-submit-beneficiary-details").click(function()
		{
			var data2 = new FormData();
			var fpl = $(".new_icon2").attr('src').length;
			if(fpl > 1000)
				var url2 = "/destiny/edit_campaign_fundraisers_profile";
			else
				var url2 = "/destiny/edit_campaign_fundraisers";
			
			data2.append("campaign_id", $(".campaign_id").html());
		    data2.append("fundraisers_id", $(".fundraisers_id").html());
		   	data2.append("fundraisers_name", $(".fn-old").val());
		    data2.append("fundraisers_contact", $(".fc-old").val());
		    data2.append("fundraisers_email", $(".fe-old").val());
		    data2.append("profile_image", $(".fundraisers_profile")[0].files[0]);
		 
		    $.ajax({
				 	url:url2,
				 	data: data2,
			 		enctype: 'multipart/form-data',
				 	processData: false,
				 	contentType: false,
			 	  	type: 'Post',    
				 	cache: false,
				 	success : function(){alert("Update Success")},
				 	error : function(){alert("Error Found")}

		});//ajax close 
		}); // button closed

		
		
//upi details

$(".ajax-submit-upi-details").click(function()
		{

			var data3 = new FormData();
			var upi_imgl = $(".upi-main-file").attr('src').length;
			if(upi_imgl  > 1000)
				var url3 = "/destiny/edit_campaign_upi_image";
			else
				var url3 = "/destiny/edit_campaign_upi_no";
			
			data3.append("campaign_id", $(".campaign_id").html());
		    data3.append("fundraisers_id", $(".fundraisers_id").html());
		    data3.append("fundraisers_upi_number", $(".upi-text").val());
		    data3.append("upi_image", $(".upi-image-file")[0].files[0]);
		 
		    $.ajax({
				 	url:url3,
				 	data: data3,
			 		enctype: 'multipart/form-data',
				 	processData: false,
				 	contentType: false,
			 	  	type: 'Post',    
				 	cache: false,
				 	success : function(){alert("Update Success")},
				 	error : function(){alert("Error Found")}

		});//ajax close 
		}); // button closed

		
}); //ajax_form_data close



$(function transfer_id(){
	$(".ourcausebtn1").click(function(){
    var id = (this).value;
	//alert(id);
	$(".c_id").html(id);
	$(".cid").val(id);
  });
})


</script>



</head>

<button class="ajax-submit-campaign-details hidden"></button>
<button class="ajax-submit-beneficiary-details hidden"></button>
<button class="ajax-submit-upi-details hidden"></button>

<c:forEach var="fm" items="${data1}">
<c:forEach var="cm" items="${data2}" >
 
<body style="font-family: algerrian sans-serif;  background-color: rgba(182, 184, 184, 0.11);">

<div class="id's hidden">
<div class="campaign_id">${cm.campaign_id}</div>
<div class="fundraisers_id">${fm.fundraisers_id}</div>
</div>
<form name="edit_campaign">
       
<!--Header Start-->

    <div class="header_import">
    <jsp:include page="user-header.jsp" />
    </div>
    
<!--Header End-->

<style>
  
.textfield-bg
{
border:none;
outline:none;
background-color:transparent;
text-align:center;
}
.amount-text
{
    padding: 20px;
    padding-left: 28px;
    padding-right: 28px;
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
    padding-left: 14px;
    padding-right: 14px;
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

.edit-pencil
{
    font-size: 30px;
    color:rgb(255, 255, 255);
    cursor: pointer;
}

.edit-pencil:hover
{
    color:rgb(21, 214, 198);
    
}

@media(max-width:975px)
{

    .cause_title
{
    font-size: 30px;
}  

}

</style>


<div class="cause-details-section">
<style>
    
.edit-heading
{
 border:solid 2px white;
 background-color: transparent;
 color:white;
 padding: 5px;
 font-size: 30px;
 width:60%;
 }

 .edit-submit1-btn, .edit-cancel1-btn
 {
     font-size: 40px;
     color:rgb(255, 255, 255);
     background-color: transparent;
     border: none;
     outline: none;
 }

 .edit-submit1-btn:hover, .edit-cancel1-btn:hover
 {
    color:rgb(21, 214, 198);
 }
</style>

<div class="cd-section2">    
<div style="background-color:rgb(11, 108, 133); padding-top: 50px; padding-bottom: 25px;">
<div class="container-fluid">
    <div class="cause_amount">
    
        <div class="cause_title">
            
          <div class="edit-heading-main1"  style="display: block; width:100%"> <input readonly type="text" style="width:100%; text-transform:uppercase" maxlength="60" class="edit-heading-main2 textfield-bg" value="${cm.fundraisers_title}">
            <span class="edit-pen1 edit-pencil fa fa-pencil-square-o"></span>
            
             <button type="button" class="edit-submit1 edit-submit1-btn  fa fa-check-circle" style="display:none"></button>
             <button type="button" class="edit-cancel1 edit-cancel1-btn fa fa-times-circle" style="display:none"></button>
            
        </div>

        
          <!--Editing Heading Start-->

<script>
$(function(){
    $(".edit-pen1").click(function(){
        var head=$(".edit-heading-main2").removeAttr('readonly');
        $(".edit-pen1").hide();
        $(".edit-submit1").show();
        $(".edit-cancel1").show();
        $(".edit-heading-main2").css({"border":"solid 2px white"});
    });

    $(".edit-cancel1").click(function(){
    	$(".edit-pen1").show();
        $(".edit-submit1").hide();
        $(".edit-cancel1").hide();
        $(".edit-heading-main2").attr('readonly', 'true');
        $(".edit-heading-main2").css({"border":"none"});

    });

    $(".edit-submit1").click(function(){
        var n_head=$(".edit-heading-main2").val();
        if(n_head == "")
        {
            $(".edit-heading-main2").css({"border":"solid 2px red"});
            return false;
        }
        else
        {
        	$(".edit-heading-main2").attr('readonly', 'true');
        	$(".edit-pen1").show();
            $(".edit-submit1").hide();
            $(".edit-cancel1").hide();
            $(".edit-heading-main2").css({"border":"none"});
            $(".ajax-submit-campaign-details").click();
            return true;
        }
    });


})
</script>

          <!--Editing Heading End-->

    </div>
<br>
<br>
<style>
.goal-amount-new, .submit-2-btn
{
    display: none;
}
.new-goal1
{
    background-color: transparent;
    border:none;
    outline: none;
    color:white;
    width:100px;
}
</style>
        <div class="col-md-6">
        <div class="col-md-6">
        <span class="t-amount amount-text">Goal &#8377; 
            <span style="border-bottom: solid 2px rgb(255, 255, 255); font-weight: bold">
	            <input type="text" readonly class="goal-percent goal-amount-old textfield-bg" maxlength="8" style="width:100px; text-align:center" value="${cm.fundraisers_goal_amount}">
            </span> 

	        <span style="font-size: 20px; margin-left: 20px;" class="edit-pen2 edit-pencil fa fa-pencil-square-o"></span>
		    <button type="button" style="font-size: 20px; display:none" class="edit-submit2 edit-submit1-btn  fa fa-check-circle"></button>
	        <button type="button" style="font-size: 20px; display:none" class="edit-cancel2 edit-cancel1-btn fa fa-times-circle"></button>
             
            </span>
           <br><br><br><br>
        </div>


          <!--Editing Goal Amount End-->
<script>
$(function(){

$('.goal-amount-old').keypress(function (e) {     
  //this.value = this.value.replace(/[^1-9\.]/g,'');
  
//  $(".fc-old").keypress(function(e){

      if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) 
      {
          return false;
      }
      else
      {
          return true;
      }
});
/*Show new Goal*/
    $(".edit-pen2").click(function(){
        $(".edit-pen2").hide();
        $(".edit-submit2").show();
        $(".edit-cancel2").show();
        $(".goal-amount-old").removeAttr('readonly');
    })

/*hide new Goal*/
    $(".edit-cancel2").click(function(){
        $(".edit-pen2").show();
        $(".edit-submit2").hide();
        $(".edit-cancel2").hide();
        $(".goal-amount-old").attr('readonly', 'true');
    })

/*display new Goal*/
    $(".edit-submit2").click(function(){
       var n_goal=$(".goal-amount-old").val();
       //alert(n_goal);

       if(n_goal == "" )
        {
            return false;
        }
        else
        {
            $(".edit-pen2").show();
            $(".edit-submit2").hide();
            $(".edit-cancel2").hide();
            $(".goal-amount-old").attr('readonly', 'true');
            $(".ajax-submit-campaign-details").click();
			return true;
        }
    })


})
</script>
          <!--Editing Goal Amount  End-->

          <div class="col-md-6">
            <span class="r-amount amount-text">Raised  &#8377; <span class="achieved-percent" style="border-bottom: solid 2px rgb(255, 255, 255); font-weight: bold">${cm.fundraisers_raised_amount}</span></span>
          </div>
        <br><br><br>
        </div>
<script>
$(function()
{

    var gl= $(".goal-percent").val();
    var ac= $(".achieved-percent").html();
    var tp=ac/gl*100;
    var tp2=Math.round(tp);
    $(".ach-percent").html(tp2 +"%");



})
</script>
        <div class="col-md-4">
        <span class="p-amount amount-text">OF OUR GOAL <span class="ach-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span> </span>
        <span class="d-amount amount-text">Share <span style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">48</span> </span>
        <br><br><br>
        </div>
        <div class="col-md-2">
                <a href="#" style="text-decoration: none"  class=" donate-popup"><span class="d-button amount-text"><button type="button" value="${cm.campaign_id}" class="ourcausebtn1" style="font-weight: bold; outline:none; border:none; background-color:transparent;">Donate Now</button> </span></a>
           <br><br>
        </div>
        
    </div>
</div>
</div>
</div>

<br><br>


<style>
.add-image-icon2
{
    transform: rotate(45deg);
    transition: 0.3s;
}

.add-image-icon
{
    text-align: center;
    font-size: 150px;
    color:rgba(0, 0, 0, 0.541);
    position: relative;
    left:30%;
    top: 160px;
    z-index: 999;
    transition: 0.3s;

}
.add-image-icon:hover
{
    color:rgba(0, 0, 0, 0.753);

}
@media(max-width:975px)
{
    .add-image-icon
{
    left:38%;
    top: 160px;
 

}   
}
</style>

<span class="add-image-icon add-image-icon1 edit-pencil fa fa-plus"></span>
<span style="display: none" class="add-image-icon add-image-icon2  edit-pencil fa fa-plus"></span>

<div class="cd-section3" style="margin-top: -120px;">
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
            opacity: 0.5;
            
        }
        /*
        .slick-dots li button:before
            {
                font-size: 12px;
                color:rgb(13, 108, 121);
             
            }
        */
        
        
        
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
        
            .edit-image1
            {
                background-color: rgb(248, 232, 201);
                text-align: center;
                width:100%;
                overflow: hidden;
                transition: 0.2s;
                height: 0;
                opacity:0;
            }
            .edit-img2
            {
                border-radius: 100px;
                cursor: url("/destiny/files/dashboard-user-images/delete2.png"), default;
                width:110px; 
                height: 110px;
            }
        
            .add-images2
            {
                width:110px; 
                height: 110px;
            }
        
        
            .add-images2:hover
            {
                cursor: pointer;
                border-radius: 100px;
                transform: rotate(45deg);
                transition: 0.3s ease-in-out;        
            }
        
            .file-upload
            {
                display: none;
                font-size: 0.0px;
                width:0;
                height: 0;
            }
        </style>    
        
<script>


/*add-hide-images*/

$(function(){


$(".add-image-icon1").click(function(){
    $(".add-image-icon1").hide();
    $(".add-image-icon2").show();
    $(".user-images1").css({"height":"650"});
    $(".edit-image1").css({"height":"auto"});
    $(".edit-image1").css({"padding":"20px"});
    $(".edit-image1").css({"opacity":"1"});
    
});

$(".add-image-icon2").click(function(){
    $(".add-image-icon2").hide();
    $(".add-image-icon1").show();
    $(".user-images1").css({"height":"450"});
    $(".edit-image1").css({"height":"0px"});
    $(".edit-image1").css({"padding":"0px"});
    $(".edit-image1").css({"opacity":"0"});


});
});


/*get-set-images

$(".add-image-icon1").click(function(){

var img1=$(".user-images").html();
//var path = $('.img-path1').prop('src');
//alert(path);
//$(".uploaded-iamges").html(path);

});
*/

/*delete-images*/

$(function(){
    $(".edit-img2").click(function(){
        var img_path = $(this).prop('src');
      //  alert(img_path);
        this.remove();

    })
})


/*add-images*/

$(function(){
    $(".add-images2").click(function(){
    $(".file-upload").click()
   });

    $(".file-upload").change(function()
    {
       var file_name = $(".file-upload").val();
       // alert(file_name);
    });
})

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
    
    <img class="img-path1" src="/destiny/files/images/drintwater.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/parallax-1.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/volunteer.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/water.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/causes.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/voulnteer-d.jpg" style="width:100%; height: 400px;">

</div>
<br><br>
<div class="edit-image1">
    <span class="uploaded-iamges">
            <img src="/destiny/files/dashboard-user-images/donor3.svg" class="edit-img2">
            <img src="/destiny/files/dashboard-user-images/donor2.svg" class="edit-img2">
            <img src="/destiny/files/dashboard-user-images/donor1.svg" class="edit-img2">
            <img src="/destiny/files/dashboard-user-images/donorall.png" class="edit-img2">
    </span>
<span class="upload-iamges">
        <img src="/destiny/files/dashboard-user-images/media2.png" class="add-images2">
        <input type="file" class="file-upload" name="new_file">
</span>        
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

<style>
.edit-pen5, .edit-pen6
{
    font-size: 25px; 
    color:rgb(255, 255, 255); 
    float: right
}
.edit-pen5:hover, .edit-pen6:hover
{
    color:rgb(21, 214, 198);
}

</style>


<p class="cb-details"> Campaigner Details 
<img class="img-icon" src="${fm.personal_profile_image}"></p>
<br><br>
<span>

<c:if test="${fm.personal_status eq 1}">
	<button type="button" class="verified-button varifies-personal">VERIFIED <i class="fa fa-check-circle"></i></button>
</c:if>	
<c:if test="${fm.personal_status eq 0}">
	<button type="button" class="verified-button unvarified">UNVERIFIED <i class="fa fa-times-circle"></i></button>
</c:if>
	
</span>
<p class="tips-text"><i class="fa fa-user"style="width:15px;" ></i> &nbsp; ${fm.personal_name}</p>
<p class="tips-text"><i class="fa fa-vcard" style="font-size:15px; width:15px;"></i> &nbsp; ${fm.category_type}</p>
<p class="tips-text">
<i class="fa fa-map-marker" style="width:15px;"></i> &nbsp; ${fm.personal_city}</p>
<span style="margin-top: -25px; display: none" class="edit-pencil edit-pen5 fa fa-pencil-square-o"></span>

</div>


<div class="camp-details" style="margin-top:20px; line-height: 15px; background-color: rgb(21, 160, 214); padding: 15px; border-radius: 5px">
<br>

<style>
.old-data6
{
	margin-top:-20px;
    display:block;
}
.fn-old, .fc-old, .fe-old
{
	padding-bottom:5px;
	font-size: 18px;
    transition:0.3s;
}
.new-data6
{
    display: none;
}
.new-data6-1
{
    display: none;
}
.bn_new_image
{
    width:0;
    height: 0;
}
.cam-img1
{
    transform:scale(0);
    position: absolute;
    top: 280;
    left:85%;
    width:30px;
    height:30px;
    transition: 0.3s;
}



@media(max-width:975px)
{
    .cam-img1
{
    top: 280;
    left:82%;
 
}   
}
@media(max-width:401px)
{
    .cam-img1
{
    width:25px;
    height:25px;
    top: 270;
    left:82%;
}   
}
</style>

<script>
$(function(){
    
	  	 var name= /[^a-zA-Z\s]/g;
	     var email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	   
	 $(".fc-old").keypress(function(e){

         if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) 
         {
        	 $(".fc-old").css({"border-bottom":"solid 2px red"});
        	 
             return false;
         }
         else
         {
        	 $(".fc-old").css({"border-bottom":"solid 2px white"});
             return true;
         }
     });
	 
	 
    /*Show Edit Text*/

    $(".edit-pen6").click(function(){
    	
        $(".cam-img1").css({"cursor":"pointer", "transform":"scale(1)"});
        $(".old-all").removeAttr('readonly');
        $(".edit-pen6").hide();
        $(".new-data6-1").show();
        $(".fn-old").css({"border-bottom":"solid 2px white"});
		$(".fc-old").css({"border-bottom":"solid 2px white"});
		$(".fe-old").css({"border-bottom":"solid 2px white"});
		
    });

    /*Cancel Edit Text*/
    
    $(".edit-cancel6").click(function(){
        $(".cam-img1").css({"cursor":"default", "transform":"scale(0)"});
        $(".fn-old").css({"border-bottom":"none"});
		$(".fc-old").css({"border-bottom":"none"});
		$(".fe-old").css({"border-bottom":"none"});
		$(".old-all").attr('readonly', 'true');
		$(".edit-pen6").show();
	    $(".new-data6-1").hide();
	       
		
        //$(".old-bn-image").load(".old-bn-image");
        $(".old-bn-image").load(location.href + " .old-bn-image>*", "");
        //$(".old-bn-image").load(".old-bn-image");
    });

    /*Submit Edit Text*/

    $(".edit-submit6").click(function(){
    	
    	 var fn_new=$(".fn-old").val();
         var fc_new=$(".fc-old").val();
         var fc_newl=$(".fc-old").val().length;
         var fe_new=$(".fe-old").val();
        
           
    	if (fn_new == "" || fn_new.match(name))
    	{
    		$(".fn-old").css({"border-bottom":"solid 2px red"});
            return false;
        }
    	
   		else if (fc_newl != 10)
        {
    		$(".fn-old").css({"border-bottom":"solid 2px white"});
    		$(".fc-old").css({"border-bottom":"solid 2px red"});
    		
            return false;
        }
    	
   		else if (fe_new== "" || !fe_new.match(email))
        {
   			$(".fn-old").css({"border-bottom":"solid 2px white"});
   			$(".fc-old").css({"border-bottom":"solid 2px white"});
   			$(".fe-old").css({"border-bottom":"solid 2px red"});
            return false;
        }
    	
    	
    	else
    	{
    		$(".fn-old").css({"border-bottom":"solid 2px white"});
    		$(".fc-old").css({"border-bottom":"solid 2px white"});
    		$(".fe-old").css({"border-bottom":"solid 2px white"});
    		
    		$(".cam-img1").css({"cursor":"default",  "transform":"scale(0)"});

            
    		 $(".cam-img1").css({"cursor":"default", "transform":"scale(0)"});
    	     $(".fn-old").css({"border-bottom":"none"});
    		 $(".fc-old").css({"border-bottom":"none"});
    		 $(".fe-old").css({"border-bottom":"none"});
    		 $(".old-all").attr('readonly', 'true');
    		 $(".edit-pen6").show();
    		 $(".new-data6-1").hide();
    		   
    		 $(".ajax-submit-beneficiary-details").click();
            return true;
    	}
    	
    	
    });


    /*Change beneficiary Image*/

        $(".cam-img1").click(function(){

            var bcr=$(".cam-img1").css('cursor');
            if(bcr == 'pointer')
            {
                $(".bn_new_image").click();
                return true;
            }
            else
            {
                //alert("error");
                return false;
            }
        });

    /*Change beneficiary Image name*/

    $(".bn_new_image").change(function(){
        var bn_new_name=$(".bn_new_image").val();
        var bn_name =bn_new_name.replace(/^.*\\/, "");
      //  alert(bn_name);
    });



})
</script>


<script type="text/javascript">
    function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('.new_icon2').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }
</script>


<p class="cb-details">Beneficiary Details
<span class="edit-bn-image1">
    <img src="/destiny/files/dashboard-user-images/camera1.png" class="cam-img1">
</span>
<span class="old-bn-image">
<img class="img-icon bn-img new_icon2" src="${cm.fundraisers_profile_image}"></p>
</span>

<br><br>

<c:if test="${fm.personal_status eq 1}">
	<button type="button" class="verified-button varifies-personal">VERIFIED <i class="fa fa-check-circle"></i></button>
</c:if>	
<c:if test="${fm.personal_status eq 0}">
	<button type="button" class="verified-button unvarified">UNVERIFIED <i class="fa fa-times-circle"></i></button>
</c:if>
 
<div class="old-data6">
<p style="text-align:left"><i class="fa fa-user tips-text" style="width:5px;"></i> &nbsp; <input type="text" readonly class="tips-text fn-old old-all textfield-bg" maxlength="30" value="${cm.fundraisers_name}"></p>
<p style="text-align:left"><i class="fa fa-phone tips-text" style="width:5px;"></i> &nbsp; <input type="text" readonly class="tips-text fc-old old-all textfield-bg" maxlength="10" value="${cm.fundraisers_contact}"></p>
<p style="text-align:left"><i class="fa fa-envelope tips-text" style="width:5px;"></i> &nbsp; <input type="text" readonly class="tips-text fe-old old-all textfield-bg" maxlength="30" value="${cm.fundraisers_email}"></p>

<span class="edit-pencil edit-pen6 fa fa-pencil-square-o" style="margin-top:-20px;"></span>
</div>

<span class="new-data6-1">
<br>
<button type="button" style="font-size: 30px;" class="edit-submit6 edit-submit1-btn  fa fa-check-circle"></button>
<button type="button" style="font-size: 30px;" class="edit-cancel6 edit-cancel1-btn fa fa-times-circle"></button>
<input type="file" name="profile_image" onchange="readURL(this);" class="bn_new_image fundraisers_profile">
</span>

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

.dc
{
    font-size: 25px; 
    color:rgb(150, 150, 150)
}
.dc:hover
{
    color:rgb(21, 214, 198);
}

</style>
<br>
<center>
<button type="button" class="details-button speed-image" style="border-bottom:solid 2px rgb(150, 150, 150)">DESCRIPTION 
        
<span class="dc edit-pencil edit-pen3 fa fa-pencil-square-o"></span>

</button>
<button type="button" class="details-button eligibility-image">DOCUMENTS

    <span class="dc edit-pencil edit-pen4 fa fa-pencil-square-o"></span> 

</button>
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

    <br><br>

</div>



<div class="col-md-12" style="background-image:linear-gradient(rgb(255, 255, 255), rgba(255, 255, 255, 0.425));  background-size: 100% 100%;  border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
<div style="background-color:rgba(0, 0, 0, 0); margin-left: -15px; margin-right: -15px;">
    <br>


<!--Description Start-->
<div class="description-section" style="display: block;">

<style>
.dec-fix
{
    display: block;
}
.dec-btn 
{
    background-color: rgb(9, 61, 92);
    color:white;
    outline:none;
    border:none;
    padding: 7px;
    font-size: 15px;
    transition: 0.3s;
    width:25%;
}

.dec-btn:hover
{
    background-color: rgb(42, 128, 179);

}
.dec-new1
{
    display: none;
}


.edit-mode1
{
    color:red;
    font-size: 0px;
    transition: 0.3s;
    text-align: center;
}
</style>

<script>
$(function(){


/*For textarea Details*/
CKEDITOR.replace( 'story_edit' );


/*show edit description */

$(".edit-pen3").click(function(){
$(".dec-fix").hide();
$(".dec-new1").show();
$(".edit-pen3").css({"color":"rgb(30, 206, 191)", "transform":"scale(1.2)"});
$(".edit-mode1").css({"font-size":"17px"});
});

/*set description */

$(".dec-can").click(function(){
$(".dec-fix").show();
$(".dec-new1").hide();
$(".edit-pen3").css({"color":"rgb(143, 142, 142)", "transform":"scale(1)"});
$(".edit-mode1").css({"font-size":"0px"});
});

$(".dec-sub").click(function(){

var dec_new = CKEDITOR.instances['story_edit'].getData();
//alert(dec_new.length);

if(dec_new == "" || dec_new == null)
	return false;
else
$(".dec-fix").html(dec_new);
$(".edit-pen3").css({"color":"rgb(143, 142, 142)", "transform":"scale(1)"});
$(".edit-mode1").css({"font-size":"0px"});
$(".dec-fix").show();
$(".dec-new1").hide();
$(".ajax-submit-campaign-details").click();

});

});


</script>

<div class="edit-mode1">Edit Mode</div>
<br>

<div class="col-md-12 dec-fix" style="maxlength:1000">${cm.fundraisers_story}</div>

    
<div class="col-md-12  dec-new1">

<textarea name="description_edit" id="story_edit" class="dec-new" rows="8" style="width:100%; background-color: transparent; font-size: 18px; color:black;" placeholder="Fundraiser Story">${cm.fundraisers_story}</textarea>
<br><br>
<div style="text-align: center">
<button type="button" class="dec-btn dec-can">Cancel</button> &nbsp; &nbsp;
<button type="button" class="edit-submit5 dec-btn dec-sub">Submit</button> 
</div>
<br><br>
</div>        
    
        
        
        
        


</div>
<!--SPEED  End-->



<!--Eligibility Start-->
<div class="document-section" style="display: none">

<style>
.document-details
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

.document-details:hover
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

.upload-hide
{
    font-size: 0;
    width:0;
}

.upload-doc
{
    width:0px;
    height:0px;
    transition: 0.3s;

}

.upload-doc.edit 
{
    width:200px;
    height: 200px;
}

.zoom-image.cursor
{
    cursor: url("/destiny/files/dashboard-user-images/delete2.png"), default;
}

.edit-pen4.color
{
    color:rgb(30, 206, 191);
    transform: scale(1.2);
}

.deleted-doc
{
    color:red;
    font-size: 0px;
    transition: 0.3s;
}

.edit-mode2
{
    color:red;
    font-size: 0px;
    transition: 0.3s;
    text-align: center;
}

.edit-mode2.editmode
{
    font-size: 17px;
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
    $(".deleted-doc").css({"font-size":"0px"});


    });

    /*show edit File*/

    $(".edit-pen4").click(function(){
        //alert("asdasd");
        $(".upload-doc").toggleClass('edit');
        $(".zoom-image").toggleClass('cursor');
        $(".edit-pen4").toggleClass('color');
        $(".edit-mode2").toggleClass('editmode');

    })

    /*Delete File*/
    $(".zoom-image").click(function(){
    var a= $(this).css('cursor');

    //alert(a);
    if(a != 'pointer')
    {
        $(this).remove();
        $(".deleted-doc").css({"font-size":"20px"});
        return true;
    }
    else
    {
        return false;
    }

    })


    /*upload File*/

    $(".upload-doc").click(function(){
    $(".upload-hide").click();
    });

    $(".upload-hide").change(function(){
        var uc=$(".upload-hide").val();
       // alert(uc);
    })


})
</script>

<div class="edit-mode2">Edit Mode</div>
<br>
 <center>
<span class="old-document">   

    <img src="/destiny/files/images/document1.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document2.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document3.JPG" class="document-details zoom-image">

</span>

<span class="new-document">     
    <img src="/destiny/files/dashboard-user-images/upload-document.png" style="border:none;" class="document-details upload-doc">
    <input type="file" name="new_file" class="upload-hide">
</span>

    
<br>
<br>
<span class="deleted-doc">Recently Deleted Document <i class="fa fa-chevron-down"></i></span>
<br>
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

<div class="cd-section5" style="background-color: white; border-radius: 10px; font-size: 18px; padding: 10px; overflow: hidden;">
<div class="container-fluid">

<style>
.account-details-fix
{
    font-weight: bold;
}

.account-details-edit-1
{
    border:none;
    outline: none;
    border-bottom: 2px solid black;
    width:145px;
    padding-left: 5px;
    padding-right: 5px;
    font-size: 17px;
}
.edit-pen7
{
    cursor: pointer;
    color:rgb(76, 87, 88);
    font-size: 30px;
    transition: 0.3s;
}

.edit-pen7:hover
{
    transform: scale(1.1);
    color:rgb(21, 160, 214);
}

.edit-submit7, .edit-cancel7
{
    color:rgb(76, 87, 88);
    background-color: white;
    transition: 0.3s;
    outline: none;
    border:none;
}

.edit-submit7:hover, .edit-cancel7:hover
{
    transform: scale(1.1);
    color:rgb(21, 160, 214);
}

.new-data7, .account-details-edit
{
    display: none;
}

</style>   


<script>
$(function edit_ac_detail(){

$(".edit-pen7").click(function(){

    var ano=$(".u-bank-ac-no").html();
    var aname=$(".u-bank-ac-name").html();
    var aifsc=$(".u-bank-ac-ifsc").html();
    var aupi=$(".u-upi-no").html();

    $(".edit-ac-no").val(ano);
    $(".edit-ac-name").val(aname);
    $(".edit-ac-ifsc").val(aifsc);
    $(".edit-upi-no").val(aupi);
    

    //alert(an);
        $(".edit-pen7").hide();
        $(".account-details-fix").hide();
        $(".account-details-edit").show();
        $(".new-data7").show();
});

$(".edit-cancel7").click(function(){
        $(".edit-pen7").show();
        $(".account-details-fix").show();
        $(".account-details-edit").hide();
        $(".new-data7").hide();
});

$(".edit-submit7").click(function(){
	

    var ano1=$(".edit-ac-no").val();
    var aname1=$(".edit-ac-name").val();
    var aifsc1=$(".edit-ac-ifsc").val();
    var aupi1=$(".edit-upi-no").val();

    $(".u-bank-ac-no").html(ano1);
    $(".u-bank-ac-name").html(aname1);
    $(".u-bank-ac-ifsc").html(aifsc1);
    $(".u-upi-no").html(aupi1);

    


        $(".edit-pen7").show();
        $(".account-details-fix").show();
        $(".account-details-edit").hide();
        $(".new-data7").hide();
});

})

</script>

<div class="account-data">

<br>
        Use the information below to make a direct bank transfer through NEFT/RTGS/IMPS.
<br>
<br>
Account number : 
<span class="u-bank-ac-no account-details-fix">123456789</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-ac-no account-details-edit-1">
</span>
<br>

Account name : 
<span class="u-bank-ac-name account-details-fix">Rahul</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-ac-name account-details-edit-1">
</span>
<br>

IFSC code : 
<span class="u-bank-ac-ifsc account-details-fix">sbi115822ok</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-ac-ifsc account-details-edit-1">
</span>
<br>
<b style="margin-left: 10px;">OR</b>
<br>

For UPI Transaction: 
<span class="u-upi-no account-details-fix">supportvikas67@yesbankltd</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-upi-no account-details-edit-1">
</span>
<br><br>

<a href="#" style="text-decoration: none;">Click here to read this before you donate via the above options</a>

</div>

<br>
<center>

<span  class="edit-pen7 fa fa-pencil-square-o"></span>

<span class="new-data7">
    <button type="button" style="font-size: 30px;" class="edit-cancel7 fa fa-times-circle"></button>
    <button type="button" style="font-size: 30px;" class="edit-submit7  fa fa-check-circle"></button>
</span>
</center>
<br>

</div>
</div>

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




<button type="button" class="form-control dn-button donate-popup ourcausebtn1" value="${cm.campaign_id}"><i class="fa fa-thumbs-up"></i> DONATE NOW </span></button>    
<br>
<p style="font-size: 18px;font-weight: bold; text-align: justify; text-align: center; font-style: italic">Funds will be transferred to the hospital</p>
<br>



<div class="upi" style="box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.534); background-color: white; border-radius: 10px; text-align: center;">
    <div class="container-fluid"><br>

<style>
.edit-pen8, .edit-cancel8, .edit-submit8 
{
    background-color: white;
    outline: none;
    border:none;
    font-size: 25px;
    padding-left: 15px;
    float: right;
    color:rgb(76, 87, 88);
    transition: 0.3s;
    cursor: pointer;
}

.edit-pen8:hover, .edit-cancel8:hover, .edit-submit8:hover 
{
    transform: scale(1.1);
    color:rgb(21, 160, 214);
}
.upi-image
{
    width:0px; 
    height:0px;
    transition: 0.3s;
    cursor: pointer;
}

.upi-image.add
{
    width:30px; 
    height: 30px;
}

.upi-image:hover
{
    transform: scale(1.1);
}
.upi-image-file
{
    font-size: 0px;
    border:none;
    outline: none;
    width:0px;
}

.edit-cancel8, .edit-submit8
{
    display: none;
}
</style>

<script type="text/javascript">
    function readURL1(input) {
           if (input.files && input.files[0]) {
               var reader1 = new FileReader();

               reader1.onload = function (e) {
                   $('.upi-main-file').attr('src', e.target.result);
               };

               reader1.readAsDataURL(input.files[0]);
           }
       }
</script>


<script>
$(function get_img_file(){
        $(".upi-image").click(function(){
        $(".upi-image-file").click();
    });

    $(".upi-image-file").change(function(){
        var f_name= $(".upi-image-file").val();
        var f_name1 = f_name.replace(/^.*\\/, "");
        //alert(f_name1);
    });

    $(".edit-pen8").click(function(){
        $(".upi-image").toggleClass('add');
        $(".edit-pen8").hide();
        $(".edit-cancel8, .edit-submit8").show();
        $(".upi-text").removeAttr('readonly');
        
    
    });

    $(".edit-cancel8").click(function(){
        $(".upi-image").removeClass('add');
        $(".edit-pen8").show();
        $(".edit-cancel8, .edit-submit8").hide();
        $(".upi-text").attr('readonly', 'true');
        $(".fix-upi-image").load(location.href + " .fix-upi-image>*", "");
        $(".upi-text-main").load(location.href + " .upi-text-main>*", "");
        

    });

    $(".edit-submit8").click(function(){
        $(".upi-image").removeClass('add');
        $(".edit-pen8").show();
        $(".edit-cancel8, .edit-submit8").hide();
        $(".upi-text").attr('readonly', 'true');
        $(".ajax-submit-upi-details").click();

    });
})
</script>


        <p style="font-size: 15px;font-weight: bold; text-align: justify;  font-style: italic">
            Donate Via PayTm Or UPI

            <span  class="edit-pen8 fa fa-pencil-square-o"></span>

            <span class="new-data8">
                    <button type="button" class="edit-cancel8 fa fa-times-circle"></button>
                    <button type="button" class="edit-submit8 fa fa-check-circle"></button>
            </span>
            
        </p>

        <hr style="border: solid 0.5px black; margin-top: -2px;">
            <div class="col-md-6">

                <span class="edit-upi-image">
                    <img src="/destiny/files/dashboard-user-images/camera1.png" class="upi-image">
                    <input type="file"  onchange="readURL1(this);" name="upi-image-file" class="upi-image-file">
                </span>
                <span class="fix-upi-image"><img class="upi-main-file" src="${cm.fundraisers_upi_image}" style="width:100px; height: 150px;">   
                </span>

                <br><br>
                
            </div>
            <div class="col-md-6 upi-text-main">
                <img src="/destiny/files/images/upi.png" style="width:100px; height: 40px;"><br><br>
                <textarea readonly id="myInput" maxlength="20" class="upi-text">${cm.fundraisers_upi_number}</textarea>
                <br>
                <center><button type="button" onclick="myFunction()" class="form-control copy-code" style="width:100px; border-radius: 50px;">COPY</button></center>
                <br>
            </div>

    </div>
</div>

<br><br> 
<button type="button" class="form-control fb-button"><i class="fa fa-facebook-official"></i> SHARE ON FACEBOOK</span></button>    
<br>
<p style="font-size: 18px;font-weight: bold; text-align: justify; text-align: center; font-style: italic">Every social media share can bring &#8377;5,000 </p>

</div>

<div class="container-fluid"></div>

<br><br>


<!-- <script>

$(function show_update_button(){
$(".edit-submit1-btn, .edit-submit7, .edit-submit8").click(function(){
$(".submit_all_details").show();
})
})
</script>

<style>
.submit_all_details
{
display:none;
position:fixed;
right:0px;
bottom:0px;
z-index:999;
font-weight:bold;
background-color:rgb(11, 108, 133);
color:white;
font-size:20px;
border:none;
outline:none;
text-transform:uppercase;
width:100%;
height:50px;
opacity:0.4;
transition:0.3s;
}

.submit_all_details:hover
{
opacity:2;
}
@media(max-width:975px)
{
.submit_all_details
{
width:100%;
bottom:0px;
right:0px;
}
}
</style>

<button type="button" class="submit_all_details">update campaign now</button>
 -->
</form>



<!--Footer Start-->

    <div class="footer_import">
    <jsp:include page="user-footer.jsp" />
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
    
    <span data-toggle="modal" class="close-button-main" data-target="#myModal"></span>
          
    
    <div class="donate-import">
    <jsp:include page="../../donate.jsp" />
    </div>

<!--Donate Pop End-->    


</body>    

</c:forEach>
</c:forEach>

</html>