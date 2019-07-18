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
              display: block;
          }

.dashboard-donation
{   
    color:white;
    border-bottom: 2px solid white;
}

.user-donation-section
{
    margin-top: 200px;
}
.pr-section1
{
    background-color: #fff; 
    border-radius: 20px;
    font-size: 17px;
    color:rgb(110, 110, 110);
    box-shadow: 7px 7px 10px 1px rgba(0, 0, 0, 0.205);
    background-image: url('/destiny/files/dashboard-user-images/donation1-icon.jpg');
    background-size: 100% 100%;
    
}

.button-all
{
    background-color: rgb(209, 88, 18);
    color:white;
    border:none;
    height: 45px;
    border-radius: 50px;
    outline: none;
    transition: 0.43s;
    text-transform: uppercase;
    width:300px
}

.button-all:hover
{
    background-color: rgb(240, 68, 15);
}

.button-all:active
{
    transition: 0.0s;
    transform: scale(0.98);
}
.donation-content
{
    text-align: center;
    color: rgb(58, 58, 58);
    font-weight: bold;

}

@media(max-width:975px)
{
    .button-all
    {
        width:220px;
    }
}
</style>



<div class="user-donation-section">
<div class="container"> 
<div class="col-md-12">
<div class="pr-section1">
<div style="background-color: rgba(255, 255, 255, 0.158); border-radius: 20px;">

<div class="donation-content">
<br><br><br><br><br>

        <p style="font-size: 50px;">You haven't made any donations yet.</p>
        <br>
        <a href="browse-a-fundraisers"><button class="button-all">Donate Now</button></a>

<br><br><br><br><br><br>     
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