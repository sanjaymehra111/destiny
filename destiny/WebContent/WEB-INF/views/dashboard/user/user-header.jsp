
<script>

  
var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "-300px";
  }
  prevScrollpos = currentScrollPos;
}
</script>




<style>

.headerbtn
{
  border:none;
  background-color: rgba(19, 218, 185, 0.267);  
  color:white;
    
}

    #navbar {
      position: fixed;
      top: 0;
      z-index: 9999;
      width: 100%;
      transition: top 0.50s;
      background-color: rgba(0, 0, 0, 0.884);
    }
    
    .ib-button, .ib1, .ib2, .ib3
    {
      transition: 0.3s ease-in-out;
      border-radius: 50px;
    }

  
  </style>
    

    <script>
      $(function(){
          $(".ib-button").click(function(){
             //$(".ib1").css({"opacity":"0"});
             
          })
          
      })
      </script>
<!--Top Bar Start-->

<div class="top-bar" style="display:none">
        
    <div class="container-fluid" style="color:gray; text-align: center">

        <div class="col-md-4">
        <i class="topbar fa fa-globe"> Language</i>
        <a class="topbar en-es" href="#" style="text-decoration:none">EN</a> <span style="font-size:18px"> |</span>
        <a class="topbar en-es" href="#" style="text-decoration:none">ES</a> <span style="font-size:18px"> |</span>
        <i class="topbar fa fa-share-alt"> Social </i>&nbsp;&nbsp;
        <i class="topbar fa fa-facebook"></i><span style="font-size:20px"> |</span>&nbsp;
        <i class="topbar fa fa-twitter"></i><span style="font-size:20px"> |</span>&nbsp;
        <i class="topbar fa fa-linkedin"></i><span style="font-size:20px"> |</span>&nbsp;
        <i class="topbar fa fa-pinterest"></i><span style="font-size:20px"> |</span>
        </div>
        
        <div class="col-md-5"></div>

        <div class="col-md-3">
        <div class="register-login" style="max-width: 100%;">
            <i class="topbar fa fa-user"> Register</i><span style="font-size:20px"> |</span>&nbsp;
            <i class="topbar fa fa-sign-in"> Login</i>
        </div>
        </div>        
    </div>
</div>

<!--Top Bar End-->



<!--Header Menu Start-->

<div class="main-header" id="navbar">


<div class="container-fluid" style="text-align:center">

<div class="col-md-3" style="text-align:center">
  <a href="index" style="text-decoration: none; color: white"><img src="/destiny/files/images/logo.png" style="width:100px"><span style="font-size:3.9vmin; font-family:algerian">Destiny World</span></a>
 </div>
<div class="col-md-9">

                  <div class="navbar-header" style="margin-right:40%">
                    <button type="button" class="navbar-toggle ib-button" style="padding: 0px; margin-top:0px;" data-toggle="collapse" data-target="#myNavbar">
 
                      <style>

                        .icon-menu {
                          background-color: rgba(255, 255, 255, 0.76);
                          width: 22px;
                          height: 20px;
                          transition: all .5s ease-in-out;
                          clip-path: polygon(0% 0%, 100% 0%, 100% 20%, 0% 20%, 0% 40%, 100% 40%, 100% 60%, 0% 60%, 0% 80%, 100% 80%, 100% 100%, 0% 100%);
                          
                        }
                        .icon-menu.active {
                          background-color: rgba(255, 255, 255, 0.795);
                          clip-path: polygon(20% 0%, 0% 20%, 30% 50%, 0% 80%, 20% 100%, 50% 70%, 80% 100%, 100% 80%, 70% 50%, 100% 20%, 80% 0%, 50% 30%);
                        }
                        
                        </style>
                         
                         <script>
                         
                         
                         $('.icon').click(function(){
                         $(this).find('.icon-menu').toggleClass('active');
                        });
                        </script>
                         
                         
                         <div class="icon">
                                                <div class="icon-menu"></div>
                                              </div>
                        
                                              <!--
                                              <span style="background-color:white" class="icon-bar ib1"></span>
                                              <span style="background-color:white" class="icon-bar ib2" ></span>
                                              <span style="background-color:white" class="icon-bar ib3"></span>   
                                              -->
                    </button>
                  </div>

                  

                  <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="navbar-nav" style="list-style-type:none; font-size: 20px; text-align: left;  margin-left: -40px;">
  

                      <li class="headerlist"><a href="start-a-fundraisers"class="white cause-menu" style="text-decoration:none; cursor: pointer;">Start A Fundraisers</a>                          
                      </li>
        
                      <li class="headerlist"><a href="how-it-works" class="white events-menu" style="text-decoration:none; cursor: pointer;">How It Works </a>
                      </li>
                      
                      <li class="headerlist"><a href="browse-a-fundraisers" class="white shop-menu" style="text-decoration:none; cursor: pointer;">Browse Fundraisers</a>
                      </li>

                      <li class="headerlist"><a href="contact-us" class="white shop-menu" style="text-decoration:none; cursor: pointer;">Contact Us</a>
                      </li>                  

                      <li class="headerlist"><a href="user-dashboard" class="white shop-menu" style="text-decoration:none; cursor: pointer;">Dashboard</a>
                      </li> 



<script>

$(function load_js(){

  $(".user-menu1").click(function()
  {
    var user=$(".user-menu2").css('display');
    if(user=='none')
    {
      $(".amount-menu2").css({"display":"none"});
      $(".user-menu2").css({"display":"block"});
      $(".user-menu2").css({"position":"absolute"});
    }
    else
    {
      $(".user-menu2").css({"display":"none"});
    }
  });

  $(".amount-menu1").click(function()
  {
    var user=$(".amount-menu2").css('display');
    if(user=='none')
    {
      $(".amount-menu2").css({"display":"block"});
      $(".user-menu2").css({"display":"none"});
      $(".amount-menu2").css({"position":"absolute"});
    }
    else
    {
      $(".amount-menu2").css({"display":"none"});
    }
  });

$(".amount").click(function(){
        
var amount = $(this).html();
//alert(amount);
  $(".amount-fix").html(amount)
  $(".amount-menu2").css({"display":"none"});

  $(".amount-type1").html(amount);

})


})
</script>

<li class="headerlist"><a class="white user-menu1 contact-menu" style="text-decoration:none; cursor: pointer;"><i class="fa fa-user" style="font-size: 25px;"></i> <i class="fa fa-chevron-down" style="font-size: 15px;"></i></a>
  <ul class="dropdown-content user-menu2 contact-menu2" style="list-style-type:none;">
<div class="first" style="display: none">
      <a class="internalmenu" href="login" style="text-decoration:none"><li class="padding"><i class="fa fa-sign-in"></i> Login</li></a>
      <a class="internalmenu" href="start-a-fundraisers" style="text-decoration:none"><li class="padding"><i class="fa fa-user-plus"></i> Sign Up</li></a>
</div>      

<div class="second" style="display: block">
    <a class="internalmenu" href="user-dashboard" style="text-decoration:none"><li class="padding"><i class="fa fa-user-circle-o"></i> My Profile</li></a>
    <a class="internalmenu" href="user-fundraisers" style="text-decoration:none"><li class="padding"><i class="fa fa-bars"></i> My Fundraisers</li></a>
    <a class="internalmenu" href="user-change-password" style="text-decoration:none"><li class="padding"><i class="fa fa-lock"></i> Manage Password</li></a>
    <a class="internalmenu" href="user_logout" style="text-decoration:none"><li class="padding"><i class="fa fa-sign-out"></i> Logout</li></a>
</div>  

  </ul>
</li>






                    </ul>
                    
                  </div>
</div>


<div class="external-header">

<style>
.dashboard-header
{
  display:none;
}

  .dashboard-header
  {
    margin-top: 70px;
  }

.dh
{
  padding:10px;
  cursor: pointer;
  color: rgb(196, 196, 196);
  font-size: 15px;
  
}

.dh:hover
{
  color: white;
}

@media(max-width:975px)
{
.dashboard-header
  {
    margin-top: 20px;
  }

  .dh
{
  font-size: 14px;
}
}


@media(max-width:350px)
{
  .dh
{
  font-size: 10px;
}
}
</style>


<div class="dashboard-header">


<a href="user-dashboard" style="text-decoration: none;"><span class="dashboard-profile dh">PROFILE</span></a>
<a href="user-fundraisers" style="text-decoration: none;"> <span class="dashboard-fundraisers dh">FUNDRAISERS</span></a>  
<a href="user-donation" style="text-decoration: none;"> <span class="dashboard-donation dh">DONATION</span>  </a>
</div>



  
</div>

</div>
</div>

<!--Header Menu End-->
