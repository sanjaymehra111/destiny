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

	<!--Table-->
  	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    
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

		
//campaign images
$(".ajax-submit-multiple-images").click(function()
		{
			var url4 = "/destiny/edit_campaign_images";
			var data4 = new FormData();
			var files = $("#gallery-photo-add").prop('files');
			
			//alert("files length : " + files.length );
			
			data4.append("campaign_id", $(".campaign_id").html());
    		data4.append("fundraisers_id", $(".fundraisers_id").html());
    
			 for(var i = 0; i<6; i++)
				 {
				 	data4.append('files', files[i]);
				 }
			 
		    $.ajax({
				 	url:url4,
				 	data: data4,
			 		enctype: 'multipart/form-data',
				 	processData: false,
				 	contentType: false,
			 	  	type: 'Post',    
				 	cache: false,
				 	success : function(){alert("Update Success")},
				 	error : function(){alert("Error Found")}

		});//ajax close 
		}); // button closed
		
$(".ajax-submit-multiple-documents").click(function()
	{
	 
		var url5 = "/destiny/edit_campaign_documents";
		var data5 = new FormData();
		var files = $("#campaign-documents").prop('files');
		
		data5.append("campaign_id", $(".campaign_id").html());
		data5.append("fundraisers_id", $(".fundraisers_id").html());
	
		for(i=0; i<6; i++)
			{
			data5.append('docfiles', files[i]);
			}
		
		
		$.ajax({
			
			url:url5,
			data:data5,
			enctype: 'multipart/form-data',
		 	processData: false,
		 	contentType: false,
	 	  	type: 'Post',    
		 	cache: false,
		 	success : function(){alert("Update Success")},
		 	error : function(){alert("Error Found")}
			
	});//ajax close
	});//multi document close
		
		
$(".ajax-submit-account-details").click(function edit_campaign_account()
{
	var url6 = "/destiny/edit_campaign_account";
	var data6 = new FormData();
		
	data6.append("campaign_id", $(".campaign_id").html());
	data6.append("fundraisers_id", $(".fundraisers_id").html());
	data6.append("account_number", $(".account-number").val());
	data6.append("account_holder_name", $(".account-holder-name").val());
	data6.append("account_ifsc", $(".account-ifsc").val());
	data6.append("account_swift", $(".account-swift").val());
	data6.append("account_bank_name", $(".account-bank-name").val());
	
 	$.ajax
		({
		 	url : url6,
			data : data6,
			processData : false,
			contentType : false,
 			type : 'post',
			cache : false,
			success : function(){alert("success")},
			error : function(){alert("error")}
		
		});	//ajax Close 
		});	// campaign account details close

		
		
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

 
 
<body style="font-family: algerrian sans-serif;  background-color: rgba(182, 184, 184, 0.11);">

<c:forEach var="fm" items="${data1}">
<c:forEach var="cm" items="${data2}">

<div class="id's hidden">
<div class="campaign_id">${cm.campaign_id}</div>
<div class="fundraisers_id">${fm.fundraisers_id}</div>
</div>
<form name="edit_campaign">
       
<!--Header Start-->

    <div class="header_import">
    <jsp:include page="admin-header.jsp" />
    </div>
    
<!--Header End-->

<style>

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
    margin-top:10px;
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
            <span class="r-amount amount-text">Raised  &#8377; <span class="achieved-percent" style="border-bottom: solid 2px rgb(255, 255, 255); font-weight: bold">
            <c:set var="ramount" value="${fn:substringBefore(cm.fundraisers_raised_amount, '.')}"/>
			${ramount}
            </span></span>
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
        <span class="p-amount amount-text">GOAL <span class="ach-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span> </span>
        <span class="d-amount amount-text">DONORS <span style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">${cm.fundraisers_donor_list}</span> </span>
        <br><br><br>
        </div>
        <div class="col-md-2">
                <a style="text-decoration: none"><span class="d-button amount-text"><button type="button" value="${cm.campaign_id}" class="ourcausebtn1" style="font-weight: bold; outline:none; border:none; background-color:transparent;" data-toggle="modal" data-target="#myModal">Donor List</button> </span></a>
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
    top: 200px;
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
    top: 200px;
 

}   
}
</style>

<span class="add-image-icon add-image-icon1 edit-pencil fa fa-plus"></span>
<span style="display: none" class="add-image-icon add-image-icon2  edit-pencil fa fa-plus"></span>

<div class="cd-section3" style="margin-top: -120px;">
<div class="container-fluid">    
   <br>
   <br>
   
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
                overflow: scroll;
                transition: 0.2s;
                height:0px;
                opacity:0;
            }
            
.edit-image1::-webkit-scrollbar {
    width: 10px;
    height:0px;
}

.edit-image1::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
    border-radius: 10px;
}

.edit-image1::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
}
​

				
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
                transition: 0.3s ease-in-out;
            }
        
        
            .add-images2:hover
            {
                cursor: pointer;
                border-radius: 100px;
                transform: rotate(45deg);
            }
        
            #gallery-photo-add
            {
                display: none;
                 font-size: 0.0px;
                width:0;
                height: 0; 
            }
            .gallery img
{
width:100px;
height:100px;
border-radius:100px;
padding:5px;
}
.campaign-image
{
width:100px;
height:100px;
border-radius:100px;
padding:5px;
}

.ajax-submit-multiple-images
{
display:none;
height:110px;
width:110px;
padding:20px;
border-radius:50px;
background-image:url("/destiny/files/dashboard-user-images/upload-document.png");
background-size:100% 100%;
color:white;
outline:none;
border:none;
transition:0.3s;
}

.ajax-submit-multiple-images:hover
{
transform: rotate(45deg);
}
            
            
        </style>    
        
<script>


/*add-hide-images*/

$(function(){


$(".add-image-icon1").click(function(){
    $(".add-image-icon1").hide();
    $(".add-image-icon2").show();
    $(".user-images1").css({"height":"650"});
    $(".edit-image1").css({"height":"160px"});
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
    $("#gallery-photo-add").click()
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

<c:forTokens items = "${allimages}" delims = "," var = "name">
         	<img class="img-path1" src="<c:out value = "${name}"/>" style="width:100%; height: 400px;">
</c:forTokens>
   
</div>
<br><br>
<div class="edit-image1">


<script>
$(function() {
    // Multiple images preview in browser
    var imagesPreview = function(input, placeToInsertImagePreview) {

        if (input.files) {
            var fm= input.files.length;
           //alert(fm);

            for (i = 0; i < 6; i++) {
                var reader = new FileReader();

                reader.onload = function(event) {
                    $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
                    
                }

                reader.readAsDataURL(input.files[i]);
            }
        }

    };

    $('#gallery-photo-add').on('change', function() {
    	$(".gallery").html("");
    	$(".ajax-submit-multiple-images").show();
        imagesPreview(this, 'span.gallery');
    });
});
</script>


    <span class="gallery" style="overflow:scroll">
    
	    <c:forTokens items = "${allimages}" delims = "," var = "name">
	         	<a target="_blank" href="<c:out value = "${name}"/>"><img class="img-path1 campaign-image" src="<c:out value="${name}"/>"></a> 
		</c:forTokens>
	
	
	</span>
<span class="upload-iamges">
        <img src="/destiny/files/dashboard-user-images/media2.png" class="add-images2">
        <input type="file" id="gallery-photo-add" name="new_file" multiple>
        <span><button class="ajax-submit-multiple-images" type="button">'</button></span>
</span>
<br>
    
        
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
				 
<c:if test="${cm.fundraisers_status eq 1}">
	<button type="button" class="verified-button varifies-personal">VERIFIED <i class="fa fa-check-circle"></i></button>
</c:if>	
<c:if test="${cm.fundraisers_status eq 0}">
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
.document-details img
{
    width:200px; 
    height: 200px;
    transition: 0.2s ease-in-out;
    border-radius: 5px;
    border:solid 2px rgba(0, 0, 0, 0.616);
    margin-right:10px;
    opacity: 0.6;
    margin-top:10px; 
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
    opacity:0.7;
    cursor:pointer
}
.upload-doc:hover
{
transform:scale(1.05);
opacity:1.0;
}

.upload-doc.edit 
{
    width:110px;
    height: 110px;
}

.zoom-image.cursor
{
    /* cursor: url("/destiny/files/dashboard-user-images/delete2.png"), default; */
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

.ajax-submit-multiple-documents
{
display:none;
outline:none;
border:none;
font-size:0px;
background-color: transparent;
cursor:auto;
}

.ajax-submit-multiple-documents.edit
{
display:none;
height:110px;
width:110px;
padding:20px;
border-radius:50px;
background-image:url("/destiny/files/dashboard-user-images/upload-document.png");
background-size:100% 100%;
color:white;
outline:none;
border:none;
opacity:0.7;
cursor:pointer;
}

.ajax-submit-multiple-documents:hover
{
opacity:1.0;
transform:scale(1.05);
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
        //alert(a1);
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
        $(".ajax-submit-multiple-documents").toggleClass('edit');
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


<script>
$(function() {
    // Multiple images preview in browser
    var imagesPreview = function(input, placeToInsertImagePreview) {

        if (input.files) {
            var fm= input.files.length;
           //alert(fm);

            for (i = 0; i < 6; i++) {
                var reader = new FileReader();

                reader.onload = function(event) {
                    $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
                    
                }

                reader.readAsDataURL(input.files[i]);
            }
        }

    };

    $('#campaign-documents').on('change', function() {
    	$(".old-document").html("");
    	$(".ajax-submit-multiple-documents").show();
        imagesPreview(this, 'span.old-document');
    });
});
</script>


<div class="edit-mode2">Edit Mode</div>
<br>
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
 
 
<%-- <img class="zoom-image" src="${doc}">--%>
<div class="new-document">  
<br>   
    <img src="/destiny/files/dashboard-user-images/media2.png" style="border:none;" class="upload-doc">
    <span><button class="ajax-submit-multiple-documents" type="button">'</button></span>
    <input type="file" name="new_file" multiple class="upload-hide" id="campaign-documents">
    
</div>

     
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

<!-- 
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
 -->


<c:if test="${fn:length(data4) == 0}">
<div class="account-data">

<br>
        Use the information below to make a direct bank transfer through NEFT/RTGS/IMPS.
<br>
<br>
Account number : 
<span class="account-details-fix">123456789</span>
<br>

Account name : 
<span class="account-details-fix">Rahul</span>
<br>

IFSC code : 
<span class="account-details-fix">sbi115822ok</span>
<br><br>
<a href="#" style="text-decoration: none;">Click here to read this before you donate via the above options</a>
<br><br>  
<center><a href="/destiny/manage-withdrawl/${cm.fundraisers_id}/${cm.campaign_id}"><span style="font-size:30px;" class="fa fa-pencil-square-o"></span></a></center>
</div>
</c:if>


<c:if test="${fn:length(data4) != 0}">
<c:forEach var="cam" items="${data4}">
<div class="account-data">

<style>
.account-details-fix
{
    font-weight: bold;
}

.account-text
{
	border:none;
	outline:none;
	background:transparent;
}
.account-edit, .account-submit 
{
	font-size: 20px; 
	border:none; 
	padding:10px; 
	width:150px; 
	outline:none; 
	background-color:rgb(21, 160, 214);
	color:white;	
	transition:0.3s;
}
.account-submit 
{	
	background-color:rgb(20, 92, 20);
}
.account-delete, .account-cancel 
{
	font-size: 20px; 
	border:none; 
	padding:10px; 
	width:150px; 
	outline:none; 
	background-color:#cc2c2c; 
	color:white;
	transition:0.3s;
}

.account-edit:hover, .account-delete:hover, .account-cancel:hover, .account-submit:hover 
{
	transform:scale(1.1);
}
.button-delete-no
{
background-color:green; 
width:200px
}
.button-delete-no:hover
{
background-color:#06c14f;
}
.button-delete
{
	background-color:#ce2a32;
	width:200px
}

.button-delete:hover
{
	background-color:#f92c2c;
}

.account-doc-images
{
	transition:0.5s;
	width:00px;
	height:00px;
	padding:10px;
	cursor:pointer;
	
}



@media(max-width:975px)
{

.account-delete, .account-edit, .account-cancel, .account-submit
{
width:100px;
}
}
</style>

<script>

$(function EditAccountDetails(){

$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();   
});
	
$(".account-edit").click(function(){
	$(".account-part2").css({"font-size":"18px"});
	$(".account-doc-images").css({"width":"80%", "height":"300px"});
	$(".account-buttons").hide();
	$(".new-button").show();
	$(".account-number, .account-holder-name, .account-ifsc, .account-swift, .account-bank-name").removeAttr('readonly');
	$(".account-number, .account-holder-name, .account-ifsc, .account-swift, .account-bank-name").css({"border-bottom":"solid 2px black"});
});

$(".account-cancel").click(function(){
	$(".account-part2").css({"font-size":"0px"});
	$(".account-doc-images").css({"width":"0px", "height":"0px"});
	$(".account-buttons").show();
	$(".new-button").hide();
	$(".account-number, .account-holder-name, .account-ifsc, .account-swift, .account-bank-name").attr('readonly', 'true');
	$(".account-number, .account-holder-name, .account-ifsc, .account-swift, .account-bank-name").css({"border-bottom":"none"});
})

$(".account-submit").click(function(){
var ano=$(".account-number").val();
var ahna=$(".account-holder-name").val();
var aifsc=$(".account-ifsc").val();
var aswift=$(".account-swift").val();
var abna=$(".account-bank-name").val();

if(ano == "" || ano == null || ahna == "" || ahna == null ||  aifsc == "" || aifsc == null ||  aswift == "" || aswift == null ||  abna == "" || abna == null)
	{
	$(".account-error").css({"font-size":"18px"});
	return false;
	}
else
	{
	$(".ajax-submit-account-details").click();
	$(".account-error").css({"font-size":"0px"});
	$(".account-part2").css({"font-size":"0px"});
	$(".account-buttons").show();
	$(".new-button").hide();
	$(".account-number, .account-holder-name, .account-ifsc, .account-swift, .account-bank-name").attr('readonly', 'true');
	$(".account-number, .account-holder-name, .account-ifsc, .account-swift, .account-bank-name").css({"border-bottom":"none"});
	return true;
	}
})

});

</script>

<div class="ac-details">
<br>Use the information below to make a direct bank transfer through NEFT/RTGS/IMPS.<br><br>
<span class="account-part1">
Account Number : <span class="account-details-fix"><input maxlength="50" class="account-number account-text" type="text" value="${cam.account_number}" readonly></span><br>
Account Holder Name : <span class=" account-details-fix"><input maxlength="50" class="account-holder-name account-text" type="text" value="${cam.account_holder_name}" readonly></span><br>
IFSC Code : <span class=" account-details-fix"><input maxlength="20" class="account-ifsc account-text" type="text" value="${cam.account_ifsc}" readonly></span><br>
</span>

<span class="account-part2" style="font-size:0px; transition:0.3s;">
Swift Code : <span class=" account-details-fix"><input maxlength="20" class="account-swift account-text" type="text" value="${cam.account_swift}" readonly></span><br>
Account Bank Name : <span class=" account-details-fix"><input maxlength="50" class="account-bank-name account-text" type="text" value="${cam.account_bank_name}" readonly></span><br>

<div class="doc-images" style="text-align: center">
<br>
	<img class="account-doc-images" src="${cam.pan_image}"> 
	<img class="account-doc-images" src="${cam.cancel_cheque_image}">
	<img class="account-doc-images" src="${cam.doc_files}">
<br>	
</div>

Account Type: <span class=" account-details-fix"><input class="account-type account-text" style="width:100px; text-transform: capitalize;" type="text" value="${cam.account_type}" readonly></span> <i class="fa fa-info-circle" style="cursor:pointer;" data-toggle="tooltip" title="If You Want To Change 'Account Type Or Any Other Details' Please Make A New Account And Delete This Thanku..!"></i><br>

</span>
<br><div class="account-error" style="font-size:0px; text-align:center; transition:0.3s; color:red">Something Missing .....! </div><br>
</div>

<div class="account-buttons" style="text-align:center">
<button class="account-edit fa fa-pencil-square-o" type="button" > Edit</button> &nbsp;&nbsp;&nbsp;&nbsp;  
<button class="account-delete fa fa-times-circle" type="button" data-toggle="modal" data-target="#myModal-${cm.campaign_id}"> Delete</button>

<button class="ajax-submit-account-details hidden" type="button"></button>
</div>

<!--Delete Campaign Start-->
  <div class="modal fade" id="myModal-${cm.campaign_id}" role="dialog" style="z-index:9999; margin-top:10%;">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" style="padding:20px;">&times;</button>
        <div class="modal-header"  style="padding:50px;">
        <div style="color:red; text-align:center;">Are You Sure You Want To Delete This Account <br> <span style="font-weight:bold; color:black; font-style: italic; text-transform: uppercase;">' ${cam.account_bank_name} : ${cam.account_number} '</span></div>
          <br>
          	<center><a href="/destiny/delete_campaign_account/${cm.fundraisers_id}/${cm.campaign_id}">
          	<button type="button" class="button-delete button-all">Yes</button></a>
			<button type="button" data-dismiss="modal" class="button-delete-no button-all">No</button>
			</center>
        </div>
      </div>
    </div>
  </div>
<!--Delete Campaign End-->

</div>
</c:forEach>
</c:if>

<center>


<span class="new-button" style="display:none">
<button class="account-cancel fa fa-times-circle" type="button"> Cancel</button> &nbsp;&nbsp;&nbsp;&nbsp;
<button class="account-submit fa fa-check-circle" type="button" > Submit</button>   
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

 

<%-- 
<button type="button" class="form-control dn-button donate-popup ourcausebtn1" value="${cm.campaign_id}"><i class="fa fa-thumbs-up"></i> DONATE NOW </span></button>    
<br>
<p style="font-size: 18px;font-weight: bold; text-align: justify; text-align: center; font-style: italic">Funds will be transferred to the hospital</p>
<br>

 --%>

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
                <span class="fix-upi-image"><img class="upi-main-file" src="${cm.fundraisers_upi_image}" style="width:150px; height: 150px;">   
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


</form>



<!--Footer Start-->

    <div class="footer_import">
    <jsp:include page="admin-footer.jsp" />
    </div>

<!--Footer End-->



</c:forEach>
</c:forEach>




<!-- Donor list start-->

<div class="container">
 

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
    min-width: 120px;
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

.modal-dialog
{
	width:90%;
}


@media(max-width:975px)
{

.modal-dialog
{
	width:100%;
}

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
$(document).ready(function() {
    $('#example').DataTable({
    	"lengthMenu": [5, 20, 40, 80, 100],
        "pageLength": 5	
    });
});
</script>


  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="z-index:9999;">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="text-align: center; text-transform: uppercase; font-weight: bold">Donors List</h4>
        </div>
        <div class="modal-body">
        
  <div class="deta-process">
        
        
        <div class="fundraisers-details">
	<table id="example" class="fundraisers-table">
    <thead>
    <tr>
    	<th>NAME</th>
    	<th>CONTACT</th>
        <th>EMAIL</th>
        <th>CITY</th>
        <th>COUNTRY</th>
        <th>AMOUNT TYPE</th>
        <th>AMOUNT</th>
        <th>DATE</th>
        
    </tr>
</thead>

	<tbody id="myTable">
		
		
		<c:forEach var="dm" items="${data5}">
		
		        <tr>
		        
		          	<td>${dm.donor_name}</td>
			        <td>${dm.donor_contact}</td>
			        <td>${dm.donor_email}</td>
			        <td>${dm.donor_city}</td>
			        <td>${dm.donor_country}</td>
			        <td>${dm.amount_type}</td>
			        <td>${dm.amount}</td>
			        <td>${dm.donation_date}</td>
		
		        </tr>
		        
		</c:forEach> 
    </tbody>
      
</table>
</div>
 <br><br>       
    </div>    
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  
</div>

<!-- Donor list end-->

</div>

</body>    


</html>