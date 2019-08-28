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
    


</head>
<body style="font-family: algerrian sans-serif; background-image: url('/destiny/files/images/login-bg.jpg'); background-size: 100% 100%">

       
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




<div class="sign-up-section">

<div class="section1">
<div class="container">
<div class="boxes2">


<style>

    
 .section1-box2
{
animation-name: testing2;
animation-duration: 0.8s;
}

@keyframes testing2
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


.forgot-all-button
{
    border-radius: 50px;
    padding-left: 40px;
    padding-right: 40px;
    height: 50px;
    font-size: 18px;
}

.check-otp, .submit-new-password, .back-button
{
    border-radius: 50px;
    background-color: rgba(18, 97, 44, 0.849);
    color: white;
    transition: 0.2s ease-in-out;
}
.check-otp:hover, .submit-new-password:hover, .back-button:hover
{
    background-color: rgba(8, 46, 21, 0.849);
}

.check-otp:active, .submit-new-password:active, .back-button:active
{
    transform: scale(0.99)
}

.show_hide_password
{
    float:right;
    position: relative;
    top: 103;
    left: -20;
    font-size: 20px;
}

.show_hide_password:hover
{
    cursor: pointer;
}

.fb-button, .go-button
{
    border-radius: 50px;
    color: white;
}
.fb-button:active, .go-button:active
{
    transform: scale(0.98);
}


.fb-button
{
    background-color: rgb(45, 55, 114);
    transition: 0.2s ease-in-out;
}
.fb-button:hover
{
    background-color: rgb(79, 93, 179);

}

.go-button
{
    background-color: rgb(177, 52, 35);
    transition: 0.2s ease-in-out;
}
.go-button:hover
{
    background-color: rgb(190, 93, 81);

}

</style>
 
 <script>

 $(function show_password(){
    $(".show_hide_password").click(function(){
    
    var c1=$(".new_password").attr('type');
    $(this).toggleClass("fa-eye fa-eye-slash");
    if(c1 == "password")
    {
        $(".new_password").attr('type', 'text');
    }
    else
    {
        $(".new_password").attr('type', 'password');
    }
    

})
});

 </script>   



<div class="section1-box2" style="display:block">
<div class="col-md-3"></div>
<div class="col-md-6">
<div class="tag-first" style="background-color:white; box-shadow: 0px 0px 20px 10px rgba(0, 0, 0, 0.438); border-radius: 10px;">
<br>

<div class="container-fluid" style="margin-top:20px; margin-bottom: 50px;">

        <p style="font-size:30px; text-align: center">Sign In Now</p>
        <hr style="border:solid 0.5px rgb(148, 115, 115);">
        <br>

<div class="col-md-6">
<button class="form-control forgot-all-button fb-button"><i class="fa fa-facebook"></i> | Facebook    </button> <br>
</div>

<div class="col-md-6" >
<button class="form-control forgot-all-button go-button"><i class="fa fa-google-plus"></i> | Google   </button>

<br><br>
</div>

<p style="font-weight: bold; text-align: center; font-size: 20px;" >OR</p>

    <form name="user-login" method="post" modelAttribute="user_login_model">

        <span class="fa fa-eye show_hide_password"></span>
        <input type="text" name="user_id" class="form-control forgot-all-button" placeholder="ID"><br>
        <input type="password" name="user_password" class="new_password form-control forgot-all-button" placeholder="New Password"><br>
       
       <br>
        <input type="submit" class="form-control forgot-all-button submit-new-password">
    </form>

<script>
$(function check_validation(){
	var check = $(".check-error").html().length;
	//alert(check)
	if(check == "25")
		$(".error-msg").css({"font-size":"15px"})
	else
		return true;
	
})
</script>

<style>
.error-msg
{
font-size:15px;
transition:.3s;
}
.check-error
{
display:none;
}
</style>

<div class="check-id">
	<div style="text-align:center; font-size:15px; color:red; text-transform:uppercase; displaye:inline">
		<span class="error-msg" style="display:block">${message}</span>
		<span><a href="#"><i>Forgot Password click here</i></span>
	</div>

<div class="check-error">
${message}
</div>

</div>
</div>


<br>
</div> 

<br><br> 
</div>


</div>

</div>
</div>
</div>



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


</body>    
</html>