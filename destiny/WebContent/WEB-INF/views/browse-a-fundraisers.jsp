<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
     

    <style>
        html {
            color: red;
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
          left: 0;
          background-color: rgba(17, 17, 17, 0.952);
          overflow-x: hidden;
          transition: 0.5s;
          padding-top: 60px;
          color:white;
        }

        .sidenav a {
          padding: 8px 8px 8px 32px;
          text-decoration: none;
          font-size: 25px;
          color: #818181;
          display: block;
          transition: 0.3s;
        }

        .sidenav a:hover {
          color: #f1f1f1;
        }

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

        @media screen and (max-height: 450px) {
          .sidenav {padding-top: 15px;}
          .sidenav a {font-size: 18px;}
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
      $(".filter-items").css({"display":"block"});

      $(".rotatenew").css({"display":"block"});
      $(".rotate").css({"display":"none"});

      
    }

    else
    {
      $(".rotate").css({"display":"block"});
      $(".rotatenew").css({"display":"none"});

      document.getElementById("mySidenav").style.width = "40";
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
                          <p style="font-size: 30; color:white;">60 +</p>
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

        <br><br>

    
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

<div id="main" class="causes-body2 left-side" >
<div class="container-fluid"> 

<div style="text-align:center">


<div id="mySidenav" class="sidenav" style="text-align:left">
  <br>
  <br>

  <span class="opennav" style="font-size:30px;cursor:pointer; margin-top:30px; float: right; margin-right: 10px;"  onclick="openNav()" >
    
    <i class="fa fa-bars rotate"></i>
    <i class="fa fa-times rotatenew" style="display:none"></i>

    
    </span>
  <br>

  <div class="filter-items" style="display:none">

  <!--<a href="javascript:void(0)" class="closebtn" onclick="closeNav()"  style="margin-top:150px;">&times;</a>-->
<br>

  <a href="#"  style="margin-top:50px;">Medical</a>
  <a href="#">NGO</a>
  <a href="#">Personal Cause</a>
  <a href="#">Creative Ideas</a>
</div>
</div>


</div>

<div class="causes-start">

<div class="col-md-12 search-items">

  <style>
  .search-text
  {
    height: 50px;
    font-size: 20px;
    border-radius: 50px;
    padding-right: 50px;
    padding-left: 30px;
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

  </style>

<script>
$(function search_submit(){
  $(".search-button").click(function(){
    $(".search-submit").click();
  })
})
</script>

<form name="search-items">
    <input type="search" name="search-item" class="form-control search-text" placeholder="Search For Fundraisers">
    <i class="fa fa-search search-button"></i>
    <button class="search-submit" type="submit" style="display: none"></button>
    <br>
</form>

</div>

<style>

.text-balance {
  height: 30%;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;
}
</style>
 


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


<span style=" flex-direction: row-reverse;">

<c:forEach var="fm" items="${data}" >

<!--    
 Title : ${fm.fundraisers_title} <br><br>
 Amount : ${fm.fundraisers_goal_amount} <br><br>
Story : ${fm.fundraisers_story} <br><br><hr><br><br>
 -->

<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(180, 176, 176, 0.445);">
    
   <div class="ourcausecontainer" style="position: relative;">
    <img src="/destiny/files/images/drintwater.jpg" class="ourcauseimage1">
    <span class="ourcausedonate">
        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-whatsapp"></i> Share</button>
        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-facebook"></i> Share</button>
    </span>
  </div>

  <div class="img-text" style="text-align:left; padding: 20px 20px;">
    <div class="text-balance" style="height:250px;">
  
    <p style="font-size:25px; color:rgb(126, 131, 131)">${fm.fundraisers_title} id is : ${fm.fundraisers_id} </p>

    <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal : ${fm.fundraisers_goal_amount}  <span style="float:right">Raised : ${fm.fundraisers_goal_amount}  </span></span> <br><br>
    <div class="progress" style="height: 10px;">
        <div class="progress-bar  progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
         </div>
    </div>
      
    <p style="font-size:17px; overflow: hidden; color:rgb(155, 160, 160); text-align: justify;">${fm.fundraisers_story}</p>
   </div>
    <center>
    <div class="col-md-6">  
        <a href="cause-details/${fm.fundraisers_id}" style="text-decoration: none">
          <button class="ourcausebtn1 form-control" value="${fm.fundraisers_id}" style="background-color:rgb(26, 145, 135); color:white">Read More</button>
        </a>
    </div> 
    <div class="col-md-6"> 
      <button class="ourcausebtn1 form-control donate-popup camp_id" value="${fm.fundraisers_id}" style="background-color:rgb(26, 145, 135); color:white">Donate Now</button>
    </div>
    </center>
    <div class="container-fluid"></div>

  </div>
  </div>
<br><br> </div>


 	
</c:forEach>

</span>





<!-- 


<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(180, 176, 176, 0.445);">
    
   <div class="ourcausecontainer" style="position: relative;">
    <img src="/destiny/files/images/drintwater.jpg" class="ourcauseimage1">
    <span class="ourcausedonate">
        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-whatsapp"></i> Share</button>
        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(26, 145, 135); color:white"><i class="fa fa-facebook"></i> Share</button>
    </span>
  </div>

  <div class="img-text" style="text-align:left; padding: 20px 20px;">
    <div class="text-balance">
  
    <p style="font-size:25px; color:rgb(126, 131, 131)">Water For All Children</p>

    <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal : $ 25000  <span style="float:right">Raised : $ 18000  </span></span> <br><br>
    <div class="progress" style="height: 10px;">
        <div class="progress-bar  progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
         </div>
    </div>
      
    <p style="font-size:17px; overflow: hidden; color:rgb(155, 160, 160); text-align: justify; ">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.</p>
   </div>
    <center>
    <div class="col-md-6">
        <a href="cause-details" style="text-decoration: none">
          <button class="ourcausebtn1 form-control" style="background-color:rgb(26, 145, 135); color:white">Read More</button>
        </a>
    </div>
    <div class="col-md-6">
      <button class="ourcausebtn1 form-control donate-popup" style="background-color:rgb(26, 145, 135); color:white">Donate Now</button>
    </div>
    </center>
    <div class="container-fluid"></div>

  </div>
  </div>
<br><br> </div>

 -->

<!-- 
<div class="col-md-4">
    <div class="ourcausesheet" style="border:solid 1px rgba(175, 171, 171, 0.445);">
    
      <div class="ourcausecontainer" style="position: relative;">
        <img src="/destiny/files/images/type2.jpg" class="ourcauseimage1">
        <span class="ourcausedonate">
            <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(204, 94, 131); color:white"><i class="fa fa-whatsapp"></i> Share</button>
            <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(204, 94, 131); color:white"><i class="fa fa-facebook"></i> Share</button>
        </span>
      </div>
    
    <div class="img-text" style="text-align:left; padding: 20px 20px;">
    <div class="text-balance">
      <p style="font-size:25px; color:rgb(127, 133, 133)">Clean Water For All</p>
  
      <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal : $ 25000  <span style="float:right">Raised : $ 18000  </span></span> <br><br>
      <div class="progress" style="height: 10px;">
          <div class="progress-bar  progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
           </div>
      </div>
  
      <p style="font-size:17px; color:rgb(155, 160, 160); text-align: justify; overflow:hidden ">Lorem ipsum dolor sit amet, consectetur adipiscing ipsum dolor sit amet, consectetur elit. Vivamus in magna ac tellus fringilla eleifend.</p>
      </div>
     <center>
    <div class="col-md-6">
        <a href="cause-details" style="text-decoration: none">
          <button class="ourcausebtn1 form-control" style="background-color:rgb(204, 94, 131); color:white">Read More</button>
        </a>
    </div>
    <div class="col-md-6">
      <button class="ourcausebtn1 form-control donate-popup" style="background-color:rgb(204, 94, 131); color:white">Donate Now</button>
    </div>
    </center>
    <div class="container-fluid"></div>
 
    </div>
    </div>
<br><br> </div>

<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(185, 180, 180, 0.445);">
  
    <div class="ourcausecontainer" style="position: relative;">
      <img src="/destiny/files/images/type3.jpg" class="ourcauseimage1">
      <span class="ourcausedonate">
          <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(145, 90, 26); color:white"><i class="fa fa-whatsapp"></i> Share</button>
          <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(145, 90, 26); color:white"><i class="fa fa-facebook"></i> Share</button>
      </span>
    </div>

  <div class="img-text" style="text-align:left; padding: 20px 20px;">
      <div class="text-balance">
    
    <p style="font-size:25px; color:rgb(123, 128, 128)">New School Teachers</p>

    <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal : $ 25000  <span style="float:right">Raised : $ 18000  </span></span> <br><br>
    <div class="progress" style="height: 10px;">
        <div class="progress-bar  progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
         </div>
    </div>

    <p style="font-size:17px; color:rgb(155, 160, 160); text-align: justify; overflow: hidden ">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.</p>
  </div>    
  <center>
      <div class="col-md-6">
          <a href="cause-details" style="text-decoration: none">
            <button class="ourcausebtn1 form-control" style="background-color:rgb(145, 90, 26); color:white">Read More</button>
          </a>
      </div>
      <div class="col-md-6">
        <button class="ourcausebtn1 form-control donate-popup" style="background-color:rgb(145, 90, 26); color:white">Donate Now</button>
      </div>
      </center>
      <div class="container-fluid"></div>
   
  </div>
  </div>
<br><br> </div>

<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(185, 180, 180, 0.445);">
  
    <div class="ourcausecontainer" style="position: relative;">
      <img src="/destiny/files/images/kindergarten.JPG" class="ourcauseimage1">
      <span class="ourcausedonate">
          <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(12, 40, 82); color:white"><i class="fa fa-whatsapp"></i> Share</button>
          <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(12, 40, 82); color:white"><i class="fa fa-facebook"></i> Share</button>
      </span>
    </div>

  <div class="img-text" style="text-align:left; padding: 20px 20px;">
      <div class="text-balance">
    
    <p style="font-size:25px; color:rgb(123, 128, 128)">New Kindergarten</p>

    <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal : $ 25000  <span style="float:right">Raised : $ 18000  </span></span> <br><br>
    <div class="progress" style="height: 10px;">
        <div class="progress-bar  progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
         </div>
    </div>

    <p style="font-size:17px; color:rgb(155, 160, 160); text-align: justify; overflow: hidden">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.</p>
  </div>    
  <center>
      <div class="col-md-6">
          <a href="cause-details" style="text-decoration: none">
            <button class="ourcausebtn1 form-control" style="background-color:rgb(12, 40, 82); color:white">Read More</button>
          </a>
      </div>
      <div class="col-md-6">
        <button class="ourcausebtn1 form-control donate-popup" style="background-color:rgb(12, 40, 82); color:white">Donate Now</button>
      </div>
      </center>
      <div class="container-fluid"></div>
    
  </div>
  </div>
<br><br> </div>

<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(185, 180, 180, 0.445);">
  
    <div class="ourcausecontainer" style="position: relative;">
      <img src="/destiny/files/images/cloths.jpg" class="ourcauseimage1">
      <span class="ourcausedonate">
          <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(199, 90, 40); color:white"><i class="fa fa-whatsapp"></i> Share</button>
          <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(199, 90, 40); color:white"><i class="fa fa-facebook"></i> Share</button>
        </span>
    </div>

  <div class="img-text" style="text-align:left; padding: 20px 20px;">
      <div class="text-balance">
    
    <p style="font-size:25px; color:rgb(123, 128, 128)">Clothes For Everyone</p>

    <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal : $ 25000  <span style="float:right">Raised : $ 18000  </span></span> <br><br>
    <div class="progress" style="height: 10px;">
        <div class="progress-bar  progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
         </div>
    </div>

    <p style="font-size:17px; color:rgb(155, 160, 160); text-align: justify; overflow: hidden;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.</p>
  </div>    
  <center>
      <div class="col-md-6">
          <a href="cause-details" style="text-decoration: none">
            <button class="ourcausebtn1 form-control" style="background-color:rgb(199, 90, 40); color:white">Read More</button>
          </a>
      </div>
      <div class="col-md-6">
        <button class="ourcausebtn1 form-control donate-popup" style="background-color:rgb(199, 90, 40); color:white">Donate Now</button>
      </div>
      </center>
      <div class="container-fluid"></div>
   
  </div>
  </div>
<br><br> 
</div>

<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(185, 180, 180, 0.445);">
  
    <div class="ourcausecontainer" style="position: relative;">
      <img src="/destiny/files/images/water.jpg" class="ourcauseimage1">
      <span class="ourcausedonate">
        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(221, 207, 83); color:white"><i class="fa fa-whatsapp"></i> Share</button>
        <button class="ourcausebtn1 ourcausebtn2 form-control" style="width:100%; background-color:rgb(221, 207, 83); color:white"><i class="fa fa-facebook"></i> Share</button>
      </span>
    </div>

  <div class="img-text" style="text-align:left; padding: 20px 20px;">
      <div class="text-balance">
    
    <p style="font-size:25px; color:rgb(123, 128, 128)">Construction of Water Wells</p>

    <span style="font-size:15px; color:rgb(97, 100, 102)"><img src="/destiny/files/images/up.svg" style="width:20px; margin-top:-10px;"> Goal : $ 25000  <span style="float:right">Raised : $ 18000  </span></span> <br><br>
    <div class="progress" style="height: 10px;">
        <div class="progress-bar  progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
         </div>
    </div>

    <p style="font-size:17px; color:rgb(155, 160, 160); text-align: justify; overflow: hidden;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in magna ac tellus fringilla eleifend.</p>
  </div>    
  <center>
      <div class="col-md-6">
          <a href="cause-details" style="text-decoration: none">
            <button class="ourcausebtn1 form-control" style="background-color:rgb(221, 207, 83); color:white">Read More</button>
          </a>
      </div>
      <div class="col-md-6">
        <button class="ourcausebtn1 form-control donate-popup" style="background-color:rgb(221, 207, 83); color:white">Donate Now</button>
      </div>
      </center>
      <div class="container-fluid"></div>
    
  </div>
  </div>


<br><br> </div>

-->
<br><br>

</div>


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

    <script>
    $(function(){
        $(".donate-popup").click(function(){
            $(".close-button-main").click();
        })
    })
    </script>
    
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

</html>