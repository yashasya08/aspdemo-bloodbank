<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  height:450px;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: none;
  transition: background-color 0.6s ease;
  
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>


    <style type="text/css">
        
        
        
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">



    <div style=" padding: 20px; margin:20px:">


    <div class="slideshow-container" >

<div class="mySlides fade">
  
  <img src="image/slider.png" style="width:100%">
  <div class="text"> </div>
</div>

<div class="mySlides fade">
  
  <img src="image/slider5.jpg" style="width:100%">
  <div class="text"> </div>
</div>

<div class="mySlides fade">
  
  <img src="image/slider3.png" style="width:100%">
  <div class="text"> </div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>




    <h1 class="style1"><b>Welcome To Blood Bank Management System</b></h1>
        <p class="style1">&nbsp;</p>
    <p>Blood banks play an important role in the process of collecting blood and managing blood stocks, approving blood requests, updating donations and updating available blood types. Raster’s web-based BBMS will address the issues and problems encountered in collecting information about donors, blood camps, inventories of blood bags, and blood transfusion services, etc, including donor screening, inventory management, blood ordering, blood usage review and compatibility testing. Blood Bank Management system will greatly increase the safety and quality of the blood supply as well as provide logistics data for the optimal supply chain management.
</p>
        
        <img src="image/bloodgp.jpg" alt="Smiley face" 
                style="float:left;width:400px; height:260px; margin:20px;">
                <p align="center">
                Blood banking refers to the process of collecting, separating, and storing blood. The first U.S. blood bank was established in 1936. Today, blood banks collect blood and separate it into its various components so they can be used most effectively according to the needs of the patient. Red blood cells carry oxygen, platelets help the blood clot, and plasma has specific proteins that allow proper regulation of coagulation and healing. Although research has yielded drugs that help people's bone marrow produce new blood cells more rapidly, the body's response time can still take weeks, thus donated blood remains an important and more immediate life-saving resource.
</p>

    </div>





    

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 3000); // Change image seconds
    }
</script>


</asp:Content>
