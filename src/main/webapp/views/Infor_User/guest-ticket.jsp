<%@page import="model.Trip"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>miền trung transport nhóm 4 batch 172 - 179</title>
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
    <link rel="stylesheet" href="assets/css/guest-tick.css">
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
                            <a href="#" class="d-flex align-items-center justify-content-center" style="margin-right: 40px;"><span >Admin</span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span >Manager</span></a>
                        </p>
                </div>
                    </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.html">mien trung<span>transport</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="fa fa-bars"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
            <li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
            <li class="nav-item active"><a href="tickets.jsp" class="nav-link">Tra cứu vé</a></li>
            <li class="nav-item"><a href="station.html" class="nav-link">Bến xe khách</a></li>
          <li class="nav-item"><a href="blog.html" class="nav-link">News</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>
<!-- END nav -->
<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-end">
      <div class="col-md-9 ftco-animate pb-5">
          <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Kiểm tra vé <i class="fa fa-chevron-right"></i></span></p>
        <h1 class="mb-0 bread">Tra cứu vé</h1>
      </div>
    </div>
  </div>
</section>


<!-- phần vé -->

    <section class="container" style="margin-top: 30px; margin-bottom:30px ;">
        <h1>Your tickets</h1>
          <div class="row">
            <article class="card fl-left">
              <section class="date">
               <%
               	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
               	Date date = new Date();
               	Trip trip = (Trip) session.getAttribute("tr");
               	String month = "";
               try{
            	   date = format.parse(trip.getDeparture_time());
            	   month = (new SimpleDateFormat("MMM")).format(date);
               } catch(Exception e) {
            	   
               }
               %>
                <time datetime="23th feb">
                  <span><%= date.getDate() %></span><span><%=month %></span>
                </time>
              </section>
              <section class="card-cont">
                <small>${xe.fullname}</small>
                <h3>Biển số xe: ${tr.trip_board}</h3>
                <div class="even-date">
                 <i class="fa fa-calendar"></i>
                 <time>
                  
                   <span>Giờ khởi hành:${tr.departure_time}</span>
                   
                  </time>
                </div>
                <div class="even-info">
                  <i class="fa fa-map-marker"></i>
                  <div>
                	<span>Điểm đón: ${tr.departure}</span>
                	<br>
                   <span>Điểm trả: ${tr.destination}</span>
                </div>
                </div>
                  <span>Số lượng vé: ${list.size()}</span>
                  <br>
                  <span>Giá vé: ${tr.price*list.size()}.000</span>
                  <br>
                  <%
                  	String seatCode = "";
                  java.util.List<String> codes = (java.util.List<String>)session.getAttribute("list");
                  	for(String seat: codes) {
                  		if (!seatCode.isEmpty()) {
                  			seatCode +=", ";
                  		}
                  		seatCode += seat;
                  	}
                  %>
                  <span>Mã ghế: <%=seatCode %></span>
                
                <a href="#">tickets</a>
              </section>
            </article>
            
          </div>
        </section>

<!-- ft -->
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