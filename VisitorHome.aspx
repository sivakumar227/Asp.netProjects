<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="VisitorHome.aspx.cs" Inherits="Visitor_VisitorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image:url(../dentista/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate">
            <h1 class="mb-4">Helping Your <span>Stay Happy One</span></h1>
            <h3 class="subheading">Everyday We Bring Hope and Smile to the Patient We Serve</h3>
            <p><a href="#services" class="btn btn-secondary px-4 py-3 mt-3">View our works</a></p>
          </div>
        </div>
        </div>
      </div>

      <div class="slider-item" style="background-image:url(../dentista/images/bg_2.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate">
            <h1 class="mb-4">Smile Makes <br>A Lasting Impression</h1>
            <h3 class="subheading">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
            <p><a href="#services" class="btn btn-secondary px-4 py-3 mt-3">View our works</a></p>
          </div>
        </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section ftco-no-pt ftco-no-pb">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(../dentista/images/about.jpg);">
					</div>
					<div class="col-md-7 wrap-about py-4 py-md-5 ftco-animate">
	          <div class="heading-section mb-5">
	          	<div class="pl-md-5 ml-md-5 pt-md-5">
		          	<span class="subheading mb-2">Welcome to Smile Care</span>
		            <h2 class="mb-2" style="font-size: 32px;">Medical specialty concerned with the care of acutely ill hospitalized patients</h2>
	            </div>
	          </div>
	          <div class="pl-md-5 ml-md-5 mb-5">
							<p>We offer painless and personalized dental treatment across trivandrum.Our Dentist functions to give the best dental environment and also fullfills the patients expectations by giving them with the best dental treatment.</p>
							<p>We specialize in all the basic and modern dental procedures like Dental Check-up,Dental X-rays,Root Canal treatment,orthodontic Treatment,Teeth Cleaning & Whitening,Dental Implants.</p>
							<div class="founder d-flex align-items-center mt-5">
								<div class="img" style="background-image: url(../dentista/images/doc-1.jpg);"></div>
								<div class="text pl-3">
									<h3 class="mb-0">Dr. Paul Foster</h3>
									<span class="position">CEO, Founder</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


    <section class="ftco-section ftco-services">
        
    	<div class="container" id="services">
    		<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Services</span>
            <h2 class="mb-4">Our Clinic Services</h2>
            <p>We maintain the highest levels of hygiene & use latest technology available in dentistry,making us the most trustworthy & reliable dentist</p>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-drilling"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Dental Implants</h3>
               
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-tooth"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Cosmetic Dentistry</h3>
             
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-dental-floss"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Dental Care</h3>
          
              </div>
            </div>      
          </div>
					
					<div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-shiny-tooth"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Teeth Whitening</h3>
             
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-dentist-chair"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Dental Calculus</h3>
         
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-tooth-1"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Periondontics</h3>
       
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-tooth-with-braces"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Clip &amp; Braces</h3>
          
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-decayed-tooth"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Root Canel</h3>
        
              </div>
            </div>      
          </div>
        </div>
    	</div>
   
            </section>


    <section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Testimonials</span>
            <h2 class="mb-4">Our Patients Says About Us</h2>
          </div>
        </div>
        <div class="row ftco-animate justify-content-center">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(../dentista/images/person_1.jpg)">
                  </div>
                  <div class="text pl-4 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>One of the most accessible dental clinics in india.The Well-trained dentists gives fast & pain-free dental treatments to the patients Keeping their oral health the top priority</p>
                    <p class="name">Racky Henderson</p>
                    <span class="position">Farmer</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(../dentista/images/person_2.jpg)">
                  </div>
                  <div class="text pl-4 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>One of the most accessible dental clinics in india.The Well-trained dentists gives fast & pain-free dental treatments to the patients Keeping their oral health the top priority.</p>
                    <p class="name">Henry Dee</p>
                    <span class="position">Businessman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(../dentista/images/person_3.jpg)">
                  </div>
                  <div class="text pl-4 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>One of the most accessible dental clinics in india.The Well-trained dentists gives fast & pain-free dental treatments to the patients Keeping their oral health the top priority.</p>
                    <p class="name">Mark Huff</p>
                    <span class="position">Students</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(../dentista/images/person_4.jpg)">
                  </div>
                  <div class="text pl-4 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>One of the most accessible dental clinics in india.The Well-trained dentists gives fast & pain-free dental treatments to the patients Keeping their oral health the top priority.</p>
                    <p class="name">Rodel Golez</p>
                    <span class="position">Striper</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(../dentista/images/person_1.jpg)">
                  </div>
                  <div class="text pl-4 bg-light">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>One of the most accessible dental clinics in india.The Well-trained dentists gives fast & pain-free dental treatments to the patients Keeping their oral health the top priority.</p>
                    <p class="name">Ken Bosh</p>
                    <span class="position">Manager</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



</asp:Content>

