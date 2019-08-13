<!--Fotter Menu Start-->

<div class="footermain">
        <div style="background-color:rgba(0, 0, 0, 0.651)">
        <div class="container" style="font-size:17px;">
        <br><br>
        <div class="col-md-6">
        <br><br>
        <img src="/destiny/files/images/logo.png" style="width:120px"><span style="font-size:25px; font-family:algerian">Destiny World</span>
        <br><br><br>
        
        <p style="color:rgba(255, 255, 255, 0.699)">Lorem ipsum dolor sit amet, consectetuer adipiscing elit aenean comm odo ligula eget dolor massa Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas magna at porttitor vehicula nullam.</p>
        
        <br><br>
        
        <div class="col-md-6">
        <span style="border-radius:100px; border:solid 2px rgb(122, 29, 29); color:rgb(122, 29, 29); font-size: 18px;">&nbsp;1&nbsp;</span> &nbsp;&nbsp; Choose your favourite cause <br><br>
        </div>
        <div class="col-md-6">
        <span style="border-radius:100px; border:solid 2px rgb(0, 195, 255); color:rgb(0, 195, 255); font-size: 18px;">&nbsp;2&nbsp;</span>&nbsp;&nbsp; Register to our website ! <br><br>
        </div>
        <div class="col-md-6">
        <span style="border-radius:100px; border:solid 2px yellow; color:yellow; font-size: 18px;">&nbsp;3&nbsp;</span>&nbsp;&nbsp; Donate the amount you like <br><br>
        </div>
        <div class="col-md-6">
        <span style="border-radius:100px; border:solid 2px green; color:green; font-size: 18px;">&nbsp;4&nbsp;</span>&nbsp;&nbsp; Stay tuned about cause <br><br>
        <br><br>
        
        </div>
        </div>  
        
        
        <div class="col-md-1">
        </div>
        
        <div class="col-md-5">
        <style>
          .emailbtn:active
          {
            transform: scale(0.95);
          }
        </style>
        
          <br><br>
        <p style="font-size: 25px;">OUR PARTNERS</p><br>
          <img src="/destiny/files/images/partner-1.png" style="width:18%">
          <img src="/destiny/files/images/partner-2.png" style="width:18%">
          <img src="/destiny/files/images/partner-3.png" style="width:18%">
          <img src="/destiny/files/images/partner-4.png" style="width:18%">
          <img src="/destiny/files/images/partner-5.png" style="width:18%">
        
        <br><br><br>
        

<script>
  $(function(){
  
    var email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    $(".emailbtn").click(function(){
      var em=$(".email-address").val();
      if(em == '' || !em.match(email))
      {
        $(".email-address").css({"border":"solid 1px red"});
        return false;
      }
      else
      {
        $(".email-address").css({"border":"solid 1px white"});
        return true;

     //   localStorage.setItem("x", em);

        //$(window).attr("location","/become_a_volunteer#next-form");


        //window.location.href="/become_a_volunteer#next-form?emial=" +em;
      }
    })
    })
</script>

<form name="sub_email" action="/destiny/become_a_volunteer#next-form">

        <div class="col-md-8">
        <input type="email" placeholder="Email Address" id="sub-mail" name="sub_email" class="form-control email-address" style="width:100%; height: 40px; color:rgba(255, 255, 255, 0.712); border-radius: 25px; background-color: rgba(49, 42, 42, 0.329);"> <br>
        </div>
        
        <div class="col-md-4">
          <button type="submit" class="emailbtn form-control" style="width:100%; height: 40px; border-radius: 25px; background-color: rgba(69, 127, 236, 0.301); color: white">Subscribe</button>
        </div>

</form>

        <br><br><br><br>
        </div>  
        <div class="container-fluid"></div>
        </div>
        
        
        <div class="footer" style="background-color:rgba(0, 0, 0, 0.527); padding: 20px; font-size: 17px; text-align: center">
        <div class="container-fluid">
        
        <div class="col-md-3">    
            <a href="/destiny/index" style="text-decoration: none; color:white"><p class="topbar" style="cursor: pointer;">&copy; Copyright 2019 Destiny World</p></a>
        </div>
        
        <div class="col-md-4"></div>
          
          <div class="col-md-5">    
            <span class="zoom-out"><i class="topbar fa fa-facebook">&nbsp; Facebook&nbsp;&nbsp;</i></span><b>|</b>&nbsp;&nbsp;
            <span class="zoom-out"><i class="topbar fa fa-twitter">&nbsp; Twitter&nbsp;&nbsp;</i></span><b>|</b>&nbsp;&nbsp;
            <span class="zoom-out"><i class="topbar fa fa-instagram">&nbsp; Instagram</i></span>
          </div>
          
        </div>
        </div>
        
        </div>
        </div>
        
        <!--Fotter Menu End-->
        