<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>miền trung transport nhóm 4 batch 172 - 179 </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="assets/css/animate.css">
    
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>
  	<div class="wrap">
			<div class="container">
				<div class="row justify-content-between">
						<div class="col-12 col-md d-flex align-items-center">
							<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">+84 1234 567</a> or <span class="mailus">email us:</span> <a href="#">b179-aptech@gmail.com</a></p>
						</div>
						<div class="col-12 col-md d-flex justify-content-md-end">
							<div class="social-media">
								<p class="mb-0 d-flex">
									<a href="admin" class="d-flex align-items-center justify-content-center" style="margin-right: 40px;"><span >Admin</span></a>
									<a href="manager" class="d-flex align-items-center justify-content-center"><span >Manager</span></a>
								</p>
			       		 	</div>
						</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    	<a class="navbar-brand" href="index.jsp">mien trung<span> transport</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
	        	<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	        	<li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
	        	<li class="nav-item"><a href="tickets.jsp" class="nav-link">Tra cứu vé</a></li>
	        	<li class="nav-item"><a href="station.html" class="nav-link">Bến Xe Khách</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">News</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <div class="hero-wrap js-fullheight" style="background-image: url('assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 ftco-animate">
          	<h2 class="subheading">Thousands of miles of peace</h2>
          	<h1 class="mb-4">Let us bring safety and quality to you.</h1>
            <p><a href="#" class="btn btn-primary mr-md-4 py-2 px-4">Learn more <span class="ion-ios-arrow-forward"></span></a></p>
          </div>
        </div>
      </div>
    </div>

	  <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb">
			<div class="overlay"></div>
    	<div class="container">
    		<div class="row d-md-flex justify-content-center">
    			<div class="col-md-12">
	    			<div class="wrap-appointment bg-white d-md-flex pl-md-4 pb-5 pb-md-0">
	    				<form action="seachTrip" method="post" class="appointment w-100">
	    					<div class="row justify-content-center">
								<div class="col-12 col-md d-flex align-items-center">
									<div class="form-group py-md-4 py-2 px-4 px-md-0">
										<label for="name">điểm đi</label>
										<div class="form-field">
												<div class="select-wrap">
													<div class="icon"><span class="fa fa-chevron-down"></span></div>
													<select name="departure" id="departure" class="form-control">
														<option value="">Chọn nơi xuất phát</option>
														
														<c:forEach items="${ list_departure }" var="place" varStatus="loop">
                											<option value="${place}">${place}</option>
            											</c:forEach>

													</select>
												</div>
										</div>
									</div>
								</div>

								<div class="col-12 col-md d-flex align-items-center pb-4 pb-md-0">
									<div class="form-group py-md-4 py-2 px-4 px-md-0">
										<label for="name">điểm đến</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon"><span class="fa fa-chevron-down"></span></div>
												<select name="destination" id="destination" class="form-control">
													<option value="">Chọn điểm đến</option>
													
													<c:forEach items="${ list_destination }" var="place" varStatus="loop">
														<option value="${place}">${place}</option>
													</c:forEach>

													
											
												</select>
											</div>
										</div>
									</div>
								</div>

									<div class="col-12 col-md d-flex align-items-center">
										<div class="form-group py-md-4 py-2 px-4 px-md-0">
											<label for="name">chọn ngày</label>
											<input name="departure_time" class="form-control" type="date"
											required>
				            			</div>
									</div>
									
									
									<div class="col-12 col-md d-flex align-items-center align-items-stretch">
										<div class="form-group py-md-4 py-2 px-4 px-md-0 d-flex align-items-stretch bg-primary">
				              <input type="submit" value="Find a bus" class="btn btn-primary py-3 px-4">
				            </div>
									</div>
	    					</div>
		          </form>
		    		</div>
		    	</div>
    		</div>
    	</div>
    </section>
<!-- ab-mini -->
    <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">
    		<div class="row d-flex no-gutters">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-items-center justify-content-center py-5 py-md-0" style="background-image:url(assets/images/about.jpg);">
    					<div class="time-open-wrap">
    						<div class="desc p-4">
		    					<h2>Number of Garages</h2>
			              <div class="opening-hours">
			              	<h4>Danh sách nhà xe:</h4>
			              	<p class="pl-3">
			              		<span><strong>Nhà xe:</strong> Hưng Thịnh Phát Limousine</span>
			              		<span><strong>Nhà xe:</strong> Tân quang dũng</span>
								<span><strong>Nhà xe:</strong> Dream Transport</span>
								<span><strong>Nhà xe:</strong> Đức Thành</span>
								<span><strong>Nhà xe:</strong> Vĩnh Trường</span>
								<span><strong>Nhà xe:</strong> Hoàng Hải</span>
			              	</p>
			              	<h4>Số chuyến trong ngày:</h4>
			              	<p class="pl-3">
								<span>More than 50 trips/day</span>
			              		<span>All Sunday Days</span>
			              		<span>All Official Holidays</span>
			              	</p>
			              </div>
		    				</div>
								<div class="desc p-4 bg-secondary">
									<h3 class="heading">For Contact 24/24</h3>
									<span class="phone">(+84) 123 456 7890</span>
								</div>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 pl-md-5 pt-md-5">
    				<div class="row justify-content-start py-5">
		          <div class="col-md-12 heading-section ftco-animate">
		          	<span class="subheading">Welcome to Mien Trung Transport</span>
		            <h2 class="mb-4">Quality and safety</h2>
		            <p>After more than 10 years of establishment and development with customers as the focus, we are proud to become a core transportation enterprise that actively contributes to the overall development of the transportation industry in particular and the country's economy. Generally speaking. Always improving to bring the best quality of service to customers, Mien Trung Transport has been recognized through many prestigious awards such as "Vietnam's No. 1 Brand.</p>
		          </div>
		        </div>
						<div class="row ftco-counter py-5" id="section-counter">
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="10">0</strong>
		              </div>
		              <div class="text">
		              	<span>Years of <br>Experienced</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="2342">0</strong>
		              </div>
		              <div class="text">
		              	<span>Happy <br>Customers</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="200750">0</strong>
		              </div>
		              <div class="text">
		              	<span>Trip  <br>Number</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>

<!-- services -->
    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Services</span>
            <h2>DỊCH VỤ VẬN TẢI HÀNH KHÁCH</h2>
          </div>
		  <p><strong>Giới thiệu dịch vụ:</strong>Chúng tôi tạo dựng nên những giá trị mới cho dịch vụ Vận chuyển hành khách và Xe hợp đồng. Cùng với đội ngũ nhân viên chuyên nghiệp, giàu kinh nghiệm trong lĩnh vực vận tải hành khách và hệ thống xe cao cấp từ dòng Limousine đời mới nhất.</p>
        </div>
		<div class="row d-flex">
			<div class="col-md-6 col-lg-4 d-flex ftco-animate">
			  <div class="blog-entry align-self-stretch">
				<a href="blog-single.html" class="block-20 rounded" style="background-image: url('assets/images/image_7.jpg');">
				</a>
				<div class="text mt-3 px-4">
					<div class="posted mb-3 d-flex">
						
						<div class="desc pl-3">
							<span>Tiện ích dịch vụ</span>
					
						</div>
					</div>
				  <h3 class="heading"><a href="#">Êm ái:</a></h3>
				  <p>Công nghệ động cơ mới, nội thất cao cấp, vận hành linh hoạt, êm ái.</p>
				</div>
			  </div>
			</div>
			<div class="col-md-9 col-lg-4 d-flex ftco-animate">
			  <div class="blog-entry align-self-stretch">
				<a href="blog-single.html" class="block-20 rounded" style="background-image: url('assets/images/image_8.jpg');">
				</a>
				<div class="text mt-3 px-4">
					<div class="posted mb-3 d-flex">
						
						<div class="desc pl-3">
							<span>Tiện ích dịch vụ</span>
							
						</div>
					</div>
				  <h3 class="heading"><a href="#">Cao cấp:</a></h3>
				  <p>Hàng ghế rộng rãi, thoải mái theo tiêu chuẩn thương gia.</p>
				</div>
			  </div>
			</div>
			<div class="col-md-9 col-lg-4 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch">
				  <a href="blog-single.html" class="block-20 rounded" style="background-image: url('assets/images/image_9.jpg');">
				  </a>
				  <div class="text mt-3 px-4">
					  <div class="posted mb-3 d-flex">
						  	
						  <div class="desc pl-3">
							  <span>Tiện ích dịch vụ</span>
							 
						  </div>
					  </div>
					<h3 class="heading"><a href="#">An toàn:</a></h3>
					<p>Sở hữu trang thiết bị tiện nghi chỉ có trên dòng xe cao cấp.</p>
				  </div>
				</div>
			  </div>
    	</div>
    </section>

<!--our team  -->
    <section class="ftco-section ftco-no-pt">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-3 pr-md-4 pb-lg-0 pb-4">
						<div class="heading-section ftco-animate text-center text-lg-left">
	          	<span class="subheading">Team &amp; Staff</span>
	            <h2>Our Team</h2>
	            <p>Tại Mien Trung Transport, chúng tôi tin tưởng nhân tố tạo nên sự thành công của doanh nghiệp là đội ngũ nhân lực chất lượng cao và tràn đầy nhiệt huyết.</p>
	            <p><a href="#" class="btn btn-secondary">View All Staff</a></p>
	          </div>
					</div>
					<div class="col-md-4 col-lg-3 ftco-animate d-flex">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(assets/images/epbus_1.png);"></div>
							</div>
							<div class="text pt-3 px-3 pb-4 text-center">
								<h3>Nguyen Van A</h3>
								<span class="position mb-2">Tài xế</span>
								<div class="faded">
									<ul class="ftco-social text-center">
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-lg-3 ftco-animate d-flex">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(assets/images/epbus_2.png);"></div>
							</div>
							<div class="text pt-3 px-3 pb-4 text-center">
								<h3>Nguyen van B</h3>
								<span class="position mb-2">Tài xế</span>
								<div class="faded">
									<ul class="ftco-social text-center">
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
		              </ul>
	              </div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-lg-3 ftco-animate d-flex">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(assets/images/epbus_3.png);"></div>
							</div>
							<div class="text pt-3 px-3 pb-4 text-center">
								<h3>Nguyen Van C</h3>
								<span class="position mb-2">Tài xế</span>
								<div class="faded">
									<ul class="ftco-social text-center">
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
		                <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
		              </ul>
	              </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<!-- feed back -->
    <section class="ftco-section testimony-section ftco-bg-dark">
      <div class="container">
        <div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
          	<span class="subheading">Testimonies</span>
            <h2>Happy Customer</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                  <div class="text">
                  	<div class="d-flex align-items-center mb-4">
                    	<div class="user-img" style="background-image: url(assets/images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                  <div class="text">
                  	<div class="d-flex align-items-center mb-4">
                    	<div class="user-img" style="background-image: url(assets/images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                  <div class="text">
                  	<div class="d-flex align-items-center mb-4">
                    	<div class="user-img" style="background-image: url(assets/images/person_3.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                  <div class="text">
                  	<div class="d-flex align-items-center mb-4">
                    	<div class="user-img" style="background-image: url(assets/images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-right"></span></div>
                  <div class="text">
                  	<div class="d-flex align-items-center mb-4">
                    	<div class="user-img" style="background-image: url(assets/images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                    <p class="mb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

<!-- journey trips -->
		<section class="ftco-section ftco-no-pb">
			<div class="container">
				<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-12 heading-section  text-center ftco-animate">
          	<span class="subheading">Journey Tripst</span>
            <h2>Những hành trình đã đi qua</h2>
          </div>
        </div>
				<div class="row">
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-1.jpg);">
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-2.jpg);">
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-3.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-4.jpg);">
            	
            </div>
          </div>

          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-5.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-6.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-7.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(assets/images/work-8.jpg);">
            	
            </div>
          </div>
        </div>
			</div>
		</section>	

		<!--news mini  -->
		<section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">News &amp; Blog</span>
            <h2>Latest News</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-6 col-lg-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('assets/images/image_1.jpg');">
              </a>
              <div class="text mt-3 px-4">
              	<div class="posted mb-3 d-flex">
              		
              		<div class="desc pl-3">
              			
              			<span>Thời gian diễn ra: Đến hết 30/6/2024.</span>
              		</div>
              	</div>
                <h3 class="heading"><a href="#">Các bước nhận ưu đãi vé xe 400K </a></h3>
                <p>Nhận ưu đãi vé xe 400K và hoàn đến 15% mỗi tháng khi mở thẻ và chi tiêu cùng thẻ tín dụng VPBank...</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('assets/images/image_2.jpg');">
              </a>
              <div class="text mt-3 px-4">
              	<div class="posted mb-3 d-flex">
              		<div class="img author" style="background-image: url(assets/images/person_3.jpg);"></div>
              		<div class="desc pl-3">
              			
              			<span>Thời gian bắt đầu: từ 20/3/2024.</span>
              		</div>
              	</div>
                <h3 class="heading"><a href="#">Bảo hiểm chuyến đi</a></h3>
                <p>Việc sở hữu một gói bảo hiểm khi di chuyển sẽ là lựa chọn thông minh để bảo vệ bạn trước những rủi ro trong suốt hành trình di chuyển.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('assets/images/image_3.jpg');">
              </a>
              <div class="text mt-3 px-4">
              	<div class="posted mb-3 d-flex">
              		<div class="img author" style="background-image: url(assets/images/person_1.jpg);"></div>
              		<div class="desc pl-3">
              			
              			<span>Thời gian bắt đầu: từ 1/4/2024.</span>
              		</div>
              	</div>
                <h3 class="heading"><a href="#">Chương trình tích điểm đổi quà</a></h3>
                <p>Bạn sẽ được hưởng những chương trình giảm giá hấp dẫn nhất, đặt dịch vụ xe khách tích điểm, quy đổi điểm thưởng sang các ưu đãi </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
<!-- video traler -->
    <section class="ftco-section ftco-intro" style="background-image: url('assets/images/bg_3.jpg');" data-stellar-background-ratio="0.5">
    	<div class="overlay"></div>
    	<div class="container">
    		<div class="row justify-content-center">
    			<div class="col-md-8 text-center">
    				<h2>Together we will explore new things</h2>
    				<a href="" class="icon-video d-flex align-items-center justify-content-center"><span class="fa fa-play"></span></a>
    			</div>
    		</div>
    	</div>
    </section>



    <footer class="footer ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">Mien Trung Transport</h2>
						<p>Tại Mien Trung Transport, chúng tôi tin tưởng nhân tố tạo nên sự thành công của doanh nghiệp là đội ngũ nhân lực chất lượng cao và tràn đầy nhiệt huyết.</p>
						<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
              <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
            </ul>
					</div>
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">Latest News</h2>
						<div class="block-21 mb-4 d-flex">
              <a class="img mr-4 rounded" style="background-image: url(assets/images/image_1.jpg);"></a>
              <div class="text">
                <h3 class="heading"><a href="#">Các bước nhận ưu đãi vé xe 400K</a></h3>
                <div class="meta">
                  <div><a href="#"><span class="icon-calendar"></span> Mar. 04, 2024</a></div>
                  <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                  <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                </div>
              </div>
            </div>
            <div class="block-21 mb-4 d-flex">
              <a class="img mr-4 rounded" style="background-image: url(assets/images/image_2.jpg);"></a>
              <div class="text">
                <h3 class="heading"><a href="#">Bảo hiểm chuyến đi</a></h3>
                <div class="meta">
                  <div><a href="#"><span class="icon-calendar"></span> Mar. 04, 2024</a></div>
                  <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                  <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                </div>
              </div>
            </div>
					</div>
					<div class="col-md-6 col-lg-3 pl-lg-5 mb-4 mb-md-0">
						<h2 class="footer-heading">Quick Links</h2>
						<ul class="list-unstyled">
              <li><a href="#" class="py-1 d-block">Home</a></li>
              <li><a href="#" class="py-1 d-block">About</a></li>
              <li><a href="#" class="py-1 d-block">Services</a></li>
              <li><a href="#" class="py-1 d-block">Works</a></li>
              <li><a href="#" class="py-1 d-block">Blog</a></li>
              <li><a href="#" class="py-1 d-block">Contact</a></li>
            </ul>
					</div>
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">Have a Questions?</h2>
						<div class="block-23 mb-3">
              <ul>
                <li><span class="icon fa fa-map-marker"></span><span class="text">38 Yên Bái, Hải Châu 1, Hải Châu, Đà Nẵng, Việt Nam</span></li>
                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+84 123 456 789</span></a></li>
                <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">b179-aptech@gmail.com</span></a></li>
              </ul>
            </div>
					</div>
				</div>
				<div class="row mt-5">
          <div class="col-md-12 text-center">

            <p class="copyright">
  			Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
  			All rights reserved | Made with team 4 b179-aptech <i class="fa fa-heart" aria-hidden="true"></i> </p>
          </div>
        </div>
			</div>
		</footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/jquery.easing.1.3.js"></script>
  <script src="assets/js/jquery.waypoints.min.js"></script>
  <script src="assets/js/jquery.stellar.min.js"></script>
  <script src="assets/js/jquery.animateNumber.min.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>
  <script src="assets/js/jquery.magnific-popup.min.js"></script>
  <script src="assets/js/scrollax.min.js"></script>
  <script src="assets/js/main.js"></script>
    
  </body>
</html>