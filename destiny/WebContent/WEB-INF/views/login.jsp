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
    
    <!-- Face book login -->
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v4.0&appId=1361682397314259&autoLogAppEvents=1"></script>    
    

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

<br><br><br><br><br><br>



<div class="facebook-login" style="color:white;">


<script>

  function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
    console.log('statusChangeCallback');
    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
      testAPI();  
    } else {                                 // Not logged into your webpage or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this webpage.';
    }
  }


  function checkLoginState() {               // Called when a person is finished with the Login Button.
    FB.getLoginStatus(function(response) {   // See the onlogin handler
      statusChangeCallback(response);
    });
  }


  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1361682397314259',
      cookie     : true,           	          // Enable cookies to allow the server to access the session.
      xfbml      : true,               	      // Parse social plugins on this webpage.
      version    : 'v4.0'         			  // Use this Graph API version for this call.
    });


    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
      statusChangeCallback(response);        // Returns the login status.
    });
  };

  
/*   
 	(function(d, s, id) {                      // Load the SDK asynchronously
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
*/
  
  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
   
	FB.api('/me?fields=id,name,picture.width(1024).height(1024),email', function(response) 
    {
 		document.getElementById('status').innerHTML = 'Successful login for: ' + response.name;
	 	document.getElementById('fb_id').value = response.id;
	      document.getElementById('fb_name').value = response.name;
	      document.getElementById('fb_email').value = response.email;
	      document.getElementById('fb_image').src= response.picture.data.url;
    });
    
    
     FB.api('/me',
  		  	function(response) {
         
    	  });
     
    
}
  

  
</script>


//  The JS SDK Login Button 

<fb:login-button scope="" onlogin="checkLoginState();">
</fb:login-button>

<div class="fb-login-button" onlogin="checkLoginState();" data-width="" data-size="large" data-button-type="login_with" data-auto-logout-link="false" data-use-continue-as="true"></div>

Name : <input type="text" style="color:black" id="fb_name"><br>
ID : <input type="text" style="color:black" id="fb_id"><br>
Email : <input type="text" style="color:black" id="fb_email"><br>
Image : <img id="fb_image" src="" style="width:200px; height:200px;">

<div id="status">
</div>
</div>




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


<button class="form-control forgot-all-button fb-button"><i class="fa fa-facebook"></i> | Facebook </button> <br>

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