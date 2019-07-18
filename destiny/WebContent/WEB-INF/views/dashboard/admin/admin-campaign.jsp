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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

      <!--For slick bar-->         
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css">
  
      <script type='text/javascript' src='/js/jquery.mousewheel.min.js'></script>
      
      

</head>


<title> Destiny World</title>

<body style="font-family: algerrian sans-serif; background-color: rgba(224, 224, 224, 0.527);">


<!--Header Start-->

    <div class="header_import">
    <script>
    $(function(){
    $(".header_import").load("admin-header");  
    })
    </script>
    </div>
    
<!--Header End-->

<style>
   .dashboard-header
          {
              display: block;
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
.pr-section1, .pr-section2, .pr-section3, .pr-section4, .pr-section5
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
.fb-button
{
    width:100%;
    font-size: 20px;
    height: 50px;
    background-color: rgb(59, 114, 216);
    outline: none;
    border: none;
    color:white;
    transition: 0.3s ease-in-out;
    border-radius: 50px;
    
}
.fb-button:hover
{
    background-color: rgb(8, 54, 141);
}
.fb-button:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}

.in-button
{
    width:100%;
    font-size: 20px;
    height: 50px;
    background-color: rgb(35, 151, 204);
    outline: none;
    border: none;
    color:white;
    transition: 0.3s ease-in-out;
    border-radius: 50px;
    
}
.in-button:hover
{
    background-color: rgb(3, 94, 136);
}
.in-button:active
{
    transition: 0.1s ease-in-out;
    transform: scale(0.98);
}
.connect-text
{
    text-align: center; 
    color:rgb(8, 106, 131); 
    font-size: 30px; 
    font-weight: bold;
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

.pan-aadhar-number:active
{
    border: none
}





.fun-step1
{
    border-radius: 0px;
    background-color: rgb(59, 151, 212);
    width:25%;
    color:rgb(255, 255, 255);
    padding: 15px;
    font-size: 25px;
    position: fixed;
    z-index: 9999999;
    top:10px;
    right: -1000px;
    cursor: pointer;
    transition:0.5s;
}

.fun-step1.add
{
    right: 10px;

}

.success-close
{
    font-size: 20px;
    float: right;
    position: relative;
    top:-10px;
    right: -5px;
    color:rgb(0, 0, 0);
    cursor: pointer;
    transition: 0.3s;
    
}

.success-close:hover
{
    color:rgb(255, 255, 255);
}

.submit-function
{
    opacity: 1;
   
}



@media(max-width:975px)
{
    .fun-step1
{
    width:96%;
    top:10px;

}
.connect-text
{
    font-size: 25px; 
}
.pr-section1
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
</style>



<div class="user-profile-section">
<div class="container-fluid"> 

<div class="col-md-12">
<div class="pr-section5">
    
<div class="container-fluid">
<div class="section1-data1">

<div class="heading" style="border-bottom: solid 2px rgba(0, 0, 0, 0.363)">
<br>
<p style="text-align: center; color:black; font-weight: bold; font-size: 20PX;">
    <span> 
    <select class="select-fundraisers">
            <option value="">all</option>
            <option value="IDEAS">Creative IDEAS</option>
            <option value="MEDICAL">Medical</option>
            <option value="NGO">NGO</option>
            <option value="PERSONAL">Personal</option>
    </select>    
    </span>
    CAMPAINGS 
    <span class="br-tag"><br></span>
    <span class="search-bar">
        <input id="myInput" class="myinput" placeholder="Search.." type="text"> &nbsp; <i class="fa fa-search search-icon"></i>
    </span>
</p>
</div>

<div class="deta-process">
<br>


<script>
$(function(){

    $(".select-fundraisers").change(function()
    {
        var a = $(".select-fundraisers").val();
        //$("#myInput").on("keyup", function() {
        var value = $(".select-fundraisers").val().toLowerCase();
        $("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
});
        $("#myInput").on("keyup", function() {
            var value2 = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value2) > -1)
            });
        });

//search show

$(".search-icon").click(function(){
   // alert("asd");
    $(".myinput").toggleClass("width");
    $(".myinput").focus();

})

});

</script>


<style>
  
    .search-icon
    {
        cursor: pointer;
        color:rgb(161, 161, 161);
        transition: 0.3s;
    }
    .search-icon:hover
    {
        color:rgb(134, 23, 23);
        transform: scale(1.1);
    }

     .myinput
    {
        font-size: 20px;
        outline: none;
        border: none;
        border-bottom: solid 2px black;
        text-align: center;
        width:0px;
        transition: 0.3s;
    }
    .myinput.width
    {
        width:200px;
    }


.u_type
{
    text-transform: uppercase;
}
.select-fundraisers
{
    width:10%;
    font-size: 20px;
    color:rgb(13, 88, 138);
    text-transform: uppercase;
    outline: none;
    border:none;
    border-bottom: 2px solid rgb(0, 0, 0);
}
.select-fundraisers
{
    width:200px;
}

table, td, th {  
  border: 1px solid rgba(212, 212, 212, 0.397);
  text-align: left;
  
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
}

.circle-1
{
    color:rgba(0, 0, 0, 0.514);
    font-size: 22px;
    cursor: wait;
}
.circle-1-2 
{
    color:rgba(0, 0, 0, 0.514);
    font-size: 22px;
    color:green;
    cursor: auto;
    display: none;

}

.block-user, .unblock-user
{
    color:white;
    border-radius: 50px;
    outline: none;
    padding: 5px;
    padding-left: 10px;
    padding-right: 10px;
    border:none;
    font-size: 15px;
    transition: 0.3s;
}
.block-user
{
    background: rgb(236, 26, 26);
}
.unblock-user
{
    display: none;
    background: rgb(50, 177, 11);
}


.block-user:hover
{
    background: rgb(131, 9, 9);
}
.unblock-user:hover
{
    background: rgb(27, 100, 5);
}

.deta-process::-webkit-scrollbar {
  width: 0px;
  height: 10px;
  border-radius: 100px;
  transition: 0.3s;
}

.deta-process::-webkit-scrollbar-track {
  background: rgb(228, 228, 228); 
}
 
.deta-process::-webkit-scrollbar-thumb {
  background: rgb(14, 132, 179); 
}

.deta-process::-webkit-scrollbar-thumb:hover {
  background: rgb(9, 68, 92); 
}

.img-for-all
{
    padding: 2px;
    width:40px;
    border: 2px solid rgb(255, 255, 255);
    border-radius: 100px;
    cursor: pointer;
    transition: 0.1s;
}
.img-for-all:hover
{
    border: 2px solid rgb(141, 143, 139);
    transform: scale(1.1);
}

.text1
{
text-align: center;
color:rgb(133, 131, 131);
border-radius: 100px;
position: static;
transition: 0.3s;
}
.ap, .dp, .sc, .dl
{
font-size: 0px;
}
.ap.add
{
padding: 5px;
font-size: 16px;
}
.dp.add
{
padding: 5px;
font-size: 16px;
}
.sc.add
{
padding: 5px;
font-size: 16px;
}
.dl.add
{
padding: 5px;
font-size: 16px;
}

.u_action
{
    min-width: 210px;
}

.search-bar
{
    float:right;
    margin-right: 20px;
}

.br-tag
{
    display: none;
}

.deta-process
{
    overflow: scroll;
}
.fundraisers-table th
{
    min-width: 150px;
}

@media(max-width:975px)

{

.deta-process::-webkit-scrollbar {
  height: 7px;
}


.br-tag
{
    margin-top: -10px;
    display: block;
}
.search-bar
{
    float:none;
}
.fundraisers-table th
{
    min-width: 130px;
}

.deta-process
{
    overflow: scroll;
}
}

</style>



<script>
        $(function(){
            $(".approve-logo").hover(function(){
                $(".ap").toggleClass("add");
                $(".dp").removeClass("add");
                $(".sc").removeClass("add");
                $(".dl").removeClass("add");

            });

            $(".disapprove-logo").hover(function(){
                $(".dp").toggleClass("add");
                $(".ap").removeClass("add");
                $(".sc").removeClass("add");
                $(".dl").removeClass("add");
            });

            $(".success-logo").hover(function(){
                $(".sc").toggleClass("add");
                $(".dp").removeClass("add");
                $(".ap").removeClass("add");
                $(".dl").removeClass("add");
            });

            $(".delete-logo").hover(function(){
                $(".dl").toggleClass("add");
                $(".sc").removeClass("add");
                $(".dp").removeClass("add");
                $(".ap").removeClass("add");
                
            });
      
        })
</script>


<div class="fundraisers-details">
<table class="fundraisers-table">
    <thead>
    <tr>
        <th class="th">ID</th>
        <th>TYPE</th>
        <th>TITLE</th>
        <th>CATEGORY</th>
        <th>LOCATION</th>
        <th>START DATE</th>
        <th>END DATE</th>
        <th>GOAL</th>
        <th>ACHIEVED</th>
        <th>STATUS</th>
        <th>ACTION
                <span class="status-text">
                        <span class="text1 ap">Approve</span>
                        <span class="text1 dp">Disapprove</span>
                        <span class="text1 sc">Success</span>
                        <span class="text1 dl">Delete</span>
                        <br>
                </span>
        </th>
        <th>VIEW</th>


    </tr>
</thead>

<tbody id="myTable">

        <tr>
          <td class="u_id">12312456</td>
          <td class="u_type">NGO</td>
          <td class="u_title">help for my school</td>
          <td class="u_category">school</td>
          <td class="u_location">delhi</td>
          <td class="u_start_date">2-5-2019</td>
          <td class="u_end_date">1-4-2020</td>
          <td class="u_gole">250000</td>
          <td class="u_ach_gole">20000</td>
          <td class="u_status">Approve</td>
          <td class="u_action">
              <span class="user-status">
                    <img class="img-for-all approve-logo" src="/destiny/files/dashboard-admin-images/app.jpg">
                    <img class="img-for-all disapprove-logo" src="/destiny/files/dashboard-admin-images/dis.jpg">
                    <img class="img-for-all success-logo" src="/destiny/files/dashboard-admin-images/suc.jpg">
                    <img class="img-for-all delete-logo" src="/destiny/files/dashboard-admin-images/del.jpg">
                </span>
          </td>
          <td class="u_view"><img class="img-for-all view-logo" src="/destiny/files/dashboard-admin-images/view1.jpg"></td>
        </tr>
    
        <tr>
          <td class="u_id">12312456</td>
          <td class="u_type">NGO</td>
          <td class="u_title">help for my school</td>
          <td class="u_category">school</td>
          <td class="u_location">delhi</td>
          <td class="u_start_date">2-5-2019</td>
          <td class="u_end_date">1-4-2020</td>
          <td class="u_gole">250000</td>
          <td class="u_ach_gole">20000</td>
          <td class="u_status">Approve</td>
          <td class="u_action">
              <span class="user-status">
                    <img class="img-for-all approve-logo" src="/destiny/files/dashboard-admin-images/app.jpg">
                    <img class="img-for-all disapprove-logo" src="/destiny/files/dashboard-admin-images/dis.jpg">
                    <img class="img-for-all success-logo" src="/destiny/files/dashboard-admin-images/suc.jpg">
                    <img class="img-for-all delete-logo" src="/destiny/files/dashboard-admin-images/del.jpg">
                </span>
          </td>
          <td class="u_view"><img class="img-for-all view-logo" src="/destiny/files/dashboard-admin-images/view1.jpg"></td>
        </tr>
    
        <tr>
          <td class="u_id">12312456</td>
          <td class="u_type">NGO</td>
          <td class="u_title">help for my school</td>
          <td class="u_category">school</td>
          <td class="u_location">delhi</td>
          <td class="u_start_date">2-5-2019</td>
          <td class="u_end_date">1-4-2020</td>
          <td class="u_gole">250000</td>
          <td class="u_ach_gole">20000</td>
          <td class="u_status">Approve</td>
          <td class="u_action">
              <span class="user-status">
                    <img class="img-for-all approve-logo" src="/destiny/files/dashboard-admin-images/app.jpg">
                    <img class="img-for-all disapprove-logo" src="/destiny/files/dashboard-admin-images/dis.jpg">
                    <img class="img-for-all success-logo" src="/destiny/files/dashboard-admin-images/suc.jpg">
                    <img class="img-for-all delete-logo" src="/destiny/files/dashboard-admin-images/del.jpg">
                </span>
          </td>
          <td class="u_view"><img class="img-for-all view-logo" src="/destiny/files/dashboard-admin-images/view1.jpg"></td>
        </tr>
    
        <tr>
          <td class="u_id">12312456</td>
          <td class="u_type">NGO</td>
          <td class="u_title">help for my school</td>
          <td class="u_category">school</td>
          <td class="u_location">delhi</td>
          <td class="u_start_date">2-5-2019</td>
          <td class="u_end_date">1-4-2020</td>
          <td class="u_gole">250000</td>
          <td class="u_ach_gole">20000</td>
          <td class="u_status">Approve</td>
          <td class="u_action">
              <span class="user-status">
                    <img class="img-for-all approve-logo" src="/destiny/files/dashboard-admin-images/app.jpg">
                    <img class="img-for-all disapprove-logo" src="/destiny/files/dashboard-admin-images/dis.jpg">
                    <img class="img-for-all success-logo" src="/destiny/files/dashboard-admin-images/suc.jpg">
                    <img class="img-for-all delete-logo" src="/destiny/files/dashboard-admin-images/del.jpg">
                </span>
          </td>
          <td class="u_view"><img class="img-for-all view-logo" src="/destiny/files/dashboard-admin-images/view1.jpg"></td>
        </tr>
    
  
    </tbody>
      
</table>
</div>

<br>
</div>


</div>
</div>
</div>
</div>

</div>


</div>


<!--View Campaign All Details-->

<div class="view-campaign">

<style>
.view-logo-btn
{
    display: none;
}
.modal-dialog
{
    width:90%;
}
#myModal
{
    z-index: 999999;
}

@media(max-width:975px)
{
    .modal-dialog
{
    width:95%;
}
}

</style>    

<script>
$(function(){
    $(".view-logo").click(function(){
    $(".view-logo-btn").click();
        
    })
})
</script>

<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg view-logo-btn" data-toggle="modal" data-target="#myModal">Open Modal</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="text-align: center">Campaign Details</h4>
        </div>
        <div class="modal-body">


<style>
 
.amount-text
{
    padding: 20px;
    padding-left: 40px;
    padding-right: 40px;
    background-color: rgb(9, 127, 173);
    color: white;
    outline: none;
    font-size: 18px;
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
    padding: 10px;
    outline: none;
    font-size: 11px;

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
    padding-top: 10px;
    padding-bottom: 10px;
    color: rgb(255, 255, 255);
    font-weight: bold;
    text-align: center;
    width:100%;
    overflow: hidden;


}  

@media(max-width:975px)
{

    .cause_title
{
    font-size: 30px;
}  

}

</style>

<div class="cause-details-main">

<div class="cause-details-section">


<div class="cd-section2">    
<div style="background-color:rgb(11, 108, 133); padding-top: 25px; padding-bottom: 25px;">
<div class="container-fluid">
    <div class="cause_amount">
    
        <div class="cause_title">Help My Friend Rahul</div>

        <br><br>
        <div class="col-md-6">
        <span class="t-amount amount-text">Goal &#8377; <span class="goal-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">201205152</span> </span>
        <span class="r-amount amount-text">Achieved  &#8377; <span class="achieved-percent" style="border-bottom: solid 2px rgb(255, 255, 255); font-weight: bold"> 55111265  </span></span>
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
        <div class="col-md-6">
        <span class="p-amount amount-text">OF OUR GOAL <span class="ach-percent" style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold"></span> </span>
        <span class="d-amount amount-text">Share <span style="border-bottom: solid 2px rgb(255, 255, 255); padding: 5px; font-weight: bold">48</span> </span>
        <br><br><br>
        </div>
        <div class="col-md-2" style="display: none">
                <a href="#" style="text-decoration: none" class="donate-popup"><span class="d-button amount-text"><span style="font-weight: bold">Donate Now</span> </span></a>
           <br><br>
        </div>
        
    </div>
</div>
</div>
</div>

<br><br>

<div class="cd-section3">
<div class="container-fluid">    
    

<style>
.user-images .slick-slide
{
    height: auto;
    cursor: pointer;
}

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
</style>    

<script>

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


<div class="col-md-8 container-fluid">
<div class="user-images">

    <div><img src="/destiny/files/images/drintwater.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/parallax-1.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/volunteer.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/water.jpg" style="width:100%; height: 400px;"></div>
    <div><img src="/destiny/files/images/causes.jpg" style="width:100%; height: 400px;"></div>

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
<p class="cb-details"> Campaigner Details 
<img class="img-icon" src="/destiny/files/images/voulnteer-d.jpg"></p>
<br><br>
<button class="verified-button">VERIFIED <i class="fa fa-check-circle"></i></button>
<p class="tips-text"> Mandar Avhad </p>
<p class="tips-text"> Self </p>
<p class="tips-text">
<i class="fa fa-map-marker"></i> &nbsp; Delhi 
&nbsp;<span style="cursor:pointer"> <i class="fa fa-envelope"></i> &nbsp; Message </p></span>
</div>

<br>

<div class="camp-details" style="line-height: 15px; background-color: rgb(21, 160, 214); padding: 15px; border-radius: 5px">
<br>
<p class="cb-details">Beneficiary Details
<img class="img-icon" src="/destiny/files/images/voulnteer-a.jpg"></p>

<br><br>

<button class="verified-button">VERIFIED <i class="fa fa-check-circle"></i></button>
<p class="tips-text"> Vikas Bharadwaj</p>
<br>
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


</style>

<br>
<center>
<button class="details-button speed-image" style="border-bottom:solid 2px rgb(150, 150, 150)">DESCRIPTION</button>
<button class="details-button eligibility-image">DOCUMENTS</button>
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





<!--
    <div class="col-md-12" style="text-align: center;"> 
    <img src="/destiny/files/images/des-icon.png" class="images-style speed-image" style="transform: scale(0.6); opacity: 1;">
    <img src="/destiny/files/images/document-icon.png" class="images-style eligibility-image">
    
    <img src="/destiny/files/images/donation-icon.png" class="images-style amount-image">
    <img src="/destiny/files/images/comment-icon.png" class="images-style cost-image">
-->

    <br><br>

</div>



<div class="col-md-12" style="background-image:linear-gradient(rgb(255, 255, 255), rgba(255, 255, 255, 0.425));  background-size: 100% 100%;  border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
<div style="background-color:rgba(0, 0, 0, 0); margin-left: -15px; margin-right: -15px;">
    <br>


<!--Description Start-->
<div class="description-section" style="display: block;">


<!--    <p style="text-align: center; font-size: 25px;">DESCRIPTION</p>
    <hr style="border:solid 1.5px rgb(224, 109, 80); text-align: center; width: 90%;">
    <br>    

--> 


<div class="col-md-12">
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


</div>
<!--SPEED  End-->



<!--Eligibility Start-->
<div class="document-section" style="display: none">
<!--
    <p style="text-align: center; font-size: 25px;">DOCUMENTS</p>
    <hr style="border:solid 1.5px rgb(224, 109, 80); text-align: center; width: 90%;">
    <br>    
-->

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

    })


})
</script>

 <center>
    <img src="/destiny/files/images/document1.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document2.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document3.JPG" class="document-details zoom-image">
    <img src="/destiny/files/images/document4.JPG" class="document-details zoom-image">


    
<br><br>
<i class="fa fa-times-circle close-button"></i>
    <div class="display-image" style="display: none"><img src="" class="images-effct"></div>



</center>


<br><br>
</div>

</div>
</div>

</div>


<div class="container-fluid"></div>
<br><br>

<div class="cd-section5" style="background-color: white; border-radius: 10px; font-size: 18px; padding: 10px;">
<div class="container-fluid">
<br>
        Use the information below to make a direct bank transfer through NEFT/RTGS/IMPS.
<br>
<br>

- Account number : <b> 123456789</b>
<br>
- Account name : <b> Rahul</b>
<br>
- IFSC code : <b> sbi115822ok</b>
<br>
<b> OR</b>
<br>
For UPI Transaction: <b> supportvikas67@yesbankltd</b>
<br><br>
<a href="#" style="text-decoration: none;">Click here to read this before you donate via the above options</a>
<br>
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

.upi-text:hover
{
    cursor: copy;
}

.upi-text:focus
{
    outline: none;
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
  var uid = document.getElementById("myInput2");
  uid.select();
  document.execCommand("copy");
  //alert("Copied the text: " + copyText.value);
}
</script>




<button class="form-control dn-button donate-popup" style="display: none"><i class="fa fa-thumbs-up"></i> DONATE NOW </span></button>    
<br>
<p style="font-size: 18px;font-weight: bold; text-align: justify; text-align: center; font-style: italic">Funds will be transferred to the hospital</p>
<br>
<div class="upi" style="box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.534); background-color: white; border-radius: 10px; text-align: center;">
    <div class="container-fluid"><br>
        <p style="font-size: 15px;font-weight: bold; text-align: justify;  font-style: italic">
            Donate Via PayTm Or UPI
        </p>
        <hr style="border: solid 0.5px black; margin-top: -2px;">
            <div class="col-md-6">
                <img src="/destiny/files/images/qr-code.png" style="width:100px; height: 150px;">    
            </div>
            <div class="col-md-6">
                <img src="/destiny/files/images/upi.png" style="width:100px; height: 40px;"><br><br>
                <textarea readonly id="myInput2" class="upi-text">9999991111@ybl</textarea>
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
</div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <a href="campaign-donors"><button type="button" class="btn btn-default">Donors</button></a>
          <a href="edit-campaign"><button type="button" class="btn btn-default">Edit</button></a>
        </div>
      </div>
    </div>
  </div>
  
</div>

    

</div>


<div class="col-md-12"></div>

<br><br>
<br><br>


<!--Footer Start-->

    <div class="footer_import">
    <script>
    $(function(){
    $(".footer_import").load("admin-footer");  
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
    
    <!--<button class="donate-popup">Donate</button>-->
    
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