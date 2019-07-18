
<style>


  
  
  
  .title
  {
      color:black;
      font-size: 25px;
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
      font-weight: bold;
      font-size: 15px;
  }
  
  .mdh:hover
  {
      color:rgb(20, 120, 187);
  }
  
 
  .manage-header .slick-slide
  {
      height:30px;
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


.manage-header .slick-next
{
    background-image: url('/destiny/files/dashboard-user-images/right.jpg');
    background-size: 100% 100%;
    text-indent: -9999;
    
} 

.manage-header .slick-prev
{
    background-image: url('/destiny/files/dashboard-user-images/left.jpg');
    background-size: 100% 100%;
    text-indent: -9999;
} 

.manage-header .slick-prev:focus
{
    background-image: url('/destiny/files/dashboard-user-images/left.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
}

.manage-header .slick-prev:hover
{
    
    background-color: rgb(255, 255, 255);
    background-image: url('/destiny/files/dashboard-user-images/left.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
    box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
    z-index: 999;

}


.manage-header .slick-next:focus 
{
    background-image: url('/destiny/files/dashboard-user-images/right.jpg');
    background-size: 100% 100%;
    border-radius: 50px;

}

.manage-header .slick-next:hover
{
    background-color: white;
    background-image: url('/destiny/files/dashboard-user-images/right.jpg');
    background-size: 100% 100%;
    border-radius: 50px;
    box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
    z-index: 999;
}



  .boost-text
  {
      font-size: 15px;
  }
  


  .head-section2
  {
    text-align: left
  }
  
  
  @media(max-width:975px)
  {

    .head-section2
  {
    text-align: center;
  }
  
      .help-text
  {
  font-size: 15px;
  }


  }
  </style>
  

<div class="manage-main-head head1" style="background-color:white">
        <div class="container">
        
        <div class="col-md-12" style="margin-top:150px;">
        
        <div class="col-md-2 head-section1" style="text-align: center">
        <span class="section1-image"><img src="/destiny/files/dashboard-user-images/donor3.svg" style="width:100px; height: 100px; border-radius: 10px; overflow: hidden;"></span><br><br>
        </div>
        
        <div class="col-md-4 head-section2">
        
        <span class="title" style="font-size: 35px;">Help <br></span>
        <span class="start-date" style="font-size: 20px;"><i class="fa fa-calendar"></i> 3 May 2019</span> &nbsp;
        <span class="left-date" style="font-size: 20px;"><i class="fa fa-calendar-minus-o"></i> 85 Dayes Left</span>
        <br>
        <br>
        </div>

        <div class="col-md-1 head-section3"></div>
        
        <div class="col-md-5 head-section3" style="background-color: rgba(209, 209, 209, 0.164); border-radius: 10px;"><br>
        <div style="color: black; text-align: center; font-size: 20px;">Need help? Contact your campaign manager</div>
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
        <div class="container-fluid"></div>
        <br>
        
        
        <script>
        $(function(){
        $(".manage-header").slick
        ({
                arrows:true,
                infinite: true,
                speed: 500,
                slidesToShow: 5,
                slidesToScroll: 1,
                
                responsive: [{
                  breakpoint: 975,
                  settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1
                  }
                }
                ,
                {
                   breakpoint: 400,
                   settings: {
                      slidesToShow: 2,
                      slidesToScroll: 1,
                   }
                }]
            });
        });
   
   /*  $(function rearrange()
     {
         $(".fa").click(function(){
         var fa_data = $(this).html();
         var fab_data = $(".fab").html();
         //alert(fa_data);
         $(".fab").html(fa_data);
         $(this).html(fab_data);
         });
     })
*/

        </script>
        
        <div class="manage-header">
        
            <span class="fa"><a href="manage-overview" style="text-decoration: none;"><span class="dashboard-overview mdh">OVERVIEW</span></a></span>
            <span class="fa fab"> <a href="manage-promote" style="text-decoration: none;"> <span class="dashboard-promote mdh">PROMOTE</span></a>  </span>
            <span class="fa"> <a href="manage-withdrawl" style="text-decoration: none;"><span class="dashboard-withdrawl mdh">WITHDRAWL</span></a></span>
            <span class="fa"> <a href="manage-analytics" style="text-decoration: none;"><span class="dashboard-analytics mdh">ANALYTICS</span></a></span>
            <span class="fa"> <a href="manage-tools-and-tips" style="text-decoration: none;"> <span class="dashboard-tools-and-tips mdh">TOOLS & TIPS</span></a>  </span>
          
        </div>
        </div>
        </div>
        </div>
        
        <br><br>