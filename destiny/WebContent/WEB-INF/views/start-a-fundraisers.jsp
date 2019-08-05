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

    <!--Textarea-->
    <script src="https://cdn.ckeditor.com/4.11.1/basic/ckeditor.js"></script>


</head>
<body style="font-family: algerrian sans-serif; background-image: url('/destiny/files/images/donation-bg.jpg'); background-size: 100% 100%">

       
<!--Header Start-->

    <div class="header_import">
    <script>
    $(function(){
    $(".header_import").load("header");  
    })
    </script>
    </div>
    
<!--Header End-->

    
    <br><br><br><br>
    <br><br>




<div class="fundraisers-section">
<div class="section1">
<div class="container">


<style>

.fix-button1
{
    width:50px;
    height: 50px;
    border-radius: 50px;
    text-align: center;
    border: none;
    background-color: white;
    font-size: 20px;
    border:dotted 1px rgb(24, 133, 66); 
    
    
}

.fix-button1:focus
{
    outline: none;
}

.fix-button1:hover
{
    cursor: wait;
}

.all-button-same
{
    width:100%;
    height: 50px;
    padding-left: 20px;
    padding-right: 20px;
    font-size: 18px;
    border:none;
    background-color: transparent;
    border-bottom: solid 1px rgb(0, 0, 0);

}
.all-button-same:focus
{
    outline: none;
}

.all-button-same:focus::placeholder
{
    padding-left: 60%;
    font-size: 1.1rem;
    transition: all 1s;
}

.button-1
{
    height: 50px;
    background-color: rgba(42, 124, 145, 0.767);
    color: white;
    transition: 0.2s ease-in-out;
}

.button-1:hover
{
    background-color: rgba(7, 90, 109, 0.938);
}

.button-1:active
{
    transform: scale(0.98);
}

.fb-button
{
    border-radius: 50px;
    background-color: rgb(79, 121, 212);
    color:white;
    font-weight: bold;
    transition: 0.2s ease-in-out;
    width: 50%;
}
.fb-button:hover
{
    background-color: rgb(20, 54, 128);
}
.fb-button:active
{
    transform: scale(0.98);
}

.section1-box1
{
animation-name: any1;
animation-duration: 0.8s;
}

@keyframes any1
{
    from
    {
        transform: scale(0.5);
    }

    to
    {
        transform: scale(1);
    }
}


.personal-details, .fundraiser-Details, .activate-details 
{
animation-name: any2;
animation-duration: 1.8s;
position: relative;
}

@keyframes any2
{
    0%
    {
        opacity: 0;
    }

    100%
    {
        opacity: 1;
    }
}

.re-otp:active
{
transform: scale(0.98);
}

</style>

<script>
$(function(){


            $(".per-details4, .fund-details4").keypress(function(e){

                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) 
                {
                    return false;
                }
                else
                {
                    return true;
                }

            //$(".pre-details4").
                
            })
            var name= /[^a-zA-Z\s]/g;
            var email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
 
/*For textarea Details*/
    CKEDITOR.replace( 'fundraisers_story' );


    $(window).resize(function(){
        var ww=$(window).width();
        if(ww<500)
        {
            $(".class-gap").css({"margin-left":"20px"});
        }
        else
        {
            $(".class-gap").css({"margin-left":"100px"});
        }
    });

    $(".button-1").click(function(){
        $(window).scrollTop(290);
    });

    $(".next-button-1").click(function()
    {
    	//Date Validation 
    	
    		
            var pd1 = $(".per-details1").val();
            var pd2 = $(".per-details2").val();
            var pd3 = $(".per-details3").val();
            var pd4 = $(".per-details4").val();
            $(".user_number").html(pd4);
            var pd4l = $(".per-details4").val().length;
           // alert(pd4l);

            var pd5 = $(".per-details5").val();


            //alert(sc1);
            

            if (pd1 == 0)
            {
                $(".per-details1").css({"border":"solid 2px red"});
                return false;
            }

            else if (pd2 == "" || pd2.match(name))
            {
                $(".per-details1").css({"border":"none"});
            
                $(".per-details2").css({"border-bottom":"solid 2px red"});
                return false;
            }

            else if (pd3 == "" || !pd3.match(email))
            {
                $(".per-details1").css({"border":"none"});
                $(".per-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            
                $(".per-details3").css({"border-bottom":"solid 2px red"});
                return false;
            }

            else if (pd4 == "" ||  pd4l != 10)
            {
                $(".per-details1").css({"border":"none"});
                $(".per-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
                $(".per-details3").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            
                $(".per-details4").css({"border-bottom":"solid 2px red"});
                return false;
            }

            else if (pd5 == "")
            {
                $(".per-details1").css({"border":"none"});
                $(".per-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
                $(".per-details3").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
                $(".per-details4").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
        
                $(".per-details5").css({"border-bottom":"solid 2px red"});
                return false;
            }

            
            else
            {
                $(".per-details1").css({"border":"none"});
                $(".per-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
                $(".per-details3").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
                $(".per-details4").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
                $(".per-details5").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
              	
                
                $(".personal-details").hide();
                $(".Fundraiser-Details").show();
            
                $(".f-title").show();
                $(".p-title").hide();

                $(".fix-item-2").hide();

                $(".fix-1").css({"background-color":"green"});
                $(".fix-1").css({"color":"white"});

                $(".fix-2").css({"border":"solid 2px green"});

                $(".fix-1").css({"cursor":"pointer"});

            }
          
        
    });

    $(".back-button-2").click(function()
    {
        $(".personal-details").show();
        $(".fundraiser-Details").hide();

        $(".p-title").show();
        $(".f-title").hide();

        $(".fix-item-2").show();

        $(".fix-1").css({"background-color":"white"});
        $(".fix-1").css({"color":"black"});

        $(".fix-2").css({"border":"dotted 1px rgb(24, 133, 66)"});

        $(".fix-2").css({"background-color":"white"});
        $(".fix-2").css({"color":"black"});

        $(".fix-1").css({"cursor":"wait"});

    });

    $(".next-button-2").click(function()
    {
    	var sd= $(".start-date").val();
    	
		var ed= $(".end-date").val();
		
		var start = new Date(sd);
		var end = new Date(ed);
		var cdate = new Date();
		var cd = new Date(Date.now() - 864e5);
		
		var cdate2 = cdate.getFullYear()+ '-' + ('0' + (cdate.getMonth()+1)).slice(-2) + '-' + ('0' + cdate.getDate()).slice(-2);

		
		$(".created_date").val(cdate2);
		
		//alert("start : " + start);
		//alert("end : " + end);
		//alert("created : " + cd);
		//alert("created : " + cdate);
	
        var fd1 = $(".fund-details1").val();
        var fd2 = $(".fund-details2").val();
        var fd3 = $(".fund-details3").val();
        var fd4 = $(".fund-details4").val();
        var fd4l = $(".fund-details4").val().length;

        var fd5 = $(".fund-details5").val();
        var fd6 = $(".fund-details6").val();
        var fd7 = $(".fund-details7").val();

        //alert(fd7);

        if(fd1 == "")
        {
             $(".fund-details1").css({"border-bottom":"solid 2px red"});
             return false;
        }

        else if (fd2 == "")
        {
             $(".fund-details1").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});

             $(".fund-details2").css({"border-bottom":"solid 2px red"});
             return false;
        }
        else if (fd3 == "" || fd3.match(name))
        {
             $(".fund-details1").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
    
             $(".fund-details3").css({"border-bottom":"solid 2px red"});
             return false;
        }
        else if (fd4 == "" || fd4l != 10)
        {
             $(".fund-details1").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details3").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            
             $(".fund-details4").css({"border-bottom":"solid 2px red"});
             return false;
        }
        else if (fd5 == "" || !fd5.match(email))
        {
             $(".fund-details1").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details3").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details4").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             
             $(".fund-details5").css({"border-bottom":"solid 2px red"});
             return false;
        }
        else if (fd6 == 0)
        {
             $(".fund-details1").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details3").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details4").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
             $(".fund-details5").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            
             $(".fund-details6").css({"border":"solid 2px red"});
             return false;
        }
        
        else if (start < cd || start == "Invalid Date" )
        {
        		$(".start-date").css({"border-bottom":"solid 2px red"});
            	return false;
        }

        else if (end <= start || end == "Invalid Date")
        {
        		$(".start-date").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
        		$(".end-date").css({"border-bottom":"solid 2px red"});
                return false;
        }
   


        else
        {


            $(".fund-details1").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            $(".fund-details2").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            $(".fund-details3").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            $(".fund-details4").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            $(".fund-details5").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            $(".fund-details6").css({"border":"none"});
            $(".fund-details7").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});

            $(".start-date").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
            $(".end-date").css({"border-bottom":"solid 1px rgb(0, 0, 0)"});
     

        $(".activate-details").show();
        $(".fundraiser-Details").hide();

        $(".a-title").show();
        $(".f-title").hide();

        $(".fix-2").css({"background-color":"green"});
        $(".fix-2").css({"color":"white"});

        $(".fix-3").css({"border":"solid 2px rgb(24, 133, 66)"});

        $(".fix-2").css({"cursor":"pointer"});
        }


    });

    $(".back-button-3").click(function()
    {
        $(".activate-details").hide();
        $(".fundraiser-Details").show();

        $(".f-title").show();
        $(".a-title").hide();

        $(".fix-2").css({"background-color":"white"});
        $(".fix-2").css({"color":"black"});

        $(".fix-3").css({"border":"dotted 1px rgb(24, 133, 66)"});

        $(".fix-3").css({"background-color":"white"});
        $(".fix-3").css({"color":"black"});

        $(".fix-2").css({"cursor":"wait"});


    });

    $(".next-button-3").click(function()
    {
        var ac1 = $(".ac-details1").val();
       
        if(ac1 == "" || ac1 != 123)
        {
             $(".ac-details1").css({"border-bottom":"solid 2px red"});
             return false;
        }

       else
       {

        $(".fix-3").css({"background-color":"green"});
        $(".fix-3").css({"color":"white"});
       }
    })



})

</script>



    <style>
    .datepicker::-webkit-inner-spin-button
    {
    	display:none;
    }
    </style>
    


<div class="section1-box1" style="display:block">
<div class="col-md-3"></div>

<div class="col-md-6">

<div class="tag-first" style="background-color:rgba(255, 255, 255, 0.92); box-shadow: 0px 0px 20px 10px rgba(0, 0, 0, 0.438); border-radius: 10px;">
<br>

<div class="container-fluid" style="margin-top:20px; margin-bottom: 50px;">

<!--Fix Item Start-->

<div class="fix-item-1">

        <p style="font-size:30px; text-align: center; font-weight: bold;">START A FUNDRAISERS</p>

       
<div class="fix-item-2" style="display: block">

        <p style="font-size:15px; text-align: center; ">Already have an Account <a style="text-decoration: none; font-weight: bold; color:rgb(122, 112, 206)" onmouseover="this.style.color='rgb(48, 34, 177)'" onmouseout="this.style.color='rgb(122, 112, 206)'" href="login">Click Here</a></p>
        <p style="font-size:10px; text-align: center; font-weight: bold;">OR</p>
        <center><button class="form-control fb-button"><i class="fa fa-facebook"></i> | Facebook</button></center>
</div>    
<br>

<div style="text-align: center">        

    <button  class="fix-button1 fix-1" style="text-align: center; border:solid 2px rgb(24, 133, 66); "> 1 </button>
    <button class="class-gap fix-button1 fix-2" style="margin-left: 100px;"> 2 </button>
    <button class="class-gap fix-button1 fix-3" style="margin-left: 100px;"> 3 </button>

</div>
<br>
<div class="title">
<p class="p-title" style="display:block; font-size:15px; text-align: center; color: rgb(126, 13, 60);">"PERSONAL DETAILS"</p>
<p class="f-title" style="display:none; font-size:15px; text-align: center; color: rgb(126, 13, 60);">"FUNDRAISERS DETAILS"</p>
<p class="a-title" style="display:none; font-size:15px; text-align: center; color: rgb(126, 13, 60);">"ACTIVATE"</p>
</div>


<hr style="border:solid 0.5px rgb(148, 115, 115);">

<br>        
</div>

<!--Fix Item End-->

<!--Form Start-->

<form name="fundraisers_details" action="new_fundraisers" modelAttribute="new_fundraisers_model" method="post">

<!--Personal Details start-->

<div class="personal-details" style="display: block;">

<div class="col-md-12">
        <select name="category_type" class="form-control per-details1" style="height: 50px; font-size: 18px;  background-color: rgba(42, 124, 145, 0.767); color:white">
            <option value="0" hidden selected>Selet Category Type</option>
            <option value="medical">MEDICAL</option>
            <option value="ngo">NGO</option>
            <option value="personal">PERSONAL CAUSE</option>
            <option value="ideas">CREATIVE IDEAS</option>
            
</select>
<br>
</div>

<div class="col-md-12">
        <input type="text" name="personal_name" class="all-button-same per-details2" placeholder="Name"><br><br>
</div>        

<div class="col-md-12">
        <input type="text" name="personal_email" class="all-button-same per-details3"  placeholder="Email"><br><br>
</div>        

<div class="col-md-12">
        <input type="text" name="personal_number" class="all-button-same per-details4" maxlength="10" placeholder="Contact"><br><br>
</div>        

<div class="col-md-12">
        <input type="text" name="personal_city" class="all-button-same per-details5" placeholder="City"><br><br>
</div>     
       <br>
       <!--
       <div class="col-md-6">
        <button type="button" class="back-button-1 form-control"><i class="fa fa-chevron-left" style="font-size: 13px;"></i> Previous </button>
       </div>
       -->
       <div class="col-md-12">
        <br>
        <button type="button" class="button-1 next-button-1 form-control"> Next <i class="fa fa-chevron-right" style="font-size: 13px;"></i>  </button>
        <br><br>
    </div>

</div>

<!--Personal Details End-->


<!--Fundraiser Details start-->

<div class="fundraiser-Details" style="display: none;">

      
<div class="col-md-12">
		<input type="text" name="fundraisers_title" class="all-button-same fund-details1" placeholder="Title"><br><br>
</div>        

<div class="col-md-12">
        <input type="number" name="fundraisers_goal_amount" class="all-button-same fund-details2" placeholder="Goal Amount"><br><br>
</div>        

<div class="col-md-12">
        <input type="text" name="fundraisers_name" class="all-button-same fund-details3" placeholder="Beneficiary Name"><br><br>
</div>        

<div class="col-md-12">
    <input type="text" maxlength="10" name="fundraisers_contact" class="all-button-same fund-details4" placeholder="Beneficiary Contact"><br><br>
</div>        

<div class="col-md-12">
    <input type="text" name="fundraisers_email" class="all-button-same fund-details5" placeholder="Beneficiary Email"><br><br>
</div>        

<div class="col-md-12">
        <select name="fundraisers_beneficiary_relation" class="form-control fund-details6" style="height: 50px; font-size: 18px;  background-color: rgba(42, 124, 145, 0.767); color:white">
            <option value="0" style="text-align: center" hidden selected>Relation With Beneficiary</option>
            <option value="self">SELF</option>
            <option value="parent">PARENT</option>
            <option value="spouse">SPOUSE</option>
            <option value="child">CHILD</option>
            <option value="other">OTHER</option>
</select>
<br>
</div>


<div class="col-md-12">
        <textarea name="fundraisers_story" class="form-control fund-details7" rows="4" style="max-width: 100%; max-height: 50%; min-width: 100%; min-height: 10%; background-color: transparent; font-size: 18px; color:black;" placeholder="Fundraiser Story">
<p style="text-align: justify">

            Struggling to pen down a fundraiser story on your own? No worries, just use the template below: <br>
            <br>
            Hi, 
            <br>
            <p style="text-align: justify">
                    My name is (your name) and I am raising funds for (Non profit name) which is working towards the rehabilitation and education of street children (elaborate about your cause/ program). We are at present taking care of 50 street children (show your reach/impact) and need xxxx amount to send them to school (explain why you need the funds). Kindly support our cause by donating and sharing our fundraiser. <br><br>
            </p>
            Here's how the funds will be utilised (add a quick break up of funds). <br><br>
            We are grateful for your help!
</p>
        </textarea>
         
    </div>
    
    <!-- Dates -->
    

    
    	<input type="text" name="fundraisers_created_date" maxlength = "0" class="created_date" hidden><br><br>
    	
    	<div class="col-md-6">
		<br>
        	<input type="text" onfocus="this.type='date'" name="fundraisers_start_date" class="start-date datepicker all-button-same fund-details4" placeholder="Campaign Start Date"><br><br>
       </div>
       
       <div class="col-md-6">
       <br>
			<input type="text" onfocus="this.type='date'" name="fundraisers_end_date" class="end-date datepicker all-button-same fund-details4" placeholder="Campaign End Date"><br><br>
       </div>
          
		
       
       <!-- buttons -->
       
       <div class="col-md-6">
        <button type="button" class="button-1 back-button-2 form-control"><i class="fa fa-chevron-left" style="font-size: 13px;"></i> Previous </button> <br>
       </div>
       
       <div class="col-md-6">
        <button type="button" class="button-1 next-button-2 form-control"> Next <i class="fa fa-chevron-right" style="font-size: 13px;"></i>  </button>
        <br><br>
    </div>

</div>

<!--Fundraiser Details End-->


<!--Activate process start-->

<div class="activate-Details" style="display: none;">

    <p class="activate_number" style="font-size:20px; text-align: center; color: rgb(126, 13, 60);"> <i class="fa fa-mobile">  +91 <span class="user_number"></span> </i> </p>
    <p style="font-size:12px; text-align: center; color: rgb(126, 13, 60);"> We have sent the OTP to above number.</p>


<div class="col-md-12">
        <input type="text" name="activate_otp" class="all-button-same ac-details1" placeholder="OTP IS 123"><br><br>
</div>        

<p class="re-otp" style="font-size:12px; text-align: center; color: rgb(126, 13, 60); cursor: pointer;"> <i class="fa fa-repeat"></i> Resend OTP</p>

<br>

       <div class="col-md-6">
        <button type="button" class="button-1 back-button-3 form-control"><i class="fa fa-chevron-left" style="font-size: 13px;"></i> Previous </button> <br>
       </div>
       
       <div class="col-md-6">
        <button type="submit" class="button-1 next-button-3 form-control"> Submit <i class="fa fa-thumbs-o-up" style="font-size: 13px;"></i>  </button>
        <br><br>
    </div>

</div>

<!--Activate process End-->


</form>

<!--Form End-->



</div> 
</div>
<div class="col-md-12"></div>


</div>

    

</div>




</div>        
</div>
</div>








<br><br>


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