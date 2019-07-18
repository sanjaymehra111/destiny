<div class="modal fade" id="myModal" role="dialog" style="padding-right: 0px; z-index: 99999;">
    
        <div class="modal-dialog">
        
        <div class="Donation-now-section" style="display: block;">
        
        <div class="section1">
        <div class="container-fluid">
        <div class="boxes2">
        
        <form name="forgor-password"  method="GET">
        
        <style>
        
            
         .section1-box1, 
         .section1-box2,
         .section1-box3 
        
        {
        animation-name: testing2;
        animation-duration: 0.9s;
        }
        
        @keyframes testing2
        {
            from
            {
                opacity: 0.1;
            }
        
            to
            {
                opacity: 5;
            }
        }
        
        
        .forgot-all-button
        {
            text-align: center;
            border-radius: 0px;
            padding-left: 20px;
            padding-right: 20px;
            outline: none;
            height: 50px;
            font-size: 18px;
        }
        .forgot-all-buttons
        {
            text-align: center;
            border-radius: 1000px;
            padding-left: 20px;
            padding-right: 20px;
            height: 50px;
            font-size: 18px;
        }
        .submit-new-password
        {
            border-radius: 0px;
            background-color: rgba(18, 97, 44, 0.849);
            color: white;
            transition: 0.2s ease-in-out;
        }
        .check-otp:hover, .submit-new-password:hover, .back-button:hover
        {
            background-color: rgba(9, 44, 20, 0.849);
        }
        
        .check-otp:active, .submit-new-password:active, .back-button:active
        {
            transform: scale(0.99)
        }
        
        .forgot-all-button:active
        {
            transform: scale(0.98);
        }
        
        
        .first-button
        {
            font-weight: bold;
            color:rgb(255, 255, 255);
            background-color: rgb(38, 192, 184);
            transition: 0.2s ease-in-out;
        }
        .first-button:hover
        {
            background-color: rgb(19, 116, 111);
        
        }
        
        .second-button
        {
            color:black; 
            background-color: rgba(204, 208, 209, 0.288);
        }
        
        .close-btn
        {
            font-size: 30px;
            color:rgb(77, 22, 22);
            cursor: pointer;
            transition: 0.3s;
            z-index: 0.0;
            position: relative;
            right: -92%;
            
        }
        .close-btn:hover
        {
            color:rgb(184, 32, 32);
            transform: rotate(180deg);
            z-index: 9999;
            z-index: 1;
        
        }
        
        .close-btn:active
        {
            transform: scale(0.95);
        }
        
        
        </style>
         
         <script>

              $(".number").keypress(function(e){

                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) 
                {
                    return false;
                }
                else
                {
                    return true;
                }
              });
        
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
        
        
        $(function final_amount(){
        
        
        
            $(".fixed-amount").click(function()
            {
            var fda =$(this).val()
            $(".final-amount").val(fda);
            });
        
            $(".fixed-amount-type").change(function(){
            var fat=$(this).val();
            $(".final-amount").val(fat);
        
        
            });
        
            $(".next-button-1").click(function(){
                var fat=$(".fixed-amount-type").val();
                
                if(fat == 0)
                {
                    $(".fixed-amount-type").css({"border":"solid 2px red"});
                    return false;
                }
                else
                {
                    $(".fixed-amount-type").css({"border":"none"});
                    return true;
                }
            });
        
        });
        
        
        $(function next_previous_button(){

            var name= /[^a-zA-Z\s]/g;
            var email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
 
        
            $(".next-button-1").click(function(){
        
                var fa= $(".final-amount").val();
                var fm= $(".fixed-amount-type").val();
                //alert(fm);
        
                if(fm == 0)
                {
                    $(".fixed-amount-type").css({"border":"solid 2px red"});
                    return false;
                }

                else if(fa == '' || fa <= 0)
                {
                    $(".final-amount").css({"border":"solid 2px red"});
                    $(".fixed-amount-type").css({"border":"none"});

                    return false;
        
        
                }
                else
                {

                    //$(".card-details-4").css({"border":"solid 0.5px rgba(128, 128, 128, 0.281)"});

                    $(".final-amount").css({"border":"none"});
                    $(".fixed-amount-type").css({"border":"none"});
                    
                    $(".section1-box1").hide();
                    $(".section1-box2").show();
                }
                });
        
        
        
            $(".back-button-1").click(function()
            {
            $(".section1-box1").show();
            $(".section1-box2").hide();
            });
        
        
        
            $(".next-button-2").click(function()
            {
             var u1= $(".user-details-1").val();
             var u2= $(".user-details-2").val();
             var u3= $(".user-details-3").val();
             var u2l= $(".user-details-2").val().length;
        
        
               
                if (u1 == '' || u1.match(name))
                {
                    $(".user-details-1").css({"border":"solid 2px red"});
                    return false;
                }
        
                else if (u2 == '' || u2l != 10)
                {
                    $(".user-details-1").css({"border":"none"});
                    $(".user-details-2").css({"border":"solid 2px red"});
                    return false;
        
                    
                }
        
                else if (u3 == '' || !u3.match(email))
                {
                    $(".user-details-1").css({"border":"none"});
                    $(".user-details-2").css({"border":"none"});
                    $(".user-details-3").css({"border":"solid 2px red"});
                    return false;
                    
                }
        
                else
                {
                    $(".user-details-1").css({"border":"none"});
                    $(".user-details-2").css({"border":"none"});
                    $(".user-details-3").css({"border":"none"});

                    return true;  
        
                    
                }
               
                });
        

        /*
            $(".back-button-2").click(function()
            {
            $(".section1-box2").show();
            $(".section1-box3").hide();
            });
        
            $(".next-button-3").click(function(){
                
                var cd1 = $(".card-details-1").val();
                var cd2 = $(".card-details-2").val();
                var cd3 = $(".card-details-3").val();
                var cd4 = $(".card-details-4").val();
                var cd4l = $(".card-details-4").val().length;
                
                if(cd1 == '')
                {
                    $(".card-details-1").css({"border":"solid 2px red"});
                    return false;
                }
        
                else if (cd2 == 0)
                {
                    $(".card-details-1").css({"border":"none"});
                    $(".card-details-2").css({"border":"solid 2px red"});
                    return false;
                }
                
                else if (cd3 == 0)
                {
                    $(".card-details-1").css({"border":"none"});
                    $(".card-details-2").css({"border":"none"});
                    $(".card-details-3").css({"border":"solid 2px red"});
                    return false;
                }
                
                else if (cd4 == '' ||  cd4l >4 ||  cd4l < 3)
                {
                    $(".card-details-1").css({"border":"none"});
                    $(".card-details-2").css({"border":"none"});
                    $(".card-details-3").css({"border":"none"});

                    $(".card-details-4").css({"border":"solid 2px red"});
                    return false;
                }
                else
                {
                    $(".card-details-1").css({"border":"none"});
                    $(".card-details-2").css({"border":"none"});
                    $(".card-details-3").css({"border":"none"});
                    $(".card-details-4").css({"border":"none"});
                    //alert("asd");
                    //window.location.href="donate.html";
                    
                    return true;
                }
            })
        
            */
        
        
        });
        
        $(function Close_btn(){
            $(".close-btn").click(function(){
                //alert("asd");
                $(".close-button-main").click();
            })
        })
        
         </script>   
        
        <br>
        <div class="col-md-12">
        <div style="background-color:rgb(255, 255, 255); padding: 10px; border-radius: 5px;">
            
        <!--Close Button Start-->
        
        <span><i class="fa fa-times-circle close-btn"></i></span>
        
        <!--Close Button End-->
        
        <!--Section's Start-->
        
        <div class="section1-box1" style="display:block">
        <div class="col-md-12">
        <div class="tag-first" >
        <br>
        
        <div class="container-fluid" style="margin-bottom: 50px;">
        
                <p style="font-size:30px; text-align: center; font-weight: bold; margin-top: -20px;">Donate Now</p>
                <hr style="border:solid 0.5px rgb(148, 115, 115);">
                
            
        <!--
        
        <style>
        .amount-type
        {
            cursor: pointer;
        }
        </style>
        
        <script>
            $(function(){
                $(".amount-type").click(function(){
              $(".amount-menu1").click();
            });
        
            $(window).resize(function(){
                var ww=$(window).width();
                //alert(ww);
        
                if(ww < 400)
                {
                    $(".first-amount").hide();
                }
                else
                {
                    $(".first-amount").show();
                }
            });
        
            });
        
           
        </script>
        
        -->
        
        <div class="col-md-12">
                <select name="amount_type" style="padding-left: 10px; border-radius: 0px; text-align: center; "  class="fixed-amount-type form-control second-button forgot-all-button">
                    <option value="0" style="text-align: center" hidden selected>Selet Amount Type</option>
                    <option value="INR"><b>&#8377;</b> INR</option>
                    <option value="USD"><b>$</b> USD</option>
                    <option value="GBP"><b>&#163;</b> GBP</option>
                    <option value="SGD"><b>S$</b> SGD</option>
                    <option value="HKD"><b>HK$</b> HKD</option>
                    <option value="AED"><b>AED</b> AED</option>
                    <option value="AUD"><b>AUD</b> AUD</option>
                    <option value="CAD"><b>CAD</b> CAD</option>
                    <option value="EURO"><b>&#8364;</b> EURO</option>
        </select>
            
                <br>
            </div>
        <!--    
        <button type="button" name="user_amount_type" class="amount-type form-control first-button forgot-all-button">
             <span class="first-amount"> Amount Type :</span>  <span style="font-weight: bold; text-transform: uppercase" class="amount-type1" > &#8377; INR </span>
              
            </button>
        -->
        <div class="col-md-3">
        <button type="button" value="100" class="fixed-amount form-control forgot-all-buttons first-button">100</button> <br>
        </div>
        
        <div class="col-md-3">
        <button type="button"  value="200" class="fixed-amount form-control forgot-all-buttons first-button">200</button> <br>
        </div>
        
        <div class="col-md-3">
        <button type="button"  value="500" class="fixed-amount form-control forgot-all-buttons first-button">500</button> <br>
        </div>
        
        <div class="col-md-3">
        <button type="button"  value="1000" class="fixed-amount form-control forgot-all-buttons first-button">1000</button> <br>
        </div>
        
        <div class="col-md-12">
        <input  type="number" name="user_new_amount" maxlength="10" class="final-amount form-control forgot-all-button second-button" placeholder="Enter Amount"> <br>
        </div>
        <br>
        
                <button type="button" class="next-button-1 form-control forgot-all-button submit-new-password">
                    Next <i class="fa fa-chevron-right" style="font-size: 13px;"></i>
                </button>
            
        
        </div>
        
        
        </div> 
        
        </div>
        </div>
        
        
        <div class="section1-box2" style="display:none">
        <div class="col-md-12">
        <div class="tag-first">
        <br>
        
        <div class="container-fluid" style="margin-bottom:20px;">
        
                <p style="font-size:30px; text-align: center; font-weight: bold; margin-top: -20px;">Donate Now</p>
                <hr style="border:solid 0.5px rgb(148, 115, 115);">
                
                
        
        <div class="col-md-6">
                <input type="text" name="user_name"  class="user-details-1 form-control second-button forgot-all-button" placeholder="Name*"><br>
        </div>        
        
        <div class="col-md-6">
                <input type="text" name="user_contact_number" maxlength="10" class="number user-details-2 form-control second-button forgot-all-button" placeholder="Contact Number*"><br>
        </div>        
        
        <div class="col-md-6">
                <input type="text" name="user_email"  class="user-details-3 form-control second-button forgot-all-button" placeholder="Email*"><br>
        </div>        
        
        <div class="col-md-6">
                <input type="text" name="user_address"  class="form-control second-button forgot-all-button" placeholder="Address"><br>
        </div>        
        
        <div class="col-md-6">
                <input type="text" name="user_city"  class="form-control second-button forgot-all-button" placeholder="City"><br>
        </div>        
        
        <div class="col-md-6">
                <input type="text" name="user_country"  class="form-control second-button forgot-all-button" placeholder="Country"><br>
        </div>        
        
        <div class="col-md-12">
                <textarea name="user_message"  class="form-control second-button forgot-all-button" style="border-radius: 0px; resize: none; text-align: left; max-width: 20%; max-height: 20%; min-width: 100%; min-height: 10%;" rows="2" placeholder="Message"></textarea>
                    <br>
        </div>        
        
               <br>
               <div class="col-md-6">
                <button type="button" class="back-button-1 form-control forgot-all-button submit-new-password"><i class="fa fa-chevron-left" style="font-size: 13px;"></i> Previous </button>
               </div>
               <div class="col-md-6">
                <button type="submit" class="next-button-2 form-control forgot-all-button submit-new-password"> Next <i class="fa fa-chevron-right" style="font-size: 13px;"></i>  </button>
               </div>
        
        
        </div>
        </div> 
        
        </div>
        <div class="col-md-12"></div>
        
        
        </div>
        
        <!--
        <div class="section1-box3" style="display:none">
        <div class="col-md-12">
        <div class="tag-first">
        <br>
        
        <div class="container-fluid" style="margin-bottom: 50px;">
        
                <p style="font-size:30px; text-align: center; font-weight: bold; margin-top: -20px;">Donate Now</p>
                <hr style="border:solid 0.5px rgb(148, 115, 115);">
                
                
        
        <div class="col-md-12">
                <input type="text" name="user_card_number"  class="card-details-1 form-control second-button forgot-all-button" placeholder="Card Number"><br>
        </div>        
        
        <div class="col-md-4">
                <select name="user_card_exp_month" style="padding-left: 10px; padding-right: 0px; border-radius: 0px; "  class="card-details-2 form-control second-button forgot-all-button" placeholder="Contact Number">
                <option value="0" hidden selected> Exp. Month </option>
                <option value="1">1</option>    
                <option value="2">2</option>    
                <option value="3">3</option>    
                <option value="4">4</option>    
                <option value="5">5</option>    
                <option value="6">6</option>    
                <option value="7">7</option>    
                <option value="8">8</option>    
                <option value="9">9</option>    
                <option value="10">10</option>    
                <option value="11">11</option>    
                <option value="12">12</option>    
        
                </select>
                    <br>
        </div>        
        
        <div class="col-md-4">

                <select name="user_card_exp_date" style="padding-left: 10px; padding-right: 0px; border-radius: 0px; "  class=" card-details-3 form-control second-button forgot-all-button">
                <option value="0" hidden selected> Exp. Year </option>
                
                <option value="2019">2019</option> <option value="2020">2020</option> <option value="2021">2021</option> <option value="2022">2022</option> <option value="2023">2023</option> <option value="2024">2024</option> <option value="2025">2025</option> <option value="2026">2026</option> <option value="2027">2027</option> <option value="2028">2028</option> <option value="2029">2029</option> <option value="2030">2030</option> <option value="2031">2031</option> <option value="2032">2032</option> <option value="2033">2033</option> <option value="2034">2034</option> <option value="2035">2035</option> <option value="2036">2036</option> <option value="2037">2037</option> <option value="2038">2038</option>
        
                </select>
                    <br>
        </div>          
        
        <div class="col-md-4">
                <input type="number" name="user_card_cvv" style="padding-left: 10px; border-radius: 0px; "    class="card-details-4 form-control second-button forgot-all-button" placeholder="CVV*"><br>
        </div>        
        
               <br>
               <div class="col-md-6">
                <button type="button" class="back-button-2 form-control forgot-all-button submit-new-password"><i class="fa fa-chevron-left" style="font-size: 13px;"></i> Previous </button>
             </div>
               <div class="col-md-6">
                <button type="submit" class="next-button-3 form-control forgot-all-button submit-new-password"> Contribute <i class="fa fa-thumbs-o-up" style="font-size: 13px;"></i>  </button>
               </div>
        
        
        
        
        </div>
        
        </div> 
        
        </div>
        
        <div class="col-md-12"></div>
        
        </div>
         -->
        <div class="container-fluid"></div>
        </div>
        
        <!--Section's End-->
        
        
        </div>
        
        </form>
        
        
        </div>
        </div>
        </div>
        
        
        
        </div>
            
        </div>
        
        </div>