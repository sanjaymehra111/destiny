<html>
<head>

    <!--<script async defer src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v3.2&appId=765465550279620&autoLogAppEvents=1"></script>-->
    
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

            .ourcausebtn1
            {
              width:50%;
              margin-top:20px;
              border-radius:25px;
              border:none;
            }
            .ourcausebtn1:active
            {
              transform: scale(0.98)
            }
            .ourcausebtn1:hover
            {
              box-shadow: 3px 5px 10px 0px rgb(139, 133, 133);
            }
    
</style>
         


</head>

<body style="font-family: algerrian sans-serif">


<!--Header Start-->

    <div class="header_import">
    <script>
    $(function(){
    $(".header_import").load("header");  
    })
    </script>
    </div>
    
<!--Header End-->



<!--Body Start-->

<div class="how-it-works-body_main">

<div class="how-body1" >
<div style="background-color: rgba(0, 0, 0, 0.37)">
<div class="container-fluid" >    

<div class="how-body1-main" style="margin-top:200px;">
    
<div class="col-md-8 section1-main" style="display:block">

<style>

.how-body1 .slick-item1
{
    width: 100%;
    height: 300px;
    overflow: hidden;
    
    
}

.how-body1 .slick-slide.slick-center 
{
transform: scale(1);
filter: grayscale(0%)blur(0PX) ;
}


.how-body1 .slick-slide 
{
   
    filter: grayscale(100%) blur(2PX);
    transform: scale(0.9);
	transition: .3s ease-in-out all;
}

.how-body1 .slick-slide:hover
{
    cursor: pointer;
}


.how-body1 .slick1-img1
{
background-size: 100% 100%;
width:100%; 
height: 300px; 
border-radius: 15px;
}

.how-body1 .slick-slide.slick-center:hover .slick1-bg_color
{
    background-color: rgba(0, 0, 0, 0.534);
    height: 100%;
    margin-left: -15px;
    margin-right: -15px;
    overflow: hidden;
    border-radius: 15px;
}


.how-body1 .slick-slide.slick-center:hover .slick1-content1
{
    display: block;
}

.how-body1 .slick-prev-no, .slick-next-no
{

   opacity: 1;
   font-size: 0px;
   padding: none;
   width: 0px;
   border: none;
   opacity: 0;
} 



.how-body1 .slick1-content1
{
    display: none;
    text-align: center;
    color:white;
    font-size: 25px;
    height: 95%;
    overflow: hidden;
}

.how-body1 .slick-next
{
    background-image: url('/destiny/files/images/right.jpg');
    background-size: 100% 100%;
    text-indent: -9999;
    
} 

.how-body1 .slick-prev
{
    background-image: url('/destiny/files/images/left.jpg');
    background-size: 100% 100%;
    text-indent: -9999;
} 

.how-body1 .slick-prev:focus
{
    background-image: url('/destiny/files/images/left.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
}

.how-body1 .slick-prev:hover
{
    background-color: white;
    background-image: url('/destiny/files/images/left.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
    box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
    z-index: 999;

}


.how-body1 .slick-next:focus 
{
    background-image: url('/destiny/files/images/right.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
}

.how-body1 .slick-next:hover
{
    background-color: white;
    background-image: url('/destiny/files/images/right.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
    box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
    z-index: 999;
}



.how-body1 .slick-dots li button 
{

    
    background-color: rgb(255, 255, 255);
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

window.onload = (function(){
     
     $(".section1-main").css({"display":"block"});
     
     })
    
$(function(){


  $('.slick-item1').slick({
      
             infinite: true,
             speed: 500,
             slidesToShow: 3,
             centerPadding:'20',
             centerMode:true,
             autoplay:true,
             arrows: true,
             dots:true,

//      dotsClass: 'custom_paging',
//  customPaging: function (slider, i) 
//            {
//            console.log(slider);
//          return (i + 1) + '/' + slider.slideCount;
//            },
    
    
                 responsive: [                        
                {
                 breakpoint: 990,
                 settings: {
                    slidesToShow: 3,
                 }
               },

               {
                 breakpoint: 700,
                 settings: {
                    slidesToShow: 1,

                 }
               },
           ]
             
     });
   
 });

</script>

<div class="slick-item1">

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/cloths.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/indigenoud1.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/indigenous.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/voulnteer-b.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/voulnteer-d.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/voulnteer-a.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/indigenoud1.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/indigenous.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

<div class="col-md-2 slick1-img1" style="background-image: url('/destiny/files/images/voulnteer-b.jpg')">
<div class="slick1-bg_color">    
<div class="content">
<p class="slick1-content1">
<br>
<br>
<span>Rashini</span>
<br>
<span style="font-size:17px;">Jammu</span>
<br>
<span>His family raised &#8377; 5 lakh for her blood cancer.</span></p>    
</div>
</div>
</div>

</div>
<br><br>
<br><br>
<br><br>
</div> 


<div class="col-md-4" style="background-color:rgba(255, 255, 255, 0.932); margin-top: -50px; border-radius: 15px; box-shadow: 0px 0px 20px 5px rgba(5, 5, 5, 0.692)">
<div class="container-fluid">   
<br><br>

<style>

.how-form1
{
    background-color: transparent;
    color: black;
    outline-style: none;
    border-top: none;
    border-left: none;
    border-right: none;
    border-bottom: solid #000000 1px;
    padding-left: 10px;
    padding-right: 1 0px;
    height: 40px;
    font-size: 17px;
    width: 100%;
}
.how-form1-submit
{
    height: 40px;
    border-radius: 25px;
    color:rgb(255, 255, 255);
    background-color: rgb(77, 112, 112);
    transition: 0.2s ease-in-out;
    
}
.how-form1-submit:hover
{
    background-color: rgb(34, 54, 54);
}

.how-form1-submit:active
{
    transform: scale(0.98)
}

</style>


<form name="how-form1">
<p style="font-size: 35px; line-height: 30px; color:rgba(39, 34, 34, 0.671); text-align: center; font-weight: bold;">
    Your loved one's life is important to us too.
</p>
<p style="font-size: 20px; line-height: 20px; color:rgba(39, 34, 34, 0.671); text-align: center;">
    Start a fundraiser and talk to our 
        experts to raise money now!
</p>        

<input type="text" class="how-form1" name="form1_name" placeholder="Name"> <br>
<input type="email" class="how-form1" name="form1_email" placeholder="Email"> <br>
<input type="number" class="how-form1" name="form1_contact" placeholder="Contact"> <br>
<input type="text" class="how-form1" name="form1_city" placeholder="City"><br><br>
<button class="form-control how-form1-submit" type="submit">Help Now</button>

</form>

<br><br>
</div>
</div>
</div>  

</div>
<br><br>
</div>
</div>    



<div class="how-body2">
<div class="container">
<br><br><br>
<p style="text-align: center; font-size: 25px;">What Is Crowdfunding? Start. Share. Collect. Change.</p>    
<hr style="border:solid 1.2px rgb(153, 187, 29); text-align: center; width: 50%;">
<br><br>
<div class="col-md-12" style="text-align: center" >

<style>
    
.videoplay:hover
{
    cursor: pointer;
}    
.videoplay:active
{
    transform: scale(0.95)
}    

.videostart1
{
    display:none;
    z-index:9999;
    left:0;
    top:0;
    width:100%;
    height:100%;
    position: fixed;
    overflow: hidden;
    background-color: rgba(0, 0, 0, 0.829);
}

.videostart2
{

    padding:10px;
    width:100%;
    animation-name: testing1;
    animation-duration: 2s;
    
}

@keyframes testing1
{
    0%
    {
        transform: scale(0.5);
    }

    100%
    {
        transform: scale(1);
    }

}


.closed
{
color:white; 
font-size: 30px;
position: relative;  
float: right; 
margin-bottom: -15px; 
margin-right: -15px; 
z-index: 1;
}
.closed:hover
{
    cursor: pointer;
    color:rgb(165, 37, 37);
}
.closed:active
{
    transform: rotate(45deg);
    transition-duration: 0.2s;
}

</style>

<script> 
$(function(){
    var a=$("#start-stop-video")[0];

    $(".videoplay-button").click(function(){
        $(".videostart1").css({"display":"block"});
        a.play();
        
    })
    $(".closed").click(function(){
    $(".videostart1").css({"display":"none"});
    a.pause();

})
})


</script> 



<div class="videoplay"><img class="videoplay-button" src="/destiny/files/images/click.png" style="width:70px;"></div>

<div class="videostart1">
    <div class="videostart2">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="margin-top:40px;">
        <i class="fa fa-times-circle closed"></i>

        <video id="start-stop-video" width="100%" controls style="position: relative;">
        <source  src="/destiny/files/images/video_sample.mp4">
        </video>

        </div>
    </div>
</div>
</div>


<div class="col-md-12">
<br><br>

<p style="text-align: center; font-size: 20px; text-align: justify;">
Thousands fight for their lives from fatal diseases and unforeseen medical emergencies every day. Families are often left drained of all their savings due to insufficient insurance coverage and are forced to take loans at high interest rates. Many also have to risk delaying or stopping treatment due to lack of funds.
</p>
<br>
<p style="text-align: center; font-size: 20px; text-align: justify;">
        At Destiny World, we believe saving lives is a service. With the help of millions of donors online, who step up to generously support friends, colleagues and strangers with contributions, we are trying to reach each and every individual across India to ensure that no life is ever lost due to lack of money.
</p>    
</div>


</div>
</div>

<br><br>


<div class="how-body3" style="background-color: rgba(226, 226, 226, 0.534);">
<div class="container">
<br><br><br>
        <p style="text-align: center; font-size: 25px;">
            Medical crowdfunding helps you raise funds online for healthcare expenses from friends, family and strangers <br><br>
            15,000 patients with following medical conditions funded successfully</p>    
        <hr style="border:solid 1.2px rgb(153, 187, 29); text-align: center; width: 50%;">
<br><br>


<style>
.body3-items .slick-slide
{
    cursor: pointer;
    height: 300px;
    width:100%;
}


.body3-items .slick-next
{
    background-image: url('/destiny/files/images/right.jpg');
    background-size: 100% 100%;
    text-indent: -9999;
    
} 

.body3-items .slick-prev
{
    background-image: url('/destiny/files/images/left.jpg');
    background-size: 100% 100%;
    text-indent: -9999;
} 

.body3-items .slick-prev:focus
{
    background-image: url('/destiny/files/images/left.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
}

.body3-items .slick-prev:hover
{
    background-color: white;
    background-image: url('/destiny/files/images/left.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
    box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
    z-index: 999;

}


.body3-items .slick-next:focus 
{
    background-image: url('/destiny/files/images/right.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
}

.body3-items .slick-next:hover
{
    background-color: white;
    background-image: url('/destiny/files/images/right.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
    box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
    z-index: 999;
}



.body3-items .slick-dots li button 
{

    background-color: rgb(82, 73, 73);
    border-radius: 25px;
    width: 12px;
    height: 12px;
    text-indent: -9999px;
}

.body3-items .slick-dots li.slick-active
{
    transform: scale(1.2);
    opacity: 0.3;
}

</style>
 
<script>
$(function(){
  
  $('.body3-items').slick({
      
             infinite: true,
             speed: 500,
             slidesToShow: 4,
             slidesToScroll:2,
             autoplay:true,
             arrows: true,
             //centerMode:true,
             dots:true,

   
    
                 responsive: [                        
                {
                 breakpoint: 990,
                 settings: {
                    slidesToShow: 3,
                    slidesToScroll:2,
                    arrows: false,
                    dots:true,
                 }
               },

               {
                 breakpoint: 700,
                 settings: {
                    slidesToShow: 1,
                    slidesToScroll:1,
                    arrows: false,
                    dots:true,

                 }
               },
           ]
             
     });
   
 });
</script>

<div class="body3-items" style="width:100%;">

<div class="col-md-1">
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; height:280px; overflow: hidden;">
    <br><br>
<center><img src="/destiny/files/images/body3-item1.png" style="width:100px; height: 100px;"></center>
<hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

<p style="text-align: center; font-size: 20px; font-weight: bold">Accident & Injury</p>
<p style="text-align: center; font-size: 20px;">Maximum Raised &#8377; 50 lakhs.</p>
<br>


</div>
</div>

<div class="col-md-1">
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; height:280px; overflow: hidden;">
    <br><br>

<center><img src="/destiny/files/images/body3-item2.png" style="width:100px; height: 100px;"></center>

<hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

<p style="text-align: center; font-size: 20px; font-weight: bold">Liver Transplant</p>
<p style="text-align: center; font-size: 20px;">Maximum Raised &#8377; 50 lakhs.</p>
<br>


</div>
</div>

<div class="col-md-1">
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; height:280px; overflow: hidden;">
    <br><br>
<center><img src="/destiny/files/images/body3-item3.png" style="width:100px; height: 100px;"></center>

<hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

<p style="text-align: center; font-size: 20px; font-weight: bold">Kidney Transplant</p>
<p style="text-align: center; font-size: 20px;">Maximum Raised &#8377; 50 lakhs.</p>
<br>


</div>
</div>

<div class="col-md-1"> 
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; height:280px; overflow: hidden;">
    <br><br>
<center><img src="/destiny/files/images/body3-item4.png" style="width:70px; height: 100px;"></center>

<hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

<p style="text-align: center; font-size: 20px; font-weight: bold">Cancer Treatment</p>
<p style="text-align: center; font-size: 20px;">Maximum Raised &#8377; 50 lakhs.</p>
</div>
</div>

<div class="col-md-1">
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; height:280px; overflow: hidden;">
    <br><br>
<center><img src="/destiny/files/images/body3-item5.png" style="width:100px; height: 100px;"></center>

<hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

<p style="text-align: center; font-size: 20px; font-weight: bold">Heart Transplant</p>
<p style="text-align: center; font-size: 20px;">Maximum Raised &#8377; 50 lakhs.</p>
<br>


</div>
</div>

<div class="col-md-1">
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; height:280px; overflow: hidden;">
    <br><br>
<center><img src="/destiny/files/images/body3-item6.png" style="width:100px; height: 100px;"></center>

<hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

<p style="text-align: center; font-size: 20px; font-weight: bold">Preterm Baby Care</p>
<p style="text-align: center; font-size: 20px;">Maximum Raised &#8377; 50 lakhs.</p>
<br>


</div>
</div>

<div class="col-md-1">
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; height:280px; overflow: hidden;">
    <br><br>
<center><img src="/destiny/files/images/body3-item7.png" style="width:100px; height: 100px;"></center>

<hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

<p style="text-align: center; font-size: 20px; font-weight: bold">Brain Surgery</p>
<p style="text-align: center; font-size: 20px;">Maximum Raised &#8377; 50 lakhs.</p>
<br>


</div>
</div>

</div>

    <br><br><br>
</div>
</div>

<br><br>

<div class="how-body4">
<div class="container">  
<br>
    <p style="text-align: center; font-size: 25px;">How Crowdfunding Works on Destiny World</p>
    <hr style="border:solid 1.2px rgb(153, 187, 29); text-align: center; width: 50%;">
    <br><br>

    
    <div class="col-md-12" style="text-align: center">
    
    <div class="col-md-3">
        <span style="font-size: 80px; border-radius: 50px; font-weight: bold; border: solid 5px rgb(41, 34, 109);">&nbsp;1<span style="font-size: 40px;">.</span>&nbsp;</span>
    </div>
    <div class="col-md-9" style="background-color: rgb(41, 34, 109); border-radius: 50px; margin-top: 15px;">
     <br> <span style="text-align: center; font-size: 25px; color:white; font-weight: bold;">Step 1: Create your fundraiser instantly</span> <br><br>
    </div>
    
    </div>
<br>
    <div class="col-md-12" style="text-align: center">
    
    <div class="col-md-3">
        <span style="font-size: 80px; border-radius: 50px; font-weight: bold; border: solid 5px rgb(48, 162, 170);">&nbsp;2<span style="font-size: 40px;">.</span>&nbsp;</span>
    </div>
    <div class="col-md-9" style="background-color: rgb(48, 162, 170); border-radius: 50px; margin-top: 15px;">
    <br>
        <span style="text-align:  center; color:white; font-size: 25px; font-weight: bold;">Step 2: Share your fundraiser online</span><br><br>
    </div>
    
    </div>
<br>
    <div class="col-md-12" style="text-align: center">
    
    <div class="col-md-3">
        <span style="font-size: 80px; border-radius: 50px; font-weight: bold; border: solid 5px rgb(219, 54, 54);">&nbsp;3<span style="font-size: 40px;">.</span>&nbsp;</span>
    </div>
    <div class="col-md-9" style="background-color: rgb(219, 54, 54);  border-radius: 50px; margin-top: 15px;">
    <br>
        <span style="text-align: center; font-size: 25px; font-weight: bold; color: white">Step 3: Receive donations from around the world</span> <br><br>
    </div>
    
    </div>
<br>
    <div class="col-md-12" style="text-align: center">
    
    <div class="col-md-3">
        <span style="font-size: 80px; border-radius: 50px; font-weight: bold; border: solid 5px rgb(165, 202, 63);">&nbsp;4<span style="font-size: 40px;">.</span>&nbsp;</span>
    </div>
    <div class="col-md-9" style="background-color: rgb(165, 202, 63);  border-radius: 50px; margin-top: 15px;">
    <br>
        <span style="text-align: center; color:white; font-weight: bold; font-size: 25px;">Step 4: Transfer funds to the hospital directly</span> <br><br>
    </div>
    
    </div>


</div>
</div>

<br><br>

<div class="how-body5" style="background-color:rgba(194, 194, 194, 0.253)">
<div class="container">  
    <br><br>
    <p style="text-align: center; font-size: 25px;">Why fundraise with Destiny World</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 50%;">
    <br><br>


<div class="col-md-6">
    
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(41, 34, 109);">&nbsp;1&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Create an automated donor appeal in 2 minutes with our storybuilder</p>
    </span>
  </td>
</tr>
</table>
<br><br>
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(34, 109, 80);">&nbsp;2&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Run your fundraiser from anywhere with our Android app</p>
    </span>
  </td>
</tr>
</table>
<br><br>
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(185, 124, 74);">&nbsp;3&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Get help anytime from dedicated relationship managers</p>
    </span>
  </td>
</tr>
</table>
<br><br>
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(109, 34, 65);">&nbsp;4&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Get donations from over 100 countries with multiple payment methods</p>
    </span>
  </td>
</tr>
</table><br><br>


</div>

<div class="col-md-6">
    
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(66, 206, 206);">&nbsp;5&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Fundraise lakhs of rupees within days by using customised fundraising calendar
        </p>
    </span>
  </td>
</tr>
</table>
<br><br>
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(184, 38, 38);">&nbsp;6&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Take your loved one home without loans or payback liability</p>
    </span>
  </td>
</tr>
</table>
<br><br>
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(31, 24, 19);">&nbsp;7&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Only platform to offer Indian, USA and UK tax benefits
        </p>
    </span>
  </td>
</tr>
</table>
<br><br>
<table style="line-height: 35px;">
<tr>
  <td style="vertical-align: top;">
        <span style="font-size: 20px; border-radius: 50px; font-weight: bold; border: solid 1.5px rgb(199, 43, 178);">&nbsp;8&nbsp;</span>
    </td>
  <td>
    <span style="font-size: 20px; color: rgb(80, 80, 78);">
    <p style=" margin-left: 20px; line-height: 20px; text-align: justify">Additional marketing and content support provided for select cases</p>
    </span>
  </td>
</tr>
</table>


</div>

</div>                
<br><br>
</div>

<br><br>


<div class="how-body6">
<div class="container-fluid">  

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
    
    $(".speed-image").css({"transform":"scale(1)"});
    $(".eligibility-image").css({"transform":"scale(0.80)"});
    $(".cost-image").css({"transform":"scale(0.80)"});
    $(".amount-image").css({"transform":"scale(0.80)"});


    $(".speed-section").show();
    $(".eligibility-section").hide();
    $(".amount-section").hide();
    $(".cost-section").hide();

    });

    $(".eligibility-image").click(function(){
    
     $(".eligibility-image").css({"transform":"scale(1)"});
    $(".speed-image").css({"transform":"scale(0.8)"});
    $(".cost-image").css({"transform":"scale(0.8)"});
    $(".amount-image").css({"transform":"scale(0.8)"});

    $(".eligibility-section").show();
    $(".speed-section").hide();
    $(".amount-section").hide();
    $(".cost-section").hide();
    
    });


    $(".amount-image").click(function(){
    
        $(".eligibility-image").css({"transform":"scale(0.8)"});
    $(".speed-image").css({"transform":"scale(0.8)"});
    $(".cost-image").css({"transform":"scale(0.8)"});
    $(".amount-image").css({"transform":"scale(1)"});

    $(".amount-section").show();
    $(".speed-section").hide();
    $(".eligibility-section").hide();
    $(".cost-section").hide();
    
    });

    $(".cost-image").click(function(){
    
     
        $(".eligibility-image").css({"transform":"scale(0.8)"});
    $(".speed-image").css({"transform":"scale(0.8)"});
    $(".cost-image").css({"transform":"scale(1)"});
    $(".amount-image").css({"transform":"scale(0.8)"});

    $(".cost-section").show();
    $(".speed-section").hide();
    $(".eligibility-section").hide();
    $(".amount-section").hide();
    
    });

})
</script>

<style>

    
.speed-section, .eligibility-section, .amount-section, .cost-section
{

    animation-name: testing11;
    animation-duration: 2s;
    
}

@keyframes testing11
{
    0%
    {
        opacity: 0;
        transform: scale(0.5);
    }

    100%
    {
        opacity: 1;
        transform: scale(1);
    }

}

.images-style
{
    width:60px;
    height:60px;
    border-radius: 50px;
    border:solid 5px rgb(133, 188, 192);
    transition: 0.2s ease-in-out;
    transform: scale(0.8)
}

.images-style:hover
{
    cursor: pointer;
    border:solid 5px rgb(16, 72, 77);
}

</style>



    <br><br>
    <p style="text-align: center; font-size: 25px;">Crowdfunding vs Other healthcare financing solution</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 50%;">
    <br><br>

<div class="col-md-12" style="text-align: center"> 
    <img src="/destiny/files/images/speed.png" class="images-style speed-image" style="transform: scale(1)">
    <img src="/destiny/files/images/eligibility.png" class="images-style eligibility-image">
    <img src="/destiny/files/images/money.png" class="images-style amount-image">
    <img src="/destiny/files/images/repayment.png" class="images-style cost-image">

    <br><br>

</div>



<div class="col-md-12" style="background-color: rgba(199, 199, 199, 0.452); border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
<br>


<!--SPEED Start-->
<div class="speed-section" style="display: block">


    <p style="text-align: center; font-size: 25px;">SPEED</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 100%;">
    <br>    

 


<div class="col-md-4">

        <div class="height-fixer" style=" background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; height: 350px;  border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); overflow: hidden; text-overflow: ellipsis">
            <div class="height-fixer-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%; ">
          <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Crowdfunding on Destiny World</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">You can start a fundraiser on your own in less than 5 minutes</p>
            </span>
        </td>
        </tr>
        </table>
        <br><br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14)"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">You can start a fundraiser on your own in less than 5 minutes</p>
            </span>
        </td>
        </tr>
        </table>
        <br><br>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixer" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 350px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixer-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Insurance</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Assuming you do have a health insurance, it can still take weeks to sort the paperwork, before you can claim the insurance amount.</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br><br>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixer" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 350px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixer-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Loans</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Assuming you do have a health insurance, it can still take weeks to sort the paperwork, before you can claim the insurance amount.</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br><br>
    </div>
    </div>
    <br><br>
</div>

</div>
<!--SPEED  End-->



<!--ELIGIBILITY Start-->
<div class="eligibility-section" style="display: none">

    <p style="text-align: center; font-size: 25px;">ELIGIBILITY</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 100%;">
    <br>    

 


<div class="col-md-4">

        <div class="height-fixerel" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
            <div class="height-fixerel-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
          <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Crowdfunding on Destiny World</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">As long as you are able to prove that your medical emergency is genuine, you can raise funds on ImpactGuru.com</p>
            </span>
        </td>
        </tr>
        </table>
        <br><br>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixerel" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixerel-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Insurance</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Health insurance can be extremely confusing because of the difference in terms and conditions in policies. Many critical illnesses including cancer are not covered in most basic plans of insurance companies</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br><br>

        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Pre-existing medical conditions are not covered by insurance</p>
           <br> </span>
        </td>
        </tr>
        </table>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixerel" class="height-fixer" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixerel-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Loans</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Amount of loans you can get are significantly restricted by your credit history, age, eligibility, documentation, ability to pledge collaterals, etc.</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br><br>
    </div>
    </div>
    <br><br>
</div>

</div>
<!--ELIGIBILITY End-->



<!-- AMOUNT DISBURSAL Start-->
<div class="amount-section" style="display: none">

    <p style="text-align: center; font-size: 25px;">AMOUNT DISBURSAL</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 100%;">
    <br>    

 


<div class="col-md-4">

        <div class="height-fixerad" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
            <div class="height-fixerad-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
          <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Crowdfunding on Destiny World</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">We understand medical treatments such as cancer, transplants and surgeries etc can cost up to &#8377;50 Lakhs or more so there is no limit to the amount of funds you can raise, as long as you have the medical estimations to support it and the networks to raise it</p>
            </span>
        </td>
        </tr>
        </table>
        <br><br>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixerad" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixerad-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Insurance</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">You can only claim the amount covered within the policy</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br>

        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Most policies have a cover of up to &#8377;5 Lakhs only</p>
            </span>
        </td>
        </tr>
        </table>

        <br>

        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Many policies have high copay and deductibles implying that you need to pay out of pocket first before you claim the cover</p>
          <br>  </span>
        </td>
        </tr>
        </table>


    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixerad" class="height-fixer" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixerad-2"  style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Loans</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">It is not always possible to get a loan to cover all your medical expenses</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">The maximum loan someone can get for healthcare expenses is typically Rs 2-3 lakhs. Such loans are only possible to secure if you DON’T have a critical illness</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br><br>
    </div>
    </div>
    <br><br>
</div>

</div>
<!--AMOUNT DISBURSAL  End-->



<!-- SET UP COSTS AND REPAYMENT Start-->
<div class="cost-section" style="display: none">
    
    <p style="text-align: center; font-size: 25px;">SET UP COSTS AND REPAYMENT</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 100%;">
    <br>    

 


<div class="col-md-4">

        <div class="height-fixerad" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
            <div class="height-fixerad-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
          <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Crowdfunding on Destiny World</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Setting up a fundraiser is absolutely free. The funds you raise are donations so there is no need to payback liability</p>
            </span>
        </td>
        </tr>
        </table>
        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Destiny World charges only a nominal fee for fundraising</p>
            </span>
        </td>
        </tr>
        </table>
        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Also, if you raise nothing, you pay nothing</p>
        <br> </span>
        </td>
        </tr>
        </table>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixerad" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixerad-2" style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Insurance</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">You need to pay monthly or annual premiums and can claim only the coverage amount during a medical need</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br>

        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Average health insurance coverage of Rs 5 lakhs in India is very low for most critical illnesses</p>
            </span>
        </td>
        </tr>
        </table>

        <br>
        <br>

      

    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

    <div class="height-fixerad" class="height-fixer" style="background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); height: 400px; overflow: hidden; text-overflow: ellipsis">
        <div class="height-fixerad-2"  style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%;">
        <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Loans</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">You need to pay back your loans in monthly instalments / EMI with interest rate often exceeding 15%</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <i class="fa fa-check-circle" style="font-size: 30px; color:rgb(47, 158, 14);"></i>
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Banks / NBFCs usually reject loans for healthcare expenses due to risk of default and death</p>
            </span>
        </td>
        </tr>
        </table>
       
        <br><br>
    </div>
    </div>
    <br><br>
</div>

</div>
<!--SET UP COSTS AND REPAYMENT End-->


</div>







</div>
</div>      

<br><br>

<div class="how-body7">
<div class="container-fluid">  

    <br><br>
    <p style="text-align: center; font-size: 25px;">Our Impact So Far</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 50%;">
    <br><br>
    <img src="/destiny/files/images/globe.png" style="width:100%; height: 100%">
</div>                
</div>


<br><br>

<div class="how-body8" style="background-color: rgba(190, 187, 187, 0.342);">
        <div class="container-fluid">  
        
            <br><br>
            <p style="text-align: center; font-size: 25px;">Pricing</p>
            <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 50%;">
            <br><br>

            
<div class="col-md-4">

        <div style=" background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; height: 350px;  border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); overflow: hidden; text-overflow: ellipsis">
            <div style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%; ">
          <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Self-Driven</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <img src="/destiny/files/images/single-user.png" style="width:80px; height: 90px">
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Fundraise by yourself</p> 
            <p style=" margin-left: 20px; font-size: 25px; line-height: 20px; font-weight: bold; color:white; text-align: justify; margin-top:20px;">5 %</p> 
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify; margin-top:20px;">+ 3% Payment Gateway Fees</p>

            </span>
        </td>
        </tr>
        </table>
        
        <br><br>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

        <div style=" background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; height: 350px;  border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); overflow: hidden; text-overflow: ellipsis">
            <div style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%; ">
          <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Collaborate</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <img src="/destiny/files/images/dual-user.png" style="width:80px; height: 90px">
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify; ">We strategize, you execute</p> 
            <p style=" margin-left: 20px; font-size: 25px; line-height: 20px; font-weight: bold; color:white; text-align: justify; margin-top:20px;">8 %</p> 
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify; margin-top:20px;">+ 3% Payment Gateway Fees</p>

            </span>
        </td>
        </tr>
        </table>
        
        <br><br>
    </div>
    </div>
    <br><br>
</div>

<div class="col-md-4">

        <div style=" background-image:url('/destiny/files/images/background-article.jpg'); background-size: 100% 100%; height: 350px;  border-radius: 10px; box-shadow: 0px 0px 20px 2px rgba(0, 0, 0, 0.438); overflow: hidden; text-overflow: ellipsis">
            <div style="background-color:rgba(0, 0, 0, 0.63); color:white;  border-radius: 10px; width: 100%; height: 100%; ">
          <br>
        <p style="text-align: center; font-size: 23px; margin-left: 15px; font-weight: bold; margin-right: 15px;">Accelerate</p>
        <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 90%;">  

        <br>
        <table style="line-height: 35px; margin-left: 15px; margin-right: 15px;">
        <tr>
        <td style="vertical-align: top;">
                <img src="/destiny/files/images/user-multi.png" style="width:90px; height: 100px">
            </td>
        <td>
            <span style="font-size: 20px; color: rgb(80, 80, 78);">
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">Boost your fundraising with our help</p>
            <p style=" margin-left: 20px; font-size: 25px; line-height: 20px; font-weight: bold; color:white; text-align: justify; margin-top:20px;">12 %</p>
            <p style=" margin-left: 20px; line-height: 20px; color:white; margin-top:20px; text-align: justify">+3% Payment Gateway Fees</p>
            <p style=" margin-left: 20px; line-height: 20px; color:white; text-align: justify">+ Marketing Costs</p>

            </span>
        </td>
        </tr>
        </table>
        
        <br><br>
    </div>
    </div>
    <br><br>
</div>

<p style=" margin-left: 20px; line-height: 20px; color:rgb(0, 0, 0); text-align: center">*Figures mentioned are approximate.Terms and conditions apply. Please visit our Pricing Page to know full pricing details.</p><br>


</div>        





</div>


<div class="how-body9">
<div class="container-fluid">  
        
                <br><br><br>
                <p style="text-align: center; font-size: 25px;">Successfully crowdfunded for patients across all major hospitals in India</p>
                <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 50%;">
                <br><br>


<div class="container">

<div class="body3-items" style="width:100%; height: 150px;">

<div class="col-md-1">
<br>
<div class="body3-item1" style="text-align: center;  background-color: white; height:100px; border-radius: 15px; box-shadow: 0px 0px 10px 0px black;   overflow: hidden;">
<img src="/destiny/files/images/success-fortis.png" style="width:100%; height: 100%;">
</div>

</div>

<div class="col-md-1">
<br>
<div class="body3-item1" style="text-align: center; background-color: white; height:100px; border-radius: 15px; box-shadow: 0px 0px 10px 0px black;   overflow: hidden;">
<center><img src="/destiny/files/images/success-glb.jpg" style="width:100px; height: 100%;"></center>


</div>

</div>

<div class="col-md-1">
<br>
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; box-shadow: 0px 0px 10px 0px black;  height:100px; overflow: hidden;">


<center><img src="/destiny/files/images/success-gleneadgles.png" style="width:100%; height: 100%;"></center>


</div>

</div>

<div class="col-md-1">
<br>
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; box-shadow: 0px 0px 10px 0px black;  height:100px; overflow: hidden;">


<center><img src="/destiny/files/images/success-kanchi.png" style="width:100%; height: 100%;"></center>


</div>

</div>

<div class="col-md-1">
<br>
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; box-shadow: 0px 0px 10px 0px black;  height:100px; overflow: hidden;">


<center><img src="/destiny/files/images/success-max.png" style="width:100%; height: 100%;"></center>


</div>

</div>

<div class="col-md-1">
<br>
<div class="body3-item1" style="text-align: center; background-color: white; border-radius: 15px; box-shadow: 0px 0px 10px 0px black;  height:100px; overflow: hidden;">


<center><img src="/destiny/files/images/success-narayana.png" style="width:100%; height: 100%;"></center>


</div>

</div>


</div>

</div>

</div>        
</div>

<br><br>

<div class="how-body10" style="background-color: rgba(190, 187, 187, 0.288)">
<div class="container-fluid">  
    
<script>
$(function(){
    $(".rotate").click(function(){
        $(this).toggleClass("up");
    })
    
})
</script>

<style>

.rotate {
    transition: all .5s linear;
    border-radius: 50px;
    
}
.rotate:hover {
    cursor: pointer;
    color:white;
    background-color: rgb(202, 205, 206);
    border-radius: 50px;
}
.rotate.up {
    transform:rotate(180deg);
    border-radius: 50px;
}


</style>

    
    <br><br>
    <p style="text-align: center; font-size: 25px;">FAQs</p>
    <hr style="border:solid 1.5px rgb(153, 187, 29); text-align: center; width: 50%;">
    <br><br>

    <div class="col-md-2"></div>
    <div class="col-md-8" style="text-align: justify">         
<div class="details1" style="background-color: white; border-radius: 15px;">
    <div class="container-fluid">
        <div class="detail1"  style="font-size:25px; text-align: center; margin-top:15px; margin-bottom:15px;">
        <span>
                <i  data-target="#demo" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> 
                What is Destiny World ?
        </span>
        </div>
        <div id="demo" class="collapse" style="font-size:20px">
                Destiny World is India's leading online crowdfunding platform that enables NGOs to fund their programs as well as individuals to fund their medical expenses, creative projects and personal projects. Alternatively, it allows you to donate to a cause you support or, choose from a host of vetted causes here on Destiny World.

          <br><br>
        </div>
    </div>
</div>
<br>
    
<div class="details1" style="background-color: white; border-radius: 15px;">
        <div class="container-fluid">
            <div class="detail1"  style="font-size:25px; text-align: center; margin-top:15px; margin-bottom:15px;">
            <span>
                <i  data-target="#demo2" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> </span>
                How does Destiny World disburse funds during emergencies ? 
            </div>
            <div id="demo2" class="collapse" style="font-size:20px">
                    We understand that many campaigners, especially medical causes, cannot wait until the fundraiser closes and often need to make payments to hospitals in parts. Unlike many platforms, on Destiny World, you can request for partial or full fund withdrawal before your fundraiser closes! Go to your dashboard, click on “Withdraw Funds”, enter the amount you wish to withdraw and upload the documents required (bank details and scanned copies of PAN and Aadhar cards).
                <br>
              <br>
            </div>
        </div>
</div>

<br>

<div class="details1" style="background-color: white; border-radius: 15px;">
        <div class="container-fluid">
            <div class="detail1"  style="font-size:25px; text-align: center; margin-top:15px; margin-bottom:15px;">
            <span>
                    <i  data-target="#demo3" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> 
                    What do I need to start a fundraiser ?
            </span>
            </div>
            <div id="demo3" class="collapse" style="font-size:20px">
                    You can create a fundraiser on Destiny World in less than 5 mins! Click on the start a fundraiser button and from there you will require the following to complete your fundraiser.
                    <br><br>1. Your personal details, including your name, phone number and email.
                   <br><br>2. Add details about your fundraiser, including a title, images, a story (your appeal to potential donors - if your cause is medical, a storybuilder will appear in the third step to help you write your story), name of the beneficiary and the goal amount.
                   <br><br>3. Add supporting documents like the patients’ medical reports, doctor’s letter, medical bills etc.
                   <br><br> Watch this video to know how to build a great fundraiser!
                <br>
              <br>
            </div>
        </div>
</div>


<br>

<div class="details1" style="background-color: white; border-radius: 15px;">
        <div class="container-fluid">
            <div class="detail1"  style="font-size:25px; text-align: center; margin-top:15px; margin-bottom:15px;">
            <span>
                    <i  data-target="#demo4" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> 
                    How long does it take to receive funds ?
            </span>
            </div>
            <div id="demo4" class="collapse" style="font-size:20px">
                    Fund transfers usually take 3-5 working days for domestic funds and 7-10 working days for international funds after the request has been made. In case of emergencies or if the above mentioned time period has passed, get in touch with us at info@impactguru.com and we will revert at the earliest. 

           <br><br> You can also call us at 022-49717414
                <br>
              <br>
            </div>
        </div>
</div>
<br><br>

</div>
</div>                
</div>







</div>

            <!--Body End-->




<!--Footer Start-->

    <div class="footer_import">
    <script>
    $(function(){
    $(".footer_import").load("footer");
    })
    </script>
    </div>
  

<!--Footer End-->

</body>
</html>