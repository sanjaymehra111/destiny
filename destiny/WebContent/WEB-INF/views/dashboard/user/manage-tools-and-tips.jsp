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
  padding: 5px;
}

.user-profile-section
{
    margin-top: 10px;
}

.tt-section1, .tt-section2, .tt-section3, .tt-section4, .tt-section5, .head1
{
    background-color: #fff; 
    border-radius: 10px;
    font-size: 17px;
    color:rgb(110, 110, 110);
    box-shadow: 7px 7px 10px 1px rgba(0, 0, 0, 0.205);
}

.tt-section1
{
    color:rgb(255, 255, 255);
    font-size: 20px;
    text-align: center;
}

.tt-section3
{
    background-size: 100% 100%;
    color:rgb(0, 0, 0);
    font-size: 20px;
    text-align: center;
}

.wf-main-head
{
    font-size: 30px;
    font-weight: bold;
}

.wf-main-body
{
    line-height: 22px;
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


.dashboard-tools-and-tips
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

    .btn-share
{
    margin-top: 10px;
    margin-bottom: 10px;
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
.tt-section1
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

<div class="tt-section1">
<div style="background-color: rgb(10, 97, 43); padding-top: 70px; padding-bottom: 70px; border-radius: 10px; min-height: 570px;">
<div class="container-fluid">    

<p class="wf-main-head">Fundraising Calendar</p>
<p class="wf-main-body">
        Daily tasks charted out for you to enhance our fundraising! Follow this easy calendar for better fundraiser management.
<br><br><br>
<img src="/destiny/files/dashboard-user-images/calendar.png" style="width:60%">
<br><br><br>
<a href="/destiny/files/dashboard-user-images/2019 Calendar.pdf" target="_blank"><button class="button2" style="width:220px; background-color: rgb(241, 90, 31);"><i class="fa fa-download"></i> | Download</button></a>
</p>

</div>
</div>
</div>
<br><br>
</div>

<div class="col-md-6">

<div class="tt-section3">
<div style="background-color: rgb(253, 253, 253); padding-top: 70px; padding-bottom: 70px; border-radius: 10px; min-height: 570px;">
<div class="container-fluid">    

<p class="wf-main-head">Accelerate Your Fundraiser</p>
<p class="wf-main-body" style="font-size: 18px;">
        Having trouble raising funds on your own? Our Accelerate model helps boost your fundraiser through content and marketing support from our inhouse team of experts to help you increase your donations!
<br><br>
<span style="color:rgba(0, 0, 0, 0.651); font-size: 18px;">*Only a few fundraisers are chosen for Accelerate based on Impact Guru’s discretion</span>
<br><br>

        <div class="col-md-12 head-section3" style="background-color: rgba(209, 209, 209, 0.164); border-radius: 10px;"><br>
        <div style="color: black; text-align: center; font-size: 18px;">Need help? Contact your campaign manager</div>
        <table  style="border:none">
        <tr  style="border:none">
                <td  style="border:none; width:20%">
                    <span class="section1-image"><img src="/destiny/files/dashboard-user-images/icon1.png" style="width:70px; height: 70px; border-radius: 10px; overflow: hidden;"></span>
                </td>
                <td class="help-text" style="border:none;">
                    <span style="color:rgb(21, 108, 148);">Name:</span> viplav <br>
                    <span style="color:rgb(21, 108, 148);">Contact:</span> 8447484747 <br>
                    <span style="color:rgb(21, 108, 148);">Email:</span> viplab111@hotmail.com
                </td>
        </tr>    
        </table>
        </div>
<button class="button2" style="width:220px; margin-top: 30px; background-color: rgb(241, 90, 31);"><i class="fa fa-bolt"></i> | Accelerate</button>
</p>
<p class="wf-main-body">
        <span style="color:rgb(182, 182, 182); font-size: 15px;">The accelerate feature will be enabled only after you raise a minimum of ₹25,000 through your own network on your Impact Guru fundraiser</span>
</p>

</div>
</div>
</div>

<br><br>

</div>

<div class="col-md-6">

<div class="tt-section3">
<div style="background-color: rgb(253, 253, 253); padding-top: 70px; padding-bottom: 70px; border-radius: 10px; min-height: 570px;">
<div class="container-fluid">    

<p class="wf-main-head">Fundraising Tips</p>
<div class="container" style="text-align: left; line-height: 40px;">
    
<style>

.tips-text
{
    color:gray; 
    cursor: pointer; 
    padding-bottom: 5px; 
    border-bottom: solid 2px gray;
}

.tips-text:hover
{
    color: rgb(0, 0, 0);
    border-bottom: solid 2px black;
}

</style>

<p style="font-size: 30px; color: rgb(19, 83, 143)"><i class="fa fa-check-square-o" style="color:rgb(19, 83, 143); font-size: 30px;"></i> Plan Your Fundraisers</p>

<a href="#" style="text-decoration: none"><span class="tips-text"> Quick Tips <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;

<a href="#" style="text-decoration: none"><span class="tips-text"> Pre-Launch Ideas <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;
<br>
<a href="#" style="text-decoration: none"><span class="tips-text"> Post-Launch Strategy <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;


<br><br>

<p style="font-size: 30px; color: rgb(19, 83, 143)"><i class="fa fa-pencil-square-o" style="color:rgb(19, 83, 143); font-size: 30px;"></i> Design Your Fundraiser</p>

<a href="#" style="text-decoration: none"><span class="tips-text"> Write A Good Story <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;

<a href="#" style="text-decoration: none"><span class="tips-text"> Craft An Appealing Title <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;
<br>
<a href="#" style="text-decoration: none"><span class="tips-text"> Give Great Rewards <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;


<br><br>


<p style="font-size: 30px; color: rgb(19, 83, 143)"><i class="fa fa-share-square-o" style="color:rgb(19, 83, 143); font-size: 30px;"></i> Promote Your Fundraiser</p>

<a href="#" style="text-decoration: none"><span class="tips-text"> Overall Social Media Plan <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;

<a href="#" style="text-decoration: none"><span class="tips-text"> Fundraise On Facebook <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;
<br>
<a href="#" style="text-decoration: none"><span class="tips-text"> Fundraise On Twitter <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;

<a href="#" style="text-decoration: none"><span class="tips-text"> Send Great Emails <i class="fa fa-caret-right"></i></span></a>
&nbsp;&nbsp;


</div>

</div>
</div>
</div>

<br><br>

</div>


<div class="col-md-6">
<div class="tt-section4" style="border-radius: 10px; box-shadow: none;">

<div class="how-body10">
<div class="container-fluid">  
    
<script>
$(function(){
    $(".rotate").click(function(){
        $(this).toggleClass("up");
    })
    
})
</script>

<style>

.rotate {
    transition: all .5s linear;
    border-radius: 50px;
    
}
.rotate:hover {
    cursor: pointer;
    color:white;
    background-color: rgb(202, 205, 206);
    border-radius: 50px;
}
.rotate.up {
    transform:rotate(180deg);
    border-radius: 50px;
}


</style>

    
    
    <p class="wf-main-head" style="color:black; text-align: center; margin-top: 70px;">Frequently Asked Questions</p>
    <br>

    <div class="col-md-2"></div>
    <div class="col-md-12" style="text-align: justify">    

<div class="details1" style="background-color: rgba(243, 242, 242, 0.89); border-radius: 15px;">
    <div class="container-fluid">
        <div class="detail1"  style="font-size:20px; color: black; text-align: center; margin-top:15px; margin-bottom:15px;">
        <span>
                <i  data-target="#demo" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> 
            What is Destiny World ?
        </span>
        </div>
        <div id="demo" class="collapse" style="font-size:18px">
                Destiny World is India's leading online crowdfunding platform that enables NGOs to fund their programs as well as individuals to fund their medical expenses, creative projects and personal projects. Alternatively, it allows you to donate to a cause you support or, choose from a host of vetted causes here on Destiny World.

          <br><br>
        </div>
    </div>
</div>
<br>
    
<div class="details1" style="background-color: rgba(243, 242, 242, 0.89);; border-radius: 15px;">
        <div class="container-fluid">
            <div class="detail1"  style="font-size:20px;  color: black;  text-align: center; margin-top:15px; margin-bottom:15px;">
                    <i  data-target="#demo2" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> </span>
                    <span>How does Destiny World disburse funds during emergencies ? 
            </div>
            <div id="demo2" class="collapse" style="font-size:18px">
                    We understand that many campaigners, especially medical causes, cannot wait until the fundraiser closes and often need to make payments to hospitals in parts. Unlike many platforms, on Destiny World, you can request for partial or full fund withdrawal before your fundraiser closes! Go to your dashboard, click on “Withdraw Funds”, enter the amount you wish to withdraw and upload the documents required (bank details and scanned copies of PAN and Aadhar cards).
                <br>
              <br>
            </div>
        </div>
</div>

<br>

<div class="details1" style="background-color: rgba(243, 242, 242, 0.89);; border-radius: 15px;">
        <div class="container-fluid">
            <div class="detail1"  style="font-size:20px;  color: black; text-align: center; margin-top:15px; margin-bottom:15px;">
            <span>
                    <i  data-target="#demo3" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> 
                    What do I need to start a fundraiser ?
            </span>
            </div>
            <div id="demo3" class="collapse" style="font-size:18px">
                    You can create a fundraiser on Destiny World in less than 5 mins! Click on the start a fundraiser button and from there you will require the following to complete your fundraiser.
                    <br><br>1. Your personal details, including your name, phone number and email.
                   <br><br>2. Add details about your fundraiser, including a title, images, a story (your appeal to potential donors - if your cause is medical, a storybuilder will appear in the third step to help you write your story), name of the beneficiary and the goal amount.
                   <br><br>3. Add supporting documents like the patients’ medical reports, doctor’s letter, medical bills etc.
                   <br><br> Watch this video to know how to build a great fundraiser!
                <br>
              <br>
            </div>
        </div>
</div>


<br>

<div class="details1" style="background-color: rgba(243, 242, 242, 0.89);; border-radius: 15px;">
        <div class="container-fluid">
            <div class="detail1"  style="font-size:20px;  color: black; text-align: center; margin-top:15px; margin-bottom:15px;">
            <span>
                    <i  data-target="#demo4" data-toggle="collapse" style="float:right" class="fa fa-chevron-down rotate"></i> 
                    How long does it take to receive funds ?
            </span>
            </div>
            <div id="demo4" class="collapse" style="font-size:18px">
                    Fund transfers usually take 3-5 working days for domestic funds and 7-10 working days for international funds after the request has been made. In case of emergencies or if the above mentioned time period has passed, get in touch with us at info@impactguru.com and we will revert at the earliest. 

           <br><br> You can also call us at 022-49717414
                <br>
              <br>
            </div>
        </div>
</div>
<button class="button2" style="width:100%; margin-top: 30px; background-color: rgb(241, 90, 31);"><i class="fa fa-plus-circle"></i> | MORE FAQ's</button>
<br><br>
<br><br>

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
    <jsp:include page="user-footer.jsp" />
    </div>
    

<!--Footer End-->






        
</body>

</html>