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

    <!--Textarea-->
    <script src="https://cdn.ckeditor.com/4.11.1/basic/ckeditor.js"></script>

   

    
      

</head>


<title> Destiny World</title>

<body style="font-family: algerrian sans-serif; background-color: rgba(224, 224, 224, 0.527);">


<!--Header Start-->

    <div class="header_import">
    <jsp:include page="user-header.jsp" />
    </div>
    
<!--Header End-->
<style>

th, td {
  padding: 15px;
}

.user-profile-section
{
    margin-top: 10px;
}

.an-section1, .an-section2, .an-section3, .an-section4, .an-section5, .head1
{
    background-color: #fff; 
    border-radius: 10px;
    font-size: 17px;
    color:rgb(110, 110, 110);
    box-shadow: 7px 7px 10px 1px rgba(0, 0, 0, 0.205);
}
.fatch-data
{
    /*margin-left: 20px;*/
    font-size: 23px;
    color:black
}
.text-center1
{
    text-align: left;
}
.button1
{
    margin-top: 15px;
    height: 40px;
    width:49%;
    border-radius: 50px;
    outline: none;
    border:solid 3px rgb(8, 89, 121);
    background-color: white;
    color:black;
    text-transform: uppercase;
    font-weight: bold;
    transition: 0.2s ease-in-out;
    box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.534);
}

.button1:hover
{
    background-color: rgb(8, 89, 121);
    color:white;
}

.button1:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}

.top-bar-content
{
    margin-top: 50px;
}

.cards
{
    font-size: 30px;
    border-radius: 500px;
    padding: 15px;
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



.title
{
    color:black;
    font-size: 25px;
}

.donors-icons
{
width:40px
}
.help-text
{
font-size: 18px;
}


.manage-header
{
    text-align: center;
}

.mdh
{
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 5px;
    color:rgb(126, 125, 125);
    font-weight: bold;
    font-size: 15px;
}

.mdh:hover
{
    color:rgb(20, 120, 187);
}


.dashboard-analytics
{   
    color:rgb(20, 120, 187);
    border-bottom: 2px solid rgb(20, 120, 187);
}

.manage-header .slick-slide
{
    height:25px;
}

/*

.manage-header .slick-next, .manage-header .slick-prev
{
   background-color: rgba(16, 98, 153);
    border-radius: 500px;  
    font-size: 1px;
    height:25px;
    width: 25px;
}
.manage-header .slick-next:hover, .manage-header .slick-prev:hover
{
    background-color: rgb(16, 98, 153);
    
}

.manage-header .slick-next:focus, .manage-header .slick-prev:focus
{
background-color: rgba(16, 98, 153);
}

.manage-header .slick-next:active, .manage-header .slick-prev:active
{
    background-color: rgba(16, 98, 153);
}

*/


.boost-text
{
    font-size: 15px;
}

.youtube-video
{
width: 100%;
height: 300px;
border: none;
}


@media(max-width:975px)
{

    .help-text
{
font-size: 15px;
}

.dashboard-overview
{   
    border-bottom: 0px solid white;
}

    .fun-step1
{
    width:96%;
    top:10px;

}
.connect-text
{
    font-size: 25px; 
}
.an-section1
{
    font-size: 15px;
}
.fatch-data
{
    font-size: 20px;
}
.text-center1
{
    text-align: center;
}
.top-bar-content
{
    margin-top: 0px;
}
}

@media(max-width:600px)
{
    .mdh
{
    font-size: 12px;
}
.boost-text
{
    font-size: 12px;
}

}
</style>



<div class="user-profile-section">


<!--Manage Header Start-->

    <div class="manage_header_import">
    <jsp:include page="manage-header.jsp" />
    </div>
    
<!--manage Header End-->


<div class="container-fluid"> 


<div class="col-md-6">

<div class="an-section1">
<div class="container-fluid" style="text-align: center">
<br>
<p  style="font-size: 20px; color:rgb(41, 41, 41); font-weight: bold">DONATIONS</p>
<hr>
<p style="font-size: 25px">You don't have any donations yet</p>
<br>



</div>
</div>


<br><br>
</div>


<div class="col-md-6">

<div class="an-section2">
<div class="container-fluid" style="text-align: center">
<br>
<p  style="font-size: 20px; color:rgb(41, 41, 41); font-weight: bold">DONORS</p>
<hr>
<p style="font-size: 25px">You don't have any donations yet</p>
<br>



</div>
</div>


<br><br>
</div>




<div class="col-md-6">
<div class="an-section3"  style="padding: 20px;">

<style>
.progress-text
{
    font-weight: bold; 
    font-size: 20px;
}
.progress-bar1f, .progress-bar1w, .progress-bar1t, .progress-bar1g, .progress-barl
{
    min-width: 5%;
}

.progress:hover
{
    cursor: pointer;
}
@media(max-width:675px)
{
    .progress-text
{
    font-size: 15px;
}   
}
</style>

<script>
$(function(){
    var pgf1 =$(".progress-bar1f").width() / $('.progress-bar1f').parent().width() * 100;
    var pgf2=Math.round(pgf1);

    var pgw1 =$(".progress-bar1w").width() / $('.progress-bar1w').parent().width() * 100;
    var pgw2=Math.round(pgw1);

    var pgt1 =$(".progress-bar1t").width() / $('.progress-bar1t').parent().width() * 100;
    var pgt2=Math.round(pgt1);

    var pgg1 =$(".progress-bar1g").width() / $('.progress-bar1g').parent().width() * 100;
    var pgg2=Math.round(pgg1);

    var pgl1 =$(".progress-bar1l").width() / $('.progress-bar1l').parent().width() * 100;
    var pgl2=Math.round(pgl1);
    

if(pgf2 >= 25)
{
    $(".prog2f").show();
    $(".progress-text2f").hide();
}
else
{
    $(".prog2f").hide();
    $(".progress-text2f").show();
}

if(pgw2 >= 25)
{
    $(".prog2w").show();
    $(".progress-text2w").hide();
}
else
{
    $(".prog2w").hide();
    $(".progress-text2w").show();
}

if(pgt2 >= 25)
{
    $(".prog2t").show();
    $(".progress-text2t").hide();
}
else
{
    $(".prog2t").hide();
    $(".progress-text2t").show();
}

if(pgg2 >= 25)
{
    $(".prog2g").show();
    $(".progress-text2g").hide();
}
else
{
    $(".prog2g").hide();
    $(".progress-text2g").show();
}

if(pgl2 >= 25)
{
    $(".prog2l").show();
    $(".progress-text2l").hide();
}
else
{
    $(".prog2l").hide();
    $(".progress-text2l").show();
}



});
</script>


<div style="font-weight: bold; color: black; font-size: 20px; text-align: center">SHARE</div>
<br>

<div class="progress" style=" width:100%; height: 60px;">
    <div class="progress-bar1f progress-bar progress-bar-striped active" aria-valuemax="100" style="width:25%">
    <br>
    <span class="progress-text"><span class="prog1f"><i class="fa fa-Facebook"></i> </span> <span class="prog2f"> |  Facebook </span></span>
    </div>
    <br>
    <span class="progress-text2f"> &nbsp;&nbsp;  Facebook </span>

<!--    <span class="progressbar-percent" style="font-weight: bold; color:rgb(0, 0, 0); font-size: 20px; margin-top: -12px; right: 7%; position: absolute;"> 10% </span> -->
</div>

<div class="progress"style=" width:100%; height: 60px;">
    <div class="progress-bar1w progress-bar progress-bar-success progress-bar-striped active" aria-valuemax="100" style="width:10%">
    <br>
    <span class="progress-text" ><span class="prog1w"><i class="fa fa-whatsapp"></i> <span class="prog2w"> | Whatsapp</span>
    </div>
    <br>
    <span class="progress-text2w"> &nbsp;&nbsp;  Whatsapp </span>
</div>

<div class="progress"style=" width:100%; height: 60px;">
    <div class="progress-bar1t progress-bar progress-bar-warning progress-bar-striped active" aria-valuemax="100" style="width:50%">
    <br>
    <span class="progress-text" > <span class="prog1t"> <i class="fa fa-twitter"></i> </span>  <span class="prog2t"> | Twitter</span>
    </div>
    <br>
    <span class="progress-text2t"> &nbsp;&nbsp;  Twitter </span>
</div>

<div class="progress"style=" width:100%; height: 60px;">
    <div class="progress-bar1g progress-bar progress-bar-danger progress-bar-striped active" aria-valuemax="100" style="width:5%">
    <br>
    <span class="progress-text" > <span class="prog1g"> <i class="fa fa-google-plus"></i> </span>  <span class="prog2g"> | Google+</span>
    </div>
    <br>
    <span class="progress-text2g"> &nbsp;&nbsp;  Google+ </span>
</div>

<div class="progress"style=" width:100%; height: 60px;">
    <div class="progress-bar1l progress-bar progress-bar-info progress-bar-striped active" aria-valuemax="100" style="width:50%">
    <br>
    <span class="progress-text" >  <span class="prog1l"> <i class="fa fa-linkedin"></i> </span>  <span class="prog2l"> | linkedin</span>
    </div>
    <br>
    <span class="progress-text2l"> &nbsp;&nbsp;  Linkedin </span>
</div>





<!--

<style>
.canvasjs-chart-credit
{
    display: none;  
}
</style>

<script type="text/javascript">
    window.onload = function () {
    
    var chart = new CanvasJS.Chart("chartContainer", {
        theme: "light1", // "light2", "dark1", "dark2"
        animationEnabled: true, // change to true		
        title:{
            text: "Share"
        },
        data: [
        {
            // Change type to "bar", "area", "spline", "pie",etc.
            type: "column",
            dataPoints: [
                { label: "apple",  y: 15  },
                { label: "orange", y: 15  },
                { label: "banana", y: 25  },
                { label: "mango",  y: 30  },
                { label: "grape",  y: 28  }
            ]
        }
        ]
    });
    chart.render();
    
    }
</script>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
-->

</div>
<br><br>
</div>


<div class="col-md-6">
<div class="an-section3"  style="padding: 20px;">

<style>
.progress-text
{
    font-weight: bold; 
    font-size: 20px;
}
.progress-bar1int, .progress-bar1ind
{
    min-width: 5%;
}

</style>

<script>
$(function(){
    var pgind1 =$(".progress-bar1ind").width() / $('.progress-bar1ind').parent().width() * 100;
    var pgind2=Math.round(pgind1);

    var pgint1 =$(".progress-bar1int").width() / $('.progress-bar1int').parent().width() * 100;
    var pgint2=Math.round(pgint1);

   

if(pgind2 >= 25)
{
    $(".prog2ind").show();
    $(".progress-text2ind").hide();
}
else
{
    $(".prog2ind").hide();
    $(".progress-text2ind").show();
}



if(pgint2 >= 25)
{
    $(".prog2int").show();
    $(".progress-text2int").hide();
}
else
{
    $(".prog2int").hide();
    $(".progress-text2int").show();
}


});
</script>


<div style="font-weight: bold; color: black; font-size: 20px; text-align: center">DEMOGRAPHICS</div>
<br>

<div class="progress" style=" width:100%; height: 60px;">
    <div class="progress-bar1ind progress-bar progress-bar-striped active" aria-valuemax="100" style="width:25%">
    <br>
    <span class="progress-text"><span class="prog2ind"> India </span></span>
    </div>
    <br>
    <span class="progress-text2ind"> &nbsp;&nbsp;  INDIA </span>
</div>

<div class="progress"style=" width:100%; height: 60px;">
    <div class="progress-bar1int progress-bar progress-bar-info progress-bar-striped active" aria-valuemax="100" style="width:0%">
    <br>
    <span class="progress-text" ><span class="prog2int"> International</span>
    </div>
    <br>
    <span class="progress-text2int"> &nbsp;&nbsp;  INTERNATIONAL </span>
</div>






</div>
<br><br>
</div>


</div>


</div>


<br><br>

<!--Footer Start-->

    <div class="footer_import">
    <jsp:include page="user-footer.jsp" />
    </div>
    

<!--Footer End-->




        
</body>

</html>