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
<body style="font-family: algerrian sans-serif; background-image: url('/images/login-bg.jpg'); background-size: 100% 100%">

     

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
    
    
    
    <div class="section1-box2" style="display:block; margin-top: 10%;">
    <div class="col-md-3"></div>
    <div class="col-md-6">
    <div class="tag-first" style="background-color:white; box-shadow: 0px 0px 20px 10px rgba(0, 0, 0, 0.438); border-radius: 10px;">
    <br>
    
    <div class="container-fluid" style="margin-top:20px; margin-bottom: 50px;">
    
            <p style="font-size:30px; text-align: center">Admin Login</p>
            <hr style="border:solid 0.5px rgb(148, 115, 115);">
 
        <form name="admin-login" method="POST" action="admin-login" modelAttributes="admin_login_model">
    
            <span class="fa fa-eye show_hide_password"></span>
            <input type="text" name="admin_id" class="form-control forgot-all-button" placeholder="ID"><br>
            <input type="password" name="admin_password" class="new_password form-control forgot-all-button" placeholder="New Password"><br>
           
           <br>
            <input type="submit" class="form-control forgot-all-button submit-new-password">
        </form>
    
    <div class="error-content">
    <style>
    .error-content
    {
    	font-size:18px; 
    	text-align:center; 
    	text-transform:uppercase;
    }
    
    .hide-error
    {
    	display:block;
    }
    
    .show-error
    {
    	color:red; 
    	font-family:bold;
    	transition:0.3s;
    	font-size:0px;
    }
    
    </style>
	    <span class="hide-error" style="color:red;">${message}</span>
	    <span class="forgot-password"><a href="#" style="text-decoration:auto">Forgot Password Click Here</a></span>
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
    
    </body>

    </html>