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


    <style>
        html {
            color: red;
        }

        .ourcausesheet:hover {
            box-shadow: 5px 5px 20px 2px rgb(139, 133, 133);
        }


        .ourcausebtn1 {
            width: 50%;
            margin-top: 20px;
            border-radius: 25px;
        }

        .ourcausebtn1:active {
            transform: scale(0.98)
        }

        .ourcausebtn1:hover {
            box-shadow: 3px 5px 10px 0px rgb(139, 133, 133);
        }
    </style>


</head>

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

<div class="volunteer-body1">
            <div style="background-color:rgba(22, 20, 20, 0.658)">
                <div class="container-fluid">
                    <div class="col-md-12" style="text-align:center">
                        <p style="font-size: 400%; color:white; margin-top: 120px; margin-bottom: 120px;">Become A Volunteer</p>
                    </div>
                </div>
            </div>
</div>

<br><br>
<br><br>

    
<div class="voulnteer-body2">
<div class="container">

<div style="text-align:center">


<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(180, 176, 176, 0.445);">
   <div class="ourcausecontainer" style="position: relative;">
    <img src="/destiny/files/images/first_step.jpg" class="ourcauseimage1">
    <span class="ourcausedonate">
        <p style="font-size: 20px;">1 STEP</p>
        <p style="font-size: 30px; font-weight: bold;">Subscribe</p>
    </span>
  </div>
</div>
<br><br> 
</div>

<div class="col-md-4">
    <div class="ourcausesheet" style="border:solid 1px rgba(175, 171, 171, 0.445);">
      <div class="ourcausecontainer" style="position: relative;">
        <img src="/destiny/files/images/second_step.jpg" class="ourcauseimage1">
        <span class="ourcausedonate">
                <p style="font-size: 20px;">2 STEP</p>
                <p style="font-size: 30px; font-weight: bold;">Activate</p>
        </span>
      </div>
    </div>
<br><br> 
</div>

<div class="col-md-4">
  <div class="ourcausesheet" style="border:solid 1px rgba(185, 180, 180, 0.445);">
   <div class="ourcausecontainer" style="position: relative;">
      <img src="/destiny/files/images/third_step.jpg" class="ourcauseimage1">
      <span class="ourcausedonate">
            <p style="font-size: 20px;">3 STEP</p>
            <p style="font-size: 30px; font-weight: bold;">Enjoy</p>
    </span>
    </div>
  </div>
<br><br> 
</div>

<br><br>
</div>
</div>
</div>

<!--For subscribe-->
<div id="next-form"></div>
<!--For subscribe-->


<br><br>
<br><br>




<div class="voulnteer-body3">
<div class="container">
<div style="text-align:center">

<div class="col-md-2">
</div>    
        
<div class="col-md-8" style="border:solid 0.1px rgba(114, 114, 114, 0.089)">
    <br>



<script>

$(function(){    

var name= /[^a-zA-Z\s]/g;
var email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;


 $(".vol-number").keypress(function(e){

if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) 
{
    return false;
}
else
{
    return true;
}
});


$(function submit(){

$(".submit-button").click(function(){
    


var vn= $(".vol-name").val();
var ve= $(".vol-email").val();
var vno= $(".vol-number").val();
var vnol= $(".vol-number").val().length;

//alert(vn);

if (vn == '' || vn.match(name))
{
    $(".vol-name").css({"border":"2px solid red"});
    return false;
} 

else if (ve == '' || !ve.match(email))
{
    $(".vol-name").css({"border":"none"});
    $(".vol-email").css({"border":"2px solid red"});
    return false;
}

else if (vno == '' || vnol!=10)
{
    $(".vol-name").css({"border":"none"});
    $(".vol-email").css({"border":"none"});

    $(".vol-number").css({"border":"2px solid red"});
    return false;
}

else
{
     $(".vol-name").css({"border":"none"});
     $(".vol-email").css({"border":"none"});
     $(".vol-number").css({"border":"none"});
     return true;
}
});

});

/*
$(function()
{
    var x = localStorage.getItem("x"); 
    $(".vol-email").val(x);
});
*/

$(function(){

let searchParams = new URLSearchParams(window.location.search);
let mail = searchParams.get('sub_email');

$(".vol-email").val(mail);

//alert(mail);


})

});

</script>

    <form name="volunbteer-form" action="/destiny/volunteer_details" method="post" modelattribute="VolunteerModel"> 
        <p style="font-size: 20px;">Fill It</p> 
        <p style="font-size: 40px; font-weight: bold;">Subscribe</p>

        <input type="text" name="volunteer_name" class="form-control vol-name" style="height: 50px; background-color: rgba(124, 124, 124, 0.068)" placeholder="Name"> <br>
        <input type="text" name="volunteer_email" class="form-control vol-email" style="height: 50px; background-color: rgba(124, 124, 124, 0.068)" placeholder="Email Id"> <br>
        <input type="text" name="volunteer_contact" class="form-control vol-number" style="height: 50px; background-color: rgba(124, 124, 124, 0.068)" maxlength="10" placeholder="Contact"> <br>

        <textarea name="volunteer_message" class="form-control" rows="4" maxlength="100" style="max-width: 100%; resize: none; max-height: 50%; background-color: rgba(122, 122, 122, 0.089);  color:rgb(168, 168, 168); font-size: 18px;" placeholder="Message"></textarea>

        <button class="form-control ourcausebtn1 submit-button" type="submit" style="height:50px; width: 200px; background-color: rgb(39, 157, 165); color:white; font-size: 20px; border-radius: 50px;">Submit</button>
		<br><br>
	</form>
	
	
</div>    
        
        
</div>
</div>
</div>

<br><br>

<div class="volunteer-body4">
        <div style="background-color:rgba(22, 20, 20, 0.658)">
            <div class="container-fluid">
                <div class="col-md-12" style="text-align:center">
                    <div class="col-md-6"></div>
                    <div class="col-md-6">
                        <br><br><br><br>
                    <p style="font-size: 40px; color:white; font-weight: bold">VOLUNTEERS</p><br>
                    <p style="font-size: 20px; color:white; text-align: justify">LOREM IPSUM DOLOR SIT AMET, CONSECTETURADIPISCING ELIT. DONEC AT LIGULA IN LIGULA ULTRICESVULPUTATE AT AC SAPIEN. IN JUSTO NEQUE, MALESUADAA LIBERO ET, LOREM IPSUM DOLOR SIT AMET,CONSECTETUR ADIPISCING ELIT</p>
                    <br><br>    
                    <center><button class="form-control ourcausebtn1" style="height:50px; width: 200px; background-color: rgb(39, 157, 165); color:white; font-size: 20px; border-radius: 50px;">Contact Us</button></center>
                    <br><br><br><br><br><br>
                    <br><br><br><br><br><br>
                </div>
                </div>
            </div>
        </div>
</div>


<div class="volunteer-body5">
<div class="container">
<div class="body5-first" style="margin-top:-100px;">

<div class="col-md-3" style="text-align: center">
<img src="/destiny/files/images/voulnteer-a.jpg" style="width:100%; height: 40%;">
<br><br>
<div style="margin-left:20px; margin-right: 20px;">
<p style="font-size: 25px; font-weight: bold; color:rgb(124, 124, 124);">Jane Mcallister</p>
<p style="font-size: 15px; color:rgb(124, 124, 124);">OWNER</p>
<p style="font-size: 18px; color:rgb(168, 168, 168); text-align: justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas magna at portitor.</p>
<br><br>    
<center><button class="form-control ourcausebtn1" style="width: 200px; background-color: rgba(88, 90, 90, 0.493); color:white; border-radius: 50px;">Contact Me</button></center>
</div>
<br><br>
</div>        

<div class="col-md-3" style="text-align: center">
<img src="/destiny/files/images/voulnteer-b.jpg" style="width:100%;  height: 40%;">    
<br><br>
<div style="margin-left:20px; margin-right: 20px;">
<p style="font-size: 25px; font-weight: bold; color:rgb(124, 124, 124);">Mandy Johnson</p>
<p style="font-size: 15px; color:rgb(124, 124, 124);">CUSTOMER CARE</p>
<p style="font-size: 18px; color:rgb(168, 168, 168); text-align: justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas magna at portitor.</p>
<br><br>    
<center><button class="form-control ourcausebtn1" style="width: 200px; background-color: rgba(88, 90, 90, 0.493); color:white; border-radius: 50px;">Contact Me</button></center>
</div>
<br><br>
</div>        

<div class="col-md-3" style="text-align: center">
<img src="/destiny/files/images/voulnteer-c.jpg" style="width:100%;  height: 40%;">
<br><br>
<div style="margin-left:20px; margin-right: 20px;">
<p style="font-size: 25px; font-weight: bold; color:rgb(124, 124, 124);">Elly Spitch</p>
<p style="font-size: 15px; color:rgb(124, 124, 124);">CO-FOUNDER</p>
<p style="font-size: 18px; color:rgb(168, 168, 168); text-align: justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas magna at portitor.</p>
<br><br>    
<center><button class="form-control ourcausebtn1" style="width: 200px; background-color: rgba(88, 90, 90, 0.493); color:white; border-radius: 50px;">Contact Me</button></center>
</div>
<br><br>
</div>        

<div class="col-md-3" style="text-align: center">
<img src="/destiny/files/images/voulnteer-d.jpg" style="width:100%;  height: 40%;">
<br><br>
<div style="margin-left:20px; margin-right: 20px;">
<p style="font-size: 25px; font-weight: bold; color:rgb(124, 124, 124);">Hanna Zafron</p>
<p style="font-size: 15px; color:rgb(124, 124, 124);">SPECIALIST</p>
<p style="font-size: 18px; color:rgb(168, 168, 168); text-align: justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas magna at portitor.</p>
<br><br>    
<center><button class="form-control ourcausebtn1" style="width: 200px; background-color: rgba(88, 90, 90, 0.493); color:white; border-radius: 50px;">Contact Me</button></center>
</div>
<br><br>
</div>        

</div>
</div>
</div>


<div class="volunteer-body6">
<div style="background-color:rgba(56, 54, 54, 0.938)">

<div class="container-fluid">

<br><br><br><br>
<div class="col-md-1"></div>
<div class="col-md-11">
<span style="color:rgb(255, 255, 255); font-weight: bold; line-height: 40px;">
  <p style="font-size:20px">MISSION</p>
  <p style="font-size:50px">ACHIEVED</p>
</span>
<br><br>
</div>

<div class="col-md-1"></div> 

<div class="col-md-5">

<span style="color: white;  font-size: 18px; line-height: 30px;">WATER WELLS 
<span style="float:right">22</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(255, 0, 0, 0.466); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

<br><br>

<span style="color: white;  font-size: 18px; line-height: 30px;">ENGLISH TEACHERS
<span style="float:right">162</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(74, 177, 88, 0.466); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

<br><br>

<span style="color: white;  font-size: 18px; line-height: 30px;">VACCINES
<span style="float:right">98</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(17, 0, 255, 0.185); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

<br><br>

<span style="color: white;  font-size: 18px; line-height: 30px;">NEW SCHOOLS
<span style="float:right">20</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(39, 182, 218, 0.466); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

        
</div> 
<br>
<div class="col-md-5">

<span style="color: white;  font-size: 18px; line-height: 30px;">DOCTORS 
<span style="float:right">52</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(76, 116, 82, 0.466); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

<br><br>

<span style="color: white;  font-size: 18px; line-height: 30px;">NEW HOUSES
<span style="float:right">231</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(189, 117, 132, 0.466); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

<br><br>

<span style="color: white;  font-size: 18px; line-height: 30px;">CLOTHES
<span style="float:right">104</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(199, 198, 121, 0.185); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

<br><br>

<span style="color: white;  font-size: 18px; line-height: 30px;">NEW SHOES
<span style="float:right">589</span></span>
<br>
<span style="color: white;  font-size: 15px; line-height: 30px;">Lorem ipsum dolor sit amet 
<span style="float:right; background-color: rgba(155, 84, 42, 0.466); border: solid 1px white; font-size: 13px"> &nbsp;&nbsp;&nbsp; NEW &nbsp;&nbsp;&nbsp; </span>
</span>

        
</div> 



</div>
<br><br><br><br>
</div>
</div>

<br><br>

<div class="volunteer-body7">
<div style="background-color:rgba(22, 20, 20, 0.658)">
<div class="container-fluid">
<div class="col-md-12" style="text-align:center">

<br><br><br><br>
<br><br><br><br>

<div class="col-md-3" style="line-height: 35px;">
    <p style="font-size: 60px; color:white; font-weight: bold;">12</p>
    <p style="font-size: 20px; color:white; ">SPECIALISTS</p>
<br>
</div>

<div class="col-md-3" style="line-height: 35px;">
        <p style="font-size: 60px; color:white; font-weight: bold;">82</p>
        <p style="font-size: 20px; color:white; ">COUNTRY</p>
        <br>
    </div>

<div class="col-md-3" style="line-height: 35px;">
    <p style="font-size: 60px; color:white; font-weight: bold;">62</p>
    <p style="font-size: 20px; color:white;">VOLUNTEERS</p>
    <br>
</div>

<div class="col-md-3" style="line-height: 35px;">
    <p style="font-size: 60px; color:white; font-weight: bold;">18</p>
    <p style="font-size: 20px; color:white;">YEARS OF EXPERIENCE</p>
    <br><br><br><br>

</div>

</div>
</div>
</div>
</div>



</div>

    <!--Body Part End-->



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



</body>

</html>