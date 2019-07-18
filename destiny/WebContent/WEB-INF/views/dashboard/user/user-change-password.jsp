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
.user-profile-section
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


.pan-aadhar-number
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



<div class="user-profile-section">
<div class="container-fluid"> 
<div class="col-md-3"></div>

<div class="col-md-6">
<div class="pr-section3">
<div class="container-fluid">
<div class="section1-data3">
<br>

<div class="col-md-12 text-center1 change-details">

<form name="change-password">    
<div class="col-md-12"> 
    <p style="text-align: center; font-size: 30px; color:black; ">Change Your Password</p>
    <hr>
    <br>
<input type="text" class="pan-number pan-aadhar-number" name="user_old_password" placeholder="OLD PASSWORD">   <br> <br>
</div>
<div class="col-md-12"> 
<input type="text" class="aadhar-number pan-aadhar-number" name="user_new_password" placeholder="NEW PASSWORD">   <br> <br>
</div>
<div class="col-md-12"> 
<br>
<button class="button2"> Change Password</button>
<br><br><br>
</div>
</form>
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