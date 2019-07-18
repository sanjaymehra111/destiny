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
<body style="font-family: algerrian sans-serif;  background-color: rgba(182, 184, 184, 0.11);">

       
<!--Header Start-->

    <div class="header_import">
    <script>
    $(function(){
    $(".header_import").load("header");  
    })
    </script>
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
    
        <div class="cause_title">Help My Friend Rahul</div>

        <br><br>
        <div class="col-md-5">
        <span class="t-amount amount-text">Goal &#8377; <span class="goal-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">201205152</span> </span>
        <span class="r-amount amount-text">Achieved  &#8377; <span class="achieved-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"> 55111265  </span></span>
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
        <div class="col-md-5">
        <span class="p-amount amount-text">OF OUR GOAL <span class="ach-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span> </span>
        <span class="d-amount amount-text">Share <span style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">48</span> </span>
        <br><br><br>
        </div>
        <div class="col-md-2">
                <a href="#" style="text-decoration: none" class="donate-popup"><span class="d-button amount-text"><span style="font-weight: bold">Donate Now</span> </span></a>
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

    <div><img src="/destiny/files/images/drintwater.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/parallax-1.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/volunteer.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/water.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/causes.jpg" style="width:100%; height: 400px;"></div>

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
<p class="cb-details"> Campaigner Details 
<img class="img-icon" src="/destiny/files/images/voulnteer-d.jpg"></p>
<br><br>
<button class="verified-button">VERIFIED <i class="fa fa-check-circle"></i></button>
<p class="tips-text"> Mandar Avhad </p>
<p class="tips-text"> Self </p>
<p class="tips-text">
<i class="fa fa-map-marker"></i> &nbsp; Delhi 
&nbsp;<span style="cursor:pointer"> <i class="fa fa-envelope"></i> &nbsp; Message </p></span>
</div>

<br>

<div class="camp-details" style="line-height: 15px; background-color: rgb(21, 160, 214); padding: 15px; border-radius: 5px">
<br>
<p class="cb-details">Beneficiary Details
<img class="img-icon" src="/destiny/files/images/voulnteer-a.jpg"></p>

<br><br>

<button class="verified-button">VERIFIED <i class="fa fa-check-circle"></i></button>
<p class="tips-text"> Vikas Bharadwaj</p>
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
            Struggling to pen down a fundraiser story on your own? No worries, just use the template below:

<br><br>

            Hi,
            <br><br>
            
            My name is (your name) and I am raising money for (your cause/problem). This is important to me because (write why you want to do this and how will it benefit). I am unable to fund this myself due to (explain your situation and the need for donations). I want to request for your help to achieve this. Please help by donating or sharing the fundraiser with your friends and family.
            
            <br><br>
            
            
            We are grateful for your helps!
            
            
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

    })


})
</script>

 <center>
    <img src="/destiny/files/images/document1.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document2.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document3.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document4.JPG" class="document-details zoom-image">


    
<br><br>
<i class="fa fa-times-circle close-button"></i>
    <div class="display-image" style="display: none"><img src="" class="images-effct"></div>



</center>


<br><br>
</div>
<!--ELIGIBILITY End-->


<!--
<!-- Donation Start
<div class="donation-section" style="display: none">

<style>
.user-pic
{
    height:70px; 
    width:70px;
    border-radius: 50px;
    border:solid 2px rgb(0, 0, 0);
}
</style>

    <p style="text-align: center; font-size: 25px;">DONATIONS</p>
    <hr style="border:solid 1.5px rgb(224, 109, 80); text-align: center; width: 90%;">
    <br>    

<div class="col-md-12">

<div class="col-md-4">
<div class="container-fluid">
<img src="/destiny/files/images/single-user.png" class="user-pic" >
<span style="font-size: 18px; margin-left: 20px; font-weight: bold;">  guru  </span>
<span style="font-size: 18px; margin-top: 20px; float: right; font-weight: bold;">  $ 502  </span>
</div>
<hr style="border-bottom: 1px solid rgb(189, 189, 189)">
</div>


<div class="col-md-4">
<div class="container-fluid">
<img src="/destiny/files/images/single-user.png" class="user-pic" >
<span style="font-size: 18px; margin-left: 20px; font-weight: bold;">  ron  </span>
<span style="font-size: 18px; margin-top: 20px; float: right; font-weight: bold;">  $ 500  </span>
</div>
<hr style="border-bottom: 1px solid rgb(189, 189, 189)">
</div>


<div class="col-md-4">
<div class="container-fluid">
<img src="/destiny/files/images/single-user.png" class="user-pic" >
<span style="font-size: 18px; margin-left: 20px; font-weight: bold;">  Jack  </span>
<span style="font-size: 18px; margin-top: 20px; float: right; font-weight: bold;">  $ 5030  </span>
</div>
<hr style="border-bottom: 1px solid rgb(189, 189, 189)">
</div>
</div>

<div class="col-md-12">

<div class="col-md-4">
<div class="container-fluid">
<img src="/destiny/files/images/single-user.png" class="user-pic" >
<span style="font-size: 18px; margin-left: 20px; font-weight: bold;">  sam  </span>
<span style="font-size: 18px; margin-top: 20px; float: right; font-weight: bold;">  $ 100  </span>
</div>
<hr style="border-bottom: 1px solid rgb(189, 189, 189)">
</div>


<div class="col-md-4">
<div class="container-fluid">
<img src="/destiny/files/images/single-user.png" class="user-pic" >
<span style="font-size: 18px; margin-left: 20px; font-weight: bold;">  Jane  </span>
<span style="font-size: 18px; margin-top: 20px; float: right; font-weight: bold;">  $ 300  </span>
</div>
<hr style="border-bottom: 1px solid rgb(189, 189, 189)">
</div>


<div class="col-md-4">
<div class="container-fluid">
<img src="/destiny/files/images/single-user.png" class="user-pic" >
<span style="font-size: 18px; margin-left: 20px; font-weight: bold;">  kito  </span>
<span style="font-size: 18px; margin-top: 20px; float: right; font-weight: bold;">  $ 54  </span>
</div>
<hr style="border-bottom: 1px solid rgb(189, 189, 189)">
</div>
</div>

</div>
<!--AMOUNT DISBURSAL  End



<!-- Comment Start
<div class="comment-section" style="display: none">

<style>
.comment-text-field
{
    outline: none;
    border:none;
    background-color: transparent;
    border-bottom: 1px rgb(3, 3, 3) solid;
    width: 100%;
    padding: 10px;

}  

.cs-button
{
    width:100%;
    height: 40px;
    color:white;
    background-color: rgb(13, 13, 56);
    outline: none;
    transition: 0.3s ease-in-out;
}

.cs-button:hover
{
    background-color: rgb(35, 35, 128);
}

.cs-button:active
{
    transition: 0.0s ease-in-out;
    transform: scale(0.98);
}


</style>

    

    <p style="text-align: center; font-size: 25px;">COMMENT'S</p>
    <hr style="border:solid 1.5px rgb(224, 109, 80); text-align: center; width: 90%;">
    <br>    

<div class="col-md-4"></div>

<div class="col-md-4 comments" style="border:solid 1px rgb(199, 196, 196); border-radius: 5px; background-color: rgba(255, 255, 255, 0.692);"> 
<form name="comments">    
<br>
<input type="name" placeholder="Name" class="comment-text-field" required name="user_name"><br><br>
<input type="email" placeholder="Email" class="comment-text-field" name="user_email"><br><br>
<input type="number" placeholder="Contact" class="comment-text-field" required name="user_contact"><br><br><br>
<textarea name="user_comments" rows="" placeholder="Comment's Please" style="max-width: 100%; max-height: 20%; padding: 20px; min-width: 100%; border:solid 1px black;  min-height: 10%; background-color: transparent" class="form-control"></textarea>
<br><br>
<button class="cs-button form-control"><i class="fa fa-comments"></i> Submit </button>
</form>
</div>
<div class="container-fluid"></div>
<br><br>

</div>

<!--SET UP COSTS AND REPAYMENT End
-->


</div>
</div>

</div>


<div class="container-fluid"></div>
<br><br>

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
<b> OR</b>
<br>
For UPI Transaction: <b> supportvikas67@yesbankltd</b>
<br><br>
<a href="#" style="text-decoration: none;">Click here to read this before you donate via the above options</a>
<br>
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




<button class="form-control dn-button donate-popup"><i class="fa fa-thumbs-up"></i> DONATE NOW </span></button>    
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
                <img src="/destiny/files/images/qr-code.png" style="width:100px; height: 150px;">    
            </div>
            <div class="col-md-6">
                <img src="/destiny/files/images/upi.png" style="width:100px; height: 40px;"><br><br>
                <textarea readonly id="myInput" class="upi-text">9999991111@ybl</textarea>
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
    <script>
    $(function(){
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