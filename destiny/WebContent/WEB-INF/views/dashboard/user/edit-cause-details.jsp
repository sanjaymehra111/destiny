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
<body style="font-family: algerrian sans-serif;  background-color: rgba(182, 184, 184, 0.11);">

       
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
  

.amount-text
{
    padding: 20px;
    padding-left: 30px;
    padding-right: 30px;
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
    padding-left: 14px;
    padding-right: 14px;
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

.edit-pencil
{
    font-size: 30px;
    color:rgb(255, 255, 255);
    cursor: pointer;
}

.edit-pencil:hover
{
    color:rgb(21, 214, 198);
    
}

@media(max-width:975px)
{

    .cause_title
{
    font-size: 30px;
}  

}

</style>


<div class="cause-details-section">
<style>
    
.edit-heading
{
 border:solid 2px white;
 background-color: transparent;
 color:white;
 padding: 5px;
 font-size: 30px;
 width:60%;
 }

 .edit-submit1-btn, .edit-cancel1-btn
 {
     font-size: 40px;
     color:rgb(255, 255, 255);
     background-color: transparent;
     border: none;
     outline: none;
 }

 .edit-submit1-btn:hover, .edit-cancel1-btn:hover
 {
    color:rgb(21, 214, 198);
 }
</style>

<div class="cd-section2">    
<div style="background-color:rgb(11, 108, 133); padding-top: 50px; padding-bottom: 25px;">
<div class="container-fluid">
    <div class="cause_amount">
    
        <div class="cause_title">
            
          <div class="edit-heading-main1"  style="display: block"> <span class="edit-heading-main2">  Help My Friend Rahul </span>
            <span class="edit-pen1 edit-pencil fa fa-pencil-square-o"></span>
        </div>

        
          <!--Editing Heading Start-->

<script>
$(function(){
    $(".edit-pen1").click(function(){
        var head=$(".edit-heading-main2").html();
        $(".edit-heading-main1").hide();
        $(".edit1").show();
        $(".edit-heading").val(head);
        $(".edit-heading").css({"border":"solid 2px white"});
    });

    $(".edit-cancel1").click(function(){
        $(".edit1").hide();
        $(".edit-heading-main1").show();
    });

    $(".edit-submit1").click(function(){
        var n_head=$(".edit-heading").val();
        if(n_head == "")
        {
            $(".edit-heading").css({"border":"solid 2px red"});
            return false;
        }
        else
        {
            $(".edit-heading-main2").html(n_head);
            $(".edit1").hide();
            $(".edit-heading-main1").show();
            $(".edit-heading").css({"border":"solid 2px white"});
            return true;
        }
    });


})
</script>

        <div class="edit1" style="display: none;">
            <center>
              
                <input class="edit-heading" maxlength="60" name="new_heading"pe="text">
                <button type="submit" class="edit-submit1 edit-submit1-btn  fa fa-check-circle"></button>
                <button type="button" class="edit-cancel1 edit-cancel1-btn fa fa-times-circle"></button>

            
            </center>
        </div>

          <!--Editing Heading End-->

    </div>
<br>
<br>
<style>
.goal-amount-new, .submit-2-btn
{
    display: none;
}
.new-goal1
{
    background-color: transparent;
    border:none;
    outline: none;
    color:white;
    width:100px;
}
</style>
        <div class="col-md-6">
        <div class="col-md-6">
        <span class="t-amount amount-text">Goal &#8377; 
            <span style="border-bottom: solid 2px rgb(255, 255, 255); font-weight: bold">

            <span class="goal-percent goal-amount-old">
                1258745
            </span> 

            <span class="goal-amount-new">
             <input class="new-goal1" type="text" maxlength="9">   
            </span> 

            </span>
            
        <span style="font-size: 20px; margin-left: 20px;" class="edit-pen2 edit-pencil fa fa-pencil-square-o"></span> 

        <span class="submit-2-btn">
                <button type="submit" style="font-size: 20px;" class="edit-submit2 edit-submit1-btn  fa fa-check-circle"></button>
                <button type="button" style="font-size: 20px;" class="edit-cancel2 edit-cancel1-btn fa fa-times-circle"></button>
        &nbsp;
        </span>

        </span>
        <br><br><br><br>
        </div>


          <!--Editing Goal Amount End-->
<script>
$(function(){

$('.new-goal1').keyup(function () {     
  this.value = this.value.replace(/[^1-9\.]/g,'');
});
/*Show new Goal*/
    $(".edit-pen2").click(function(){
        $(".edit-pen2").hide();
        $(".goal-amount-old").hide();

        $(".goal-amount-new").show();
        $(".submit-2-btn").show();
    })

/*hide new Goal*/
    $(".edit-cancel2").click(function(){
        $(".edit-pen2").show();
        $(".goal-amount-old").show();

        $(".goal-amount-new").hide();
        $(".submit-2-btn").hide();
    })

/*display new Goal*/
    $(".edit-submit2").click(function(){
       var n_goal=$(".new-goal1").val();
       //alert(n_goal);

       if(n_goal == "" )
        {
            return false;
        }
        else
        {
        $(".goal-amount-old").html(n_goal);

        $(".edit-pen2").show();
        $(".goal-amount-old").show();

        $(".goal-amount-new").hide();
        $(".submit-2-btn").hide();
         return true;
        }
    })


})
</script>
          <!--Editing Goal Amount  End-->

          <div class="col-md-6">
            <span class="r-amount amount-text">Raised  &#8377; <span class="achieved-percent" style="border-bottom: solid 2px rgb(255, 255, 255); font-weight: bold">589455</span></span>
          </div>
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
        <div class="col-md-4">
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


<style>
.add-image-icon2
{
    transform: rotate(45deg);
    transition: 0.3s;
}

.add-image-icon
{
    text-align: center;
    font-size: 150px;
    color:rgba(0, 0, 0, 0.541);
    position: relative;
    left:30%;
    top: 160px;
    z-index: 999;
    transition: 0.3s;

}
.add-image-icon:hover
{
    color:rgba(0, 0, 0, 0.753);

}
@media(max-width:975px)
{
    .add-image-icon
{
    left:38%;
    top: 160px;
 

}   
}
</style>

<span class="add-image-icon add-image-icon1 edit-pencil fa fa-plus"></span>
<span style="display: none" class="add-image-icon add-image-icon2  edit-pencil fa fa-plus"></span>

<div class="cd-section3" style="margin-top: -120px;">
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
            opacity: 0.5;
            
        }
        /*
        .slick-dots li button:before
            {
                font-size: 12px;
                color:rgb(13, 108, 121);
             
            }
        */
        
        
        
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
        
            .edit-image1
            {
                background-color: rgb(248, 232, 201);
                text-align: center;
                width:100%;
                overflow: hidden;
                transition: 0.2s;
                height: 0;
                opacity:0;
            }
            .edit-img2
            {
                border-radius: 100px;
                cursor: url("/destiny/files/dashboard-user-images/delete2.png"), default;
                width:110px; 
                height: 110px;
            }
        
            .add-images2
            {
                width:110px; 
                height: 110px;
            }
        
        
            .add-images2:hover
            {
                cursor: pointer;
                border-radius: 100px;
                transform: rotate(45deg);
                transition: 0.3s ease-in-out;        
            }
        
            .file-upload
            {
                display: none;
                font-size: 0.0px;
                width:0;
                height: 0;
            }
        </style>    
        
<script>


/*add-hide-images*/

$(function(){


$(".add-image-icon1").click(function(){
    $(".add-image-icon1").hide();
    $(".add-image-icon2").show();
    $(".user-images1").css({"height":"650"});
    $(".edit-image1").css({"height":"auto"});
    $(".edit-image1").css({"padding":"20px"});
    $(".edit-image1").css({"opacity":"1"});
    
});

$(".add-image-icon2").click(function(){
    $(".add-image-icon2").hide();
    $(".add-image-icon1").show();
    $(".user-images1").css({"height":"450"});
    $(".edit-image1").css({"height":"0px"});
    $(".edit-image1").css({"padding":"0px"});
    $(".edit-image1").css({"opacity":"0"});


});
});


/*get-set-images

$(".add-image-icon1").click(function(){

var img1=$(".user-images").html();
//var path = $('.img-path1').prop('src');
//alert(path);
//$(".uploaded-iamges").html(path);

});
*/

/*delete-images*/

$(function(){
    $(".edit-img2").click(function(){
        var img_path = $(this).prop('src');
      //  alert(img_path);
        this.remove();

    })
})


/*add-images*/

$(function(){
    $(".add-images2").click(function(){
    $(".file-upload").click()
   });

    $(".file-upload").change(function()
    {
       var file_name = $(".file-upload").val();
       // alert(file_name);
    });
})

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
    
    <img class="img-path1" src="/destiny/files/images/drintwater.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/parallax-1.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/volunteer.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/water.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/causes.jpg" style="width:100%; height: 400px;">
    <img class="img-path1" src="/destiny/files/images/voulnteer-d.jpg" style="width:100%; height: 400px;">

</div>
<br><br>
<div class="edit-image1">
    <span class="uploaded-iamges">
            <img src="/destiny/files/dashboard-user-images/donor3.svg" class="edit-img2">
            <img src="/destiny/files/dashboard-user-images/donor2.svg" class="edit-img2">
            <img src="/destiny/files/dashboard-user-images/donor1.svg" class="edit-img2">
            <img src="/destiny/files/dashboard-user-images/donorall.png" class="edit-img2">
    </span>
<span class="upload-iamges">
        <img src="/destiny/files/dashboard-user-images/media2.png" class="add-images2">
        <input type="file" class="file-upload" name="new_file">
</span>        
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

<style>
.edit-pen5, .edit-pen6
{
    font-size: 25px; 
    color:rgb(255, 255, 255); 
    float: right
}
.edit-pen5:hover, .edit-pen6:hover
{
    color:rgb(21, 214, 198);
}

</style>


<p class="cb-details"> Campaigner Details 
<img class="img-icon" src="/destiny/files/images/voulnteer-d.jpg"></p>
<br><br>
<button class="verified-button">VERIFIED <i class="fa fa-check-circle"></i></button>
<p class="tips-text"> Mandar Avhad </p>
<p class="tips-text"> Self </p>
<p class="tips-text">
<i class="fa fa-map-marker"></i> &nbsp; Delhi 
</p>
<span style="margin-top: -25px; display: none" class="edit-pencil edit-pen5 fa fa-pencil-square-o"></span>

</div>


<div class="camp-details" style="margin-top:20px; line-height: 15px; background-color: rgb(21, 160, 214); padding: 15px; border-radius: 5px">
<br>

<style>
.old-data6
{
    display:block;
}
.b-new
{
    margin-top: -20px;
    padding:5px;
    padding-left: 10px;
    padding-right: 10px;
    border:none;
    outline: none;
    background-color: transparent;
    width:50%;
    text-align: left;
    border-bottom: 2px solid white;
    font-size: 18px;
}
.new-data6
{
    display: none;
}
.new-data6-1
{
    display: none;
}
.bn_new_image
{
    width:0;
    height: 0;
}
.cam-img1
{
    transform:scale(0);
    position: absolute;
    top: 280;
    left:85%;
    width:30px;
    height:30px;
    transition: 0.3s;
}



@media(max-width:975px)
{
    .cam-img1
{
    top: 280;
    left:82%;
 
}   
}
@media(max-width:401px)
{
    .cam-img1
{
    width:25px;
    height:25px;
    top: 270;
    left:82%;
}   
}
</style>

<script>
$(function(){
    
    /*Show Edit Text*/

    $(".edit-pen6").click(function(){
        
        $(".cam-img1").css({"cursor":"pointer", "transform":"scale(1)"});
        var b_name=$(".b-old").html();
        $(".b-new").val(b_name);

        $(".old-data6").hide();
        $(".edit-pen6").hide();
        $(".new-data6").show();
        $(".new-data6-1").show();
    });

    /*Cancel Edit Text*/
    
    $(".edit-cancel6").click(function(){
        $(".cam-img1").css({"cursor":"default", "transform":"scale(0)"});
        $(".old-data6").show();
        $(".edit-pen6").show();
        $(".new-data6").hide();
        $(".new-data6-1").hide();
        //$(".old-bn-image").load(".old-bn-image");
        $(".old-bn-image").load(location.href + " .old-bn-image>*", "");
        //$(".old-bn-image").load(".old-bn-image");
    });

    /*Submit Edit Text*/

    $(".edit-submit6").click(function(){
        $(".cam-img1").css({"cursor":"default",  "transform":"scale(0)"});

        var b_name_new=$(".b-new").val();
        $(".b-old").html(b_name_new);

        $(".old-data6").show();
        $(".edit-pen6").show();
        $(".new-data6").hide();
        $(".new-data6-1").hide();
    });


    /*Change beneficiary Image*/

        $(".cam-img1").click(function(){

            var bcr=$(".cam-img1").css('cursor');
            if(bcr == 'pointer')
            {
                $(".bn_new_image").click();
                return true;
            }
            else
            {
                //alert("error");
                return false;
            }
        });

    /*Change beneficiary Image name*/

    $(".bn_new_image").change(function(){
        var bn_new_name=$(".bn_new_image").val();
        var bn_name =bn_new_name.replace(/^.*\\/, "");
      //  alert(bn_name);
    });



})
</script>


<script type="text/javascript">
    function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('.new_icon2').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }
</script>


<p class="cb-details">Beneficiary Details
<span class="edit-bn-image1">
    <img src="/destiny/files/dashboard-user-images/camera1.png" class="cam-img1">
</span>
<span class="old-bn-image">
<img class="img-icon bn-img new_icon2" src="/destiny/files/images/voulnteer-a.jpg"></p>
</span>

<br><br>

<button class="verified-button">VERIFIED <i class="fa fa-check-circle"></i></button>
 
<div class="old-data6">
<p class="tips-text b-old"> Vikas Bharadwaj</p>
</div>

<div class="new-data6" style="text-align: left">
<input type="text" maxlength="50"class="b-new" name="b_new_name">
</div>

<br><br>
<span  class="edit-pencil edit-pen6 fa fa-pencil-square-o"></span>


<span class="new-data6-1">
<button type="submit" style="font-size: 30px;" class="edit-submit6 edit-submit1-btn  fa fa-check-circle"></button>
<button type="button" style="font-size: 30px;" class="edit-cancel6 edit-cancel1-btn fa fa-times-circle"></button>
<input type="file" name="bn_new_image" onchange="readURL(this);" class="bn_new_image">
</span>


<br><br>
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

.dc
{
    font-size: 25px; 
    color:rgb(150, 150, 150)
}
.dc:hover
{
    color:rgb(21, 214, 198);
}

</style>
<br>
<center>
<button class="details-button speed-image" style="border-bottom:solid 2px rgb(150, 150, 150)">DESCRIPTION 
        
<span class="dc edit-pencil edit-pen3 fa fa-pencil-square-o"></span>

</button>
<button class="details-button eligibility-image">DOCUMENTS

    <span class="dc edit-pencil edit-pen4 fa fa-pencil-square-o"></span> 

</button>
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

    <br><br>

</div>



<div class="col-md-12" style="background-image:linear-gradient(rgb(255, 255, 255), rgba(255, 255, 255, 0.425));  background-size: 100% 100%;  border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
<div style="background-color:rgba(0, 0, 0, 0); margin-left: -15px; margin-right: -15px;">
    <br>


<!--Description Start-->
<div class="description-section" style="display: block;">

<style>
.dec-fix
{
    display: block;
}
.dec-btn 
{
    background-color: rgb(9, 61, 92);
    color:white;
    outline:none;
    border:none;
    padding: 7px;
    font-size: 15px;
    transition: 0.3s;
    width:25%;
}

.dec-btn:hover
{
    background-color: rgb(42, 128, 179);

}
.dec-new1
{
    display: none;
}


.edit-mode1
{
    color:red;
    font-size: 0px;
    transition: 0.3s;
    text-align: center;
}
</style>

<script>
$(function(){


/*For textarea Details*/
CKEDITOR.replace( 'description_edit' );


/*show edit description */

$(".edit-pen3").click(function(){
$(".dec-fix").hide();
$(".dec-new1").show();
$(".edit-pen3").css({"color":"rgb(30, 206, 191)", "transform":"scale(1.2)"});
$(".edit-mode1").css({"font-size":"17px"});
});

/*set description */

$(".dec-can").click(function(){
$(".dec-fix").show();
$(".dec-new1").hide();
$(".edit-pen3").css({"color":"rgb(143, 142, 142)", "transform":"scale(1)"});
$(".edit-mode1").css({"font-size":"0px"});
});

$(".dec-sub").click(function(){

var dec_new=$(".dec-new1").html();    
//alert(dec_new);

//$(".dec-fix").html(dec_new);    

$(".edit-pen3").css({"color":"rgb(143, 142, 142)", "transform":"scale(1)"});
$(".edit-mode1").css({"font-size":"0px"});
$(".dec-fix").show();
$(".dec-new1").hide();

});

});


</script>

<div class="edit-mode1">Edit Mode</div>
<br>

<div class="col-md-12 dec-fix">
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

    
<div class="col-md-12  dec-new1">

<textarea name="description_edit" class="dec-new" rows="8" style="width:100%; background-color: transparent; font-size: 18px; color:black;" placeholder="Fundraiser Story">

        Struggling to pen down a fundraiser story on your own? No worries, just use the template below:



        Hi,
        
        My name is (your name) and I am raising money for (your cause/problem). This is important to me because (write why you want to do this and how will it benefit). I am unable to fund this myself due to (explain your situation and the need for donations). I want to request for your help to achieve this. Please help by donating or sharing the fundraiser with your friends and family.
        
        
        
        We are grateful for your helps!
        
    

</textarea>
<br><br>
<div style="text-align: center">
<button class="dec-btn dec-can">Cancel</button> &nbsp; &nbsp;
<button class="dec-btn dec-sub">Submit</button> 
</div>
<br><br>
</div>        
    
        
        
        
        


</div>
<!--SPEED  End-->



<!--Eligibility Start-->
<div class="document-section" style="display: none">

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

.upload-hide
{
    font-size: 0;
    width:0;
}

.upload-doc
{
    width:0px;
    height:0px;
    transition: 0.3s;

}

.upload-doc.edit 
{
    width:200px;
    height: 200px;
}

.zoom-image.cursor
{
    cursor: url("/destiny/files/-images/delete2.png"), default;
}

.edit-pen4.color
{
    color:rgb(30, 206, 191);
    transform: scale(1.2);
}

.deleted-doc
{
    color:red;
    font-size: 0px;
    transition: 0.3s;
}

.edit-mode2
{
    color:red;
    font-size: 0px;
    transition: 0.3s;
    text-align: center;
}

.edit-mode2.editmode
{
    font-size: 17px;
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
    $(".deleted-doc").css({"font-size":"0px"});


    });

    /*show edit File*/

    $(".edit-pen4").click(function(){
        //alert("asdasd");
        $(".upload-doc").toggleClass('edit');
        $(".zoom-image").toggleClass('cursor');
        $(".edit-pen4").toggleClass('color');
        $(".edit-mode2").toggleClass('editmode');

    })

    /*Delete File*/
    $(".zoom-image").click(function(){
    var a= $(this).css('cursor');

    //alert(a);
    if(a != 'pointer')
    {
        $(this).remove();
        $(".deleted-doc").css({"font-size":"20px"});
        return true;
    }
    else
    {
        return false;
    }

    })


    /*upload File*/

    $(".upload-doc").click(function(){
    $(".upload-hide").click();
    });

    $(".upload-hide").change(function(){
        var uc=$(".upload-hide").val();
       // alert(uc);
    })


})
</script>

<div class="edit-mode2">Edit Mode</div>
<br>
 <center>
<span class="old-document">   

    <img src="/destiny/files/images/document1.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document2.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document3.JPG" class="document-details zoom-image">

</span>

<span class="new-document">     
    <img src="/destiny/files/-images/upload-document.png" style="border:none;" class="document-details upload-doc">
    <input type="file" name="new_file" class="upload-hide">
</span>

    
<br>
<br>
<span class="deleted-doc">Recently Deleted Document <i class="fa fa-chevron-down"></i></span>
<br>
<i class="fa fa-times-circle close-button"></i>
    <div class="display-image" style="display: none"><img src="" class="images-effct"></div>



</center>


<br><br>
</div>

<!--ELIGIBILITY End-->


</div>
</div>

</div>


<div class="container-fluid"></div>
<br><br>

<div class="cd-section5" style="background-color: white; border-radius: 10px; font-size: 18px; padding: 10px; overflow: hidden;">
<div class="container-fluid">

<style>
.account-details-fix
{
    font-weight: bold;
}

.account-details-edit-1
{
    border:none;
    outline: none;
    border-bottom: 2px solid black;
    width:145px;
    padding-left: 5px;
    padding-right: 5px;
    font-size: 17px;
}
.edit-pen7
{
    cursor: pointer;
    color:rgb(76, 87, 88);
    font-size: 30px;
    transition: 0.3s;
}

.edit-pen7:hover
{
    transform: scale(1.1);
    color:rgb(21, 160, 214);
}

.edit-submit7, .edit-cancel7
{
    color:rgb(76, 87, 88);
    background-color: white;
    transition: 0.3s;
    outline: none;
    border:none;
}

.edit-submit7:hover, .edit-cancel7:hover
{
    transform: scale(1.1);
    color:rgb(21, 160, 214);
}

.new-data7, .account-details-edit
{
    display: none;
}

</style>   


<script>
$(function edit_ac_detail(){

$(".edit-pen7").click(function(){

    var ano=$(".u-bank-ac-no").html();
    var aname=$(".u-bank-ac-name").html();
    var aifsc=$(".u-bank-ac-ifsc").html();
    var aupi=$(".u-upi-no").html();

    $(".edit-ac-no").val(ano);
    $(".edit-ac-name").val(aname);
    $(".edit-ac-ifsc").val(aifsc);
    $(".edit-upi-no").val(aupi);
    

    //alert(an);
        $(".edit-pen7").hide();
        $(".account-details-fix").hide();
        $(".account-details-edit").show();
        $(".new-data7").show();
});

$(".edit-cancel7").click(function(){
        $(".edit-pen7").show();
        $(".account-details-fix").show();
        $(".account-details-edit").hide();
        $(".new-data7").hide();
});

$(".edit-submit7").click(function(){

    var ano1=$(".edit-ac-no").val();
    var aname1=$(".edit-ac-name").val();
    var aifsc1=$(".edit-ac-ifsc").val();
    var aupi1=$(".edit-upi-no").val();

    $(".u-bank-ac-no").html(ano1);
    $(".u-bank-ac-name").html(aname1);
    $(".u-bank-ac-ifsc").html(aifsc1);
    $(".u-upi-no").html(aupi1);

    


        $(".edit-pen7").show();
        $(".account-details-fix").show();
        $(".account-details-edit").hide();
        $(".new-data7").hide();
});

})

</script>

<div class="account-data">

<br>
        Use the information below to make a direct bank transfer through NEFT/RTGS/IMPS.
<br>
<br>
Account number : 
<span class="u-bank-ac-no account-details-fix">123456789</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-ac-no account-details-edit-1">
</span>
<br>

Account name : 
<span class="u-bank-ac-name account-details-fix">Rahul</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-ac-name account-details-edit-1">
</span>
<br>

IFSC code : 
<span class="u-bank-ac-ifsc account-details-fix">sbi115822ok</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-ac-ifsc account-details-edit-1">
</span>
<br>
<b style="margin-left: 10px;">OR</b>
<br>

For UPI Transaction: 
<span class="u-upi-no account-details-fix">supportvikas67@yesbankltd</span>
<span class="account-details-edit">
    <input type="text" maxlength="30" class="edit-upi-no account-details-edit-1">
</span>
<br><br>

<a href="#" style="text-decoration: none;">Click here to read this before you donate via the above options</a>

</div>

<br>
<center>

<span  class="edit-pen7 fa fa-pencil-square-o"></span>

<span class="new-data7">
    <button type="button" style="font-size: 30px;" class="edit-cancel7 fa fa-times-circle"></button>
    <button type="submit" style="font-size: 30px;" class="edit-submit7 fa fa-check-circle"></button>
</span>
</center>
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

<style>
.edit-pen8, .edit-cancel8, .edit-submit8 
{
    background-color: white;
    outline: none;
    border:none;
    font-size: 25px;
    padding-left: 15px;
    float: right;
    color:rgb(76, 87, 88);
    transition: 0.3s;
    cursor: pointer;
}

.edit-pen8:hover, .edit-cancel8:hover, .edit-submit8:hover 
{
    transform: scale(1.1);
    color:rgb(21, 160, 214);
}
.upi-image
{
    width:0px; 
    height:0px;
    transition: 0.3s;
    cursor: pointer;
}

.upi-image.add
{
    width:30px; 
    height: 30px;
}

.upi-image:hover
{
    transform: scale(1.1);
}
.upi-image-file
{
    font-size: 0px;
    border:none;
    outline: none;
    width:0px;
}

.edit-cancel8, .edit-submit8
{
    display: none;
}
</style>

<script type="text/javascript">
    function readURL1(input) {
           if (input.files && input.files[0]) {
               var reader1 = new FileReader();

               reader1.onload = function (e) {
                   $('.upi-main-file').attr('src', e.target.result);
               };

               reader1.readAsDataURL(input.files[0]);
           }
       }
</script>


<script>
$(function get_img_file(){
        $(".upi-image").click(function(){
        $(".upi-image-file").click();
    });

    $(".upi-image-file").change(function(){
        var f_name= $(".upi-image-file").val();
        var f_name1 = f_name.replace(/^.*\\/, "");
        //alert(f_name1);
    });

    $(".edit-pen8").click(function(){
        $(".upi-image").toggleClass('add');
        $(".edit-pen8").hide();
        $(".edit-cancel8, .edit-submit8").show();
        $(".upi-text").removeAttr('readonly');
        
    
    });

    $(".edit-cancel8").click(function(){
        $(".upi-image").removeClass('add');
        $(".edit-pen8").show();
        $(".edit-cancel8, .edit-submit8").hide();
        $(".upi-text").attr('readonly', 'true');

        $(".fix-upi-image").load(location.href + " .fix-upi-image>*", "");
        $(".upi-text-main").load(location.href + " .upi-text-main>*", "");
        

    });

    $(".edit-submit8").click(function(){
        $(".upi-image").removeClass('add');
        $(".edit-pen8").show();
        $(".edit-cancel8, .edit-submit8").hide();
        $(".upi-text").attr('readonly', 'true');

    });
})
</script>


        <p style="font-size: 15px;font-weight: bold; text-align: justify;  font-style: italic">
            Donate Via PayTm Or UPI

            <span  class="edit-pen8 fa fa-pencil-square-o"></span>

            <span class="new-data8">
                    <button type="button" class="edit-cancel8 fa fa-times-circle"></button>
                    <button type="submit" class="edit-submit8 fa fa-check-circle"></button>
            </span>
            
        </p>

        <hr style="border: solid 0.5px black; margin-top: -2px;">
            <div class="col-md-6">

                <span class="edit-upi-image">
                    <img src="/destiny/files/-images/camera1.png" class="upi-image">
                    <input type="file"  onchange="readURL1(this);" name="upi-image-file" class="upi-image-file">
                </span>
                <span class="fix-upi-image">
                <img src="/destiny/files/images/qr-code.png" class="upi-main-file" style="width:100px; height: 150px;">   
                </span>

                <br><br>
                
            </div>
            <div class="col-md-6 upi-text-main">
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



<!--Footer Start-->

    <div class="footer_import">
    <script>
    $(function(){
    $(".footer_import").load("user-footer");  
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