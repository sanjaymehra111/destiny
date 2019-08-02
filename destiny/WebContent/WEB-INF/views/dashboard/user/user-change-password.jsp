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


<title> Destiny World</title>

<body style="font-family: algerrian sans-serif; background-color: rgba(224, 224, 224, 0.527);">


<!--Header Start-->

    <div class="header_import">
    <script>
    $(function(){
    $(".header_import").load("user-header");  
    })
    </script>
    </div>
    
<!--Header End-->

<style>
   .dashboard-header
          {
              display: none;
          }

.dashboard-profile
{   
    color:white;
    border-bottom: 2px solid white;
}
.user-profile-section-password-exist, .user-profile-section-password-not-exist
{
    margin-top: 150px;
}
.pr-section3
{
    background-color: #fff; 
    border-radius: 10px;
    font-size: 17px;
    color:rgb(110, 110, 110);
    box-shadow: 7px 7px 10px 1px rgba(0, 0, 0, 0.205);
}


.new-passwword
{
    border-radius: 50px;
    width:100%;
    height: 50px;
    background-color: rgba(211, 211, 211, 0.219);
    text-align: center;
    color: black;
    font-size: 20px;
    border: none;
    outline:none;
    padding: 20px;
}
.button2
{
    width:100%;
    border-radius: 50px;
    height: 45px;
    background-color: rgb(7, 98, 121);
    outline: none;
    border:none;
    color:white;
    font-weight: bold;  
    font-size: 20px;
    transition: 0.3s;
    text-transform: uppercase;
    
}
.button2:hover
{
    background-color: rgb(6, 53, 65);
}
.button2:active
{
    transition: 0.1s;
    transform: scale(0.98);
}


@media(max-width:975px)
{
    .button2
{
    font-size: 18px;
}
}
</style>

<div class="check-password-message" style="font-size:0px; display:none">Message : ${message}</div>

<script>
$(function check_password_existence(){
var ch_pwd = $(".check-password-message").html().length;

//alert(ch_pwd);

if(ch_pwd == 24) //24 == password_exist
	{
		$(".user-profile-section-password-not-exist").hide();
		$(".user-profile-section-password-exist").show();
	}
else
	{
		$(".user-profile-section-password-not-exist").show();
		$(".user-profile-section-password-exist").hide();
	}
});

</script>

<script>

$(function password_validation()
{
	
	$(".passwword").keydown(function (space)
			{
				if(space.keyCode == 32)
					return false;
			})
})
</script>


<!-- Password not Exist -->

<div class="user-profile-section-password-not-exist">
<div class="container-fluid"> 
<div class="col-md-3"></div>

<div class="col-md-6">
<div class="pr-section3">
<div class="container-fluid">
<div class="section1-data3">
<br>

<div class="col-md-12 text-center1 change-details">

<form name="change-password" action="user_create_password" modelAttribute="user_update_model">    
<div class="col-md-12"> 
    <p style="text-align: center; font-size: 30px; color:black; ">Create Your Password</p>
    <hr>
    <br>
</div>
<div class="col-md-12"> 
<input type="text" class="passwword new-passwword password-validation_pn" name="new_password" placeholder="CREATE PASSWORD" required>   <br> <br>
</div>
<div class="col-md-12"> 
<br>
<button type="submit" class="button2 check_val_pn"> Create Password</button>
<br><br><br>
</div>
</form>
</div>
</div>
</div>
</div>

</div>


</div>
</div>




<!-- Password Exist -->

<div class="user-profile-section-password-exist">
<div class="container-fluid"> 
<div class="col-md-3"></div>

<div class="col-md-6">
<div class="pr-section3">
<div class="container-fluid">
<div class="section1-data3">
<br>

<div class="col-md-12 text-center1 change-details">

<form name="change-password" action="user_change_password" modelAttribute="user_update_model">    
<div class="col-md-12"> 
    <p style="text-align: center; font-size: 30px; color:black; ">Change Your Password</p>
    <hr>
    <br>
<input type="text" class="passwword new-passwword" name="old_password" placeholder="OLD PASSWORD" required>   <br> <br>
</div>
<div class="col-md-12"> 
<input type="text" class="passwword new-passwword password-validation_py" name="new_password" placeholder="NEW PASSWORD" required>   <br> <br>
</div>
<div class="col-md-12"> 
<br>
<button type="submit" class="button2 check_val_py"> Change Password</button>
<br><br><br>
</div>
</form>
</div>
</div>
</div>
</div>
</div>


</div>
</div>

<br><br>
<br><br>


<!--Footer Start-->

    <div class="footer_import">
    <script>
    $(function(){
    $(".footer_import").load("user-footer");  
    })
    </script>
    </div>
  

<!--Footer End-->



        
</body>

</html>