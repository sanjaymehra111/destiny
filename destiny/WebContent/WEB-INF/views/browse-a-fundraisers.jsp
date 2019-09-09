<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


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
     
<script>

$(function search_submit(){
	  $(".search-button").click(function(){
	    $(".search-submit").click();
	  })
	})

	
$(function(){
	$(".CampaignTypes").click(function(){
		var text = $(this).attr('values');
		$(".content").hide();
		$('.content:contains("'+text+'")').show();
	})
})

$(function transfer_id(){
	$(document).on('click', '.ajax-donate-button', function(){
		    var id = $(this).val();
			$(".c_id").html(id);
			$(".cid").val(id);
  	})
});
 	
$(function(){
	$(".search-text").keyup(function(){
		var text = $(this).val();	
		$(".content").hide();
		 $('.content:contains("'+text+'")').show();
	})
	
})

$(function(){	
	$(window).ready(function(){
		$(".ajax-browse-button").trigger('click'); 
	});
})

$(function(){
	var index=0;
	$(".ajax-browse-button").click(function GetAjaxFundraisersData(){
	index = index + 6;
	var url1 = "/destiny/ajax-browse-fundraisers";
	
	$.ajax({
		url:url1,
		data : {index:index},
		type:'Get',
		cache :false,
		dataType:'json',
		contentType : "application/json; charset=utf-8",
		success : function(data)
			{
				var data1 = data[0];
				var data2 = data[1];
				var i, j;
				var html="";
				
					for(j=0; j<data2.length; j++)
						
						{
							html+='<div class="col-md-4 content">';
							html+='<div class="ourcausesheet" style="border:solid 1px rgba(180, 176, 176, 0.445);">';
							html+='<div class="ourcausecontainer" style="position: relative;">';
							var imagesa= data2[j].fundraisers_campaign_images; var c=",";
							if(imagesa.indexOf(c) != -1)
								{var images = imagesa.substring(0,imagesa.indexOf(","));}
							else
								{var images = data2[j].fundraisers_campaign_images;}
							html+='<img src="'+images+'" style="width:100%; height: 200px;">';
							html+='<span class="ourcausedonate">';
							html+='<button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-whatsapp"></i> Share</button>';
							html+='<button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-facebook"></i> Share</button>';
							html+='</span>';
							html+='</div>';
							html+='<div class="img-text" style="text-align:left; padding: 20px 20px;">';
							html+='<div class="text-balance" style="height:200px;">';
							html+='<div class="campaign-title" style="font-size:20px; text-align:center; text-transform:uppercase; font-weight:bold">'+data2[j].fundraisers_title+'</div>';
							html+='<div class="p-name" style="text-align:center; padding:10px; font-size:16px;"><span class="personal-name" style="text-transform: capitalize">'+data2[j].fundraisers_name+'</span></div>';
						 	html+='<span class="p-type hidden">Type : <span class="personal-name" style="text-transform: capitalize">@'+data2[j].campaign_type+'@</span></span>';
							html+='<span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal :  <span class="pg"> '+data2[j].fundraisers_goal_amount+' </span>';
							var amounta = data2[j].fundraisers_raised_amount;
							var amount = amounta.substring(0,amounta.indexOf("."));
							html+='<span style="float:right">Raised : <span class="pr">'+amount+'</span> </span>';
							html+='</span>';
							html+='<br><br>';
							var a = (data2[j].fundraisers_raised_amount / data2[j].fundraisers_goal_amount) * 100;
							html+='<div class="progress" style="height: 10px;">';
							html+='<div class="progress-bar progress-bar-pb  progress-bar-success progress-bar-striped active" style="width:'+a+'%" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>';
							html+='</div>';
							html+='<p style="font-size:17px; overflow: hidden; color:rgb(155, 160, 160); text-align: justify; margin-top:-15px;"> '+data2[j].fundraisers_story+'</p>';
							html+='</div>';
							html+='<center>';
							html+='<div class="col-md-6">';
							html+='<a href="specific-cause-details/'+data2[j].fundraisers_id+'/'+data2[j].campaign_id+'" style="text-decoration: none">';
							html+='<button class="ourcausebtn1 form-control" value="'+data2[j].fundraisers_id+'" style="background-color:rgb(26, 145, 135); color:white">Read More</button>';
							html+='</a>';
							html+='</div>';
							html+='<div class="col-md-6"> ';
							html+='<button class="ajax-donate-button ourcausebtn1 form-control donate-popup camp_id" data-toggle="modal"  data-target="#myModal"  type="button" value="'+data2[j].campaign_id+'" style="background-color:rgb(26, 145, 135); color:white">Donate Now</button>';
							html+='</div>';
							html+='</center>';
							html+='<div class="container-fluid"></div>';
							html+='</div>';
							html+='</div>';
							html+='<br><br> '; 
							html+='</div>';
					}
					
				$(".ajax-browse-fundraisers").html(html)
			},
		error: function(){alert("error")}

	}) // ajax close
	}) // GetAjaxFundraisersData close

}) //main function close

</script> 

<style>
        html {
            color: red;
        }
		
			.heart:HOVER
		{
			color:#ff6700; 
		}
		.bulb:HOVER
		{
			color:orange;
		}
		.medical:HOVER
		{
			color:green;
		}
		.personal:HOVER
		{
			color:#00a2e8;
		}
		.CampaignTypes
		{
			cursor:pointer;
		}
		.opennav
		{
			color:#818181;
			transition:0.3s;
		}
		
		.opennav:HOVER
		{
			color:#e61044;
		}
		
		
		.search-text
		  {
		    height: 40px;
		    font-size: 15px;
		    border-radius: 50px;
		    padding-right: 50px;
		    padding-left: 30px;
		    text-align: center;
		    transition:0.3s;
		  }
		  .search-button
		  {
		    cursor: pointer;
		    font-size: 30px;
		    position: relative;
		    top:-42px;
		    float:right;
		    right:  20px;
		    font-weight: bold;
		    color:rgb(41, 124, 192);
		  }
		  .search-button:hover
		  {
		    transform: scale(1.1);
		    color:rgb(8, 36, 97);
		  }
				
		.text-balance {
		  height: 30%;
		  display: -webkit-box;
		  -webkit-line-clamp: 3;
		  -webkit-box-orient: vertical;
		  overflow: hidden;
		  text-overflow: ellipsis;
		}
		.ajax-browse-button
		{
			margin-top:50px;
			width:400px;
			height:50px;
			border:none;
			outline:none;
			background: #3ca07c;
			color:white;
			border-radius: 50px; 	
			font-size: 22px;
			font-weight: bold;
			transition:0.3s;
		}
		
		.ajax-browse-button:hover
		{
			background: #21936a;
			box-shadow: 4px 5px 5px rgba(0,0,0,.575);
		}
		
		.ajax-browse-button:ACTIVE
		{
			transform:scale(0.97);
		}
		
		
		.CampaignType 
		{
			background: #3ca07c;
			padding:10px;
			border-radius: 100px;
			border:none;
			outline:none;
			cursor: pointer;
			text-align: center;
			font-size:20px;
			color:white;
			transition:0.3s;
			margin-top: 10px;
			width:297px;
			text-transform: uppercase;
		}
		
		.CampaignType:hover 
		{
			background: #105d41;
		}
		
		.CampaignType:FOCUS
		{
			background-color:green;
		}
     .ourcausesheet:hover {
            box-shadow: 5px 5px 20px 2px rgb(139, 133, 133);
        }


        .ourcausebtn1 {
            width: 100%;
            margin-top: 20px;
            border-radius: 25px;
            border:none;
            transition: 0.3s ease-in-out;
            
        }

        .ourcausebtn1:active {
          transition: 0.1s ease-in-out;
            transform: scale(0.98)
        }

        .ourcausebtn1:hover {
            box-shadow: 3px 5px 10px 0px rgba(36, 35, 35, 0.836);
        }
 

        .sidenav {
          height: 100%;
          width: 40px;
          position: fixed;
          z-index: 1;
          top: 0;
          right: 0;
          background-color: white /* rgba(17, 17, 17, 0.952) */;
          overflow-x: hidden;
          transition: 0.5s;
          padding-top: 60px;
          color:white;
          text-align:left; 
          z-index:9999;
          opacity: 0.4;
        }

 		.sidenav:HOVER
 		{
 			opacity:1;
 		}
 			 
 			 .sidenav:FOCUS
 		{
 			opacity:1;
 		}
 			 
        .sidenav a {
          padding-left: 20px;
          text-decoration: none;
          font-size: 20px;
          /* color: #818181;
           */display: block;
          transition: 0.3s;
        }

/*         .sidenav a:hover {
          color: black;
        }
 */
        .sidenav .closebtn {
          position: absolute;
          top: 0;
          right: 25px;
          font-size: 36px;
          margin-left: 50px;
        }

        #main {
          transition: margin-left .5s;
          padding: 16px;
          overflow: hidden;
        }

        @media screen and (max-height: 450px) 
        {
          .sidenav {padding-top: 15px;}
          .sidenav a {font-size: 18px;}
        }
        
        
@media(max-width:975px)
{
.CampaignType 
{
	font-size:17px;
	padding:5px;	
	width:130px;
}
.ajax-browse-button
{
	width:200px;
}
}
   
</style>

<script>
  function openNav() {
var a1=  document.getElementById("mySidenav").style.width;    
    if(a1!='250px')
    {
      document.getElementById("mySidenav").style.width = "250px";
     // document.getElementById("main").style.marginLeft = "250px";
      $(".causes-start").css({"opacity":"0.5"});
      $(".sidenav").css({"opacity":"1"});
      $(".filter-items").css({"display":"block"});

      $(".rotatenew").css({"display":"block"});
      $(".rotate").css({"display":"none"});

      
    }

    else
    {
      $(".rotate").css({"display":"block"});
      $(".rotatenew").css({"display":"none"});
      $(".sidenav").css({"opacity":"0.4"});
      document.getElementById("mySidenav").style.width = "40px";
  //  document.getElementById("main").style.marginLeft= "0";
    $(".causes-start").css({"opacity":"1"});
    $(".filter-items").css({"display":"none"});

    }
    

  }
  
  //function closeNav() {
    

//    document.body.style.backgroundColor = "white";
//  }
  </script>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<body style="font-family: algerrian sans-serif">


    <!--Header Start-->

    <div class="header_import">
        <script>
            $(function () {
                $(".header_import").load("header");
            })
        </script>
    </div>


    <!--Header End-->


    <!--Body Part Start-->


    <div class="bodymain">

        <div class="causes-body1">
        
          <script>
            $(function(){
              $(".fundraisers-details").slick({
             
             infinite: true,
             speed: 500,
             slidesToShow: 6,
             centerPadding:'20',
             //centerMode:true,
             autoplay:true,
             arrows: false,
             dots:false,
              
             responsive: [                        
                {
                 breakpoint: 990,
                 settings: {
                    slidesToShow: 2,
                    
                 }
               },
              ]
              })
            })

            </script>

<style>
.slick-slide
{
  height: auto;
}
</style>

            <div style="background-color:rgba(22, 20, 20, 0.705)">
                <div class="container-fluid">

                    <div class="col-md-12" style="text-align:center">
                        <p style="font-size: 400%; color:white; margin-top: 120px; ">Browse Fundraisers</p>
                        <br>
                      </div></div>

                    <div style="background-color:rgba(218, 210, 210, 0.205)">
                      <div class="container-fluid">
                          <br>
                          <br>
          
                          <div class="fundraisers-details" style="margin-left: 20px;">

                      <div class="col-md-2" style="text-align: center; ">
                          <p style="font-size: 30px; color:white;">&#8377;400 Cr</p>
                          <p style="font-size: 18px; color:white;line-height: 20px;">Total amount raised <br> so far</p><br>
                      </div>

                      <div class="col-md-2" style="text-align: center; ">
                          <p style="font-size: 30px; color:white;">&#8377;3 Lakhs +</p>
                          <p style="font-size: 18px; color:white;line-height: 20px;">Lives impacted across the globe</p><br>
                      </div>

                      <div class="col-md-2" style="text-align: center; ">
                          <p style="font-size: 30px; color:white;">13,000 +</p>
                          <p style="font-size: 18px; color:white;line-height: 20px;">No. of fundraisers created</p><br>
                      </div>

                      <div class="col-md-2" style="text-align: center; ">
                          <p style="font-size: 30px; color:white;">60 +</p>
                          <p style="font-size: 18px; color:white;line-height: 20px;">Total countries funds raised from</p><br>
                      </div>

                      <div class="col-md-2" style="text-align: center; ">
                          <p style="font-size: 30px; color:white;">&#8377;25 Lakhs +</p>
                          <p style="font-size: 18px; color:white;line-height: 20px;">Fastest fundraising by someone in 7 days</p><br>
                      </div>

                      <div class="col-md-2" style="text-align: center; ">
                          <p style="font-size: 30px; color:white;">3</p>
                          <p style="font-size: 18px; color:white;line-height: 20px;">Countries Tax benefits offered India, UK, USA</p>
                        </div>
              
                      </div>
                    </div>
  
                  </div>
                  <br><br>
              
            </div>
        </div>


    
<style>

.left-side
  {
    margin-left: 50px;
  }

@media(max-width:975px)
{
  .left-side
  {
    margin-left: 15px;
    /*margin-right: -20px;*/
  }
}
</style>

<div id="main" class="causes-body2 right-side" >
<div class="container-fluid"> 

<div style="text-align:center">


<div id="mySidenav" class="sidenav"><br><br>
	<span class="opennav" style="font-size:30px; cursor:pointer; margin-top:-80px; float: right; margin-right: 10px;"  onclick="openNav()" >
		<i class="fa fa-bars rotate"></i>
		<i class="fa fa-times rotatenew" style="display:none"></i>
	</span><br>
	
	<div class="filter-items" style="display:none;">
	
	<div class="col-md-12 search-items" style="margin-top: -60px;">
	    <br><input type="search" name="search-item" class="form-control search-text" placeholder="Search">
	    <!-- <i class="fa fa-search search-button"></i>
	    <button class="search-submit" type="button" style="display: none"></button><br> -->
	<hr></div>
	
		<a class="CampaignTypes heart" values="@ngo@"><i class="fa fa-heart"></i> NGO</a>
		<hr><a class="CampaignTypes bulb" values="@ideas@"><i class="fa fa-universal-access "></i> IDEAS</a>
		<hr><a class="CampaignTypes medical" values="@medical@"><i class="fa fa-medkit "></i> MEDICAL</a>
		<hr><a class="CampaignTypes personal" values="@personal@"><i class="fa fa-user "></i> PERSONAL</a>
		<hr>
	</div>
</div>


</div>

<div class="causes-start">

<div class="campaign-type hidden" style="text-align: center; margin-top: 20px; margin-bottom: 40px;">
	<input class="CampaignType campaign-type-ngo" readonly type="text" values="@ngo@" value="ngo">
	<input class="CampaignType campaign-type-personal" readonly type="text" values="@personal@" value="personal">
	<input class="CampaignType campaign-type-medical" readonly type="text" values="@medical@" value="medical">
	<input class="CampaignType campaign-type-ideas" readonly type="text" values="@ideas@" value="ideas">
</div>

<br><br>

<!-- insert donation id -->
<div class="col-md-12 ajax-browse-fundraisers"></div>

<div class="col-md-12" style="text-align: center;">
	<button class="ajax-browse-button">Load More</button>
</div>


<%-- 
<span style=" display:block">

<c:forEach var="fm" items="${data}">
<c:forEach var="cm" items="${data2}" >
<c:if test="${fm.fundraisers_id == cm.fundraisers_id}">

<div class="col-md-4 content">
<div class="ourcausesheet" style="border:solid 1px rgba(180, 176, 176, 0.445);">
   	<div class="ourcausecontainer" style="position: relative;">
		<c:forTokens items = "${cm.fundraisers_campaign_images}" delims = ","  var = "name" step="10">
	   		<img src="${name}" style="width:100%; height: 200px;">
	   	</c:forTokens>
	    <span class="ourcausedonate">
	        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-whatsapp"></i> Share</button>
	        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-facebook"></i> Share</button>
	    </span>
  	</div>

 	<div class="img-text" style="text-align:left; padding: 20px 20px;">
		<div class="text-balance" style="height:200px;">
		<div class="campaign-title" style="font-size:20px; text-align:center; text-transform:uppercase; font-weight:bold">${cm.fundraisers_title}</div>
		<div class="p-name" style="text-align:center; padding:10px; font-size:16px;">By : <span class="personal-name" style="text-transform: capitalize">${fm.personal_name}</span></div>
		<span class="p-type hidden">Type : <span class="personal-name" style="text-transform: capitalize">${fm.category_type}</span></span>
	    <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal :  <span class="pg"> ${cm.fundraisers_goal_amount} </span> 
	    	<span style="float:right">Raised : <span class="pr"><c:set var="ramount" value="${fn:substringBefore(cm.fundraisers_raised_amount, '.')}"/>${ramount}</span> </span>
	    </span>
	    <br><br>
	    
	    <c:set var="a" value="${cm.fundraisers_goal_amount}"/>
	    <c:set var="b" value="${cm.fundraisers_raised_amount}"/>
	    <c:set var="c" value="${(cm.fundraisers_raised_amount / cm.fundraisers_goal_amount) * 100}"/>
	    
	    <div class="progress" style="height: 10px;">
	        <div class="progress-bar progress-bar-pb  progress-bar-success progress-bar-striped active" style="width:${c}%" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
	    </div>
	    <p style="font-size:17px; overflow: hidden; color:rgb(155, 160, 160); text-align: justify; margin-top:-15px;"> ${cm.fundraisers_story}</p>
	   	</div>
	    <center>
	    <div class="col-md-6">  
	        <a href="specific-cause-details/${fm.fundraisers_id}/${cm.campaign_id}" style="text-decoration: none">
	          <button class="ourcausebtn1 form-control" value="${fm.fundraisers_id}" style="background-color:rgb(26, 145, 135); color:white">Read More</button>
	        </a>
	    </div> 
	    <div class="col-md-6"> 
	      <button class="ourcausebtn1 form-control donate-popup camp_id" value="${cm.campaign_id}" style="background-color:rgb(26, 145, 135); color:white">Donate Now</button>
	    </div>
	    </center>
	    <div class="container-fluid"></div>
	</div>
</div>
<br><br> 
</div> 

</c:if>
</c:forEach>
</c:forEach>

</span>
 --%>


<br><br>

</div>


</div>
</div>
</div>




    <!--Body Part End-->



    <br><br>
    <br><br>


    <!--Footer Start-->


    <div class="footer_import">
        <script>
            $(function () {
                $(".footer_import").load("footer");
            })
        </script>
    </div>

    <!--Footer End-->

<!--Donate popup Start-->

<!-- close donation popup  -->
    <script>
    $(function(){
    	$.ajaxComplete(function(){
    		$("#donate-popup-id").click(function(){
        		$(".close-button-main").click();
        	})
    	})
	})
    </script>
    
    
    <span data-toggle="modal" data-target="#myModal" class="close-button-main"></span>
    
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