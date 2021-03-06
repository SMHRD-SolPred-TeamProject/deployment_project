<%--
  Created by IntelliJ IDEA.
  User: smhrd
  Date: 2022-05-13
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>SolCaster - Solar Power Monitoring System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="./img/pagelogo.png" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
            rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet" />

    <!-- ScoreDream 폰트 -->
    <link href="css/font.css" rel="stylesheet" />

    <style>
        <%-- 스크롤바 숨기기 --%>
        body{-ms-overflow-style:none; }
        body::-webkit-scrollbar { display:none; }
    </style>
</head>

<body>

<!-- Spinner Start -->
<div id="spinner"
     class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<!-- Spinner End -->

<!-- Topbar Start -->
<div class="container-fluid bg-dark p-0">
    <div class="row gx-0 d-none d-lg-flex">
        <div class="col-lg-7 px-5 text-start">
            <div class="h-100 d-inline-flex align-items-center me-4">
                <small class="fa fa-map-marker-alt text-primary me-2"></small>
                <small>Yesul-gil 31-15, Gwangju, KOREA</small>
            </div>
            <div class="h-100 d-inline-flex align-items-center">
                <small class="far fa-clock text-primary me-2"></small>
                <small>Mon - Fri : 09.00 AM - 18.00 PM</small>
            </div>
        </div>
        <div class="col-lg-5 px-5 text-end">
            <div class="h-100 d-inline-flex align-items-center me-4">
                <small class="fa fa-phone-alt text-primary me-2"></small>
                <small>+10 1234 5678</small>
            </div>
            <div class="h-100 d-inline-flex align-items-center mx-n2">
                <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i
                        class="fab fa-facebook-f"></i></a>
                <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i
                        class="fab fa-twitter"></i></a>
                <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i
                        class="fab fa-linkedin-in"></i></a>
                <a class="btn btn-square btn-link rounded-0" href=""><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
</div>
<!-- Topbar End -->

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
    <a href="/" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
        <img src="./img/logo.png" class="logo" />
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
            <c:choose>
                <c:when test="${sessionScope.member != null}">
                    <c:if test="${sessionScope.member.getMem_type() eq 'Y'}">
                        <a href="goManage" class="nav-item nav-link">MANAGE</a>
                    </c:if>
                        <a href="myprofile" class="nav-item nav-link">MY PROFILE</a>
                </c:when>
            </c:choose>
            <a href="about" class="nav-item nav-link">About</a>
            <a href="boardList" class="nav-item nav-link">Service</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Solution</a>
                <div class="dropdown-menu bg-light m-0">
                    <a href="smartEnergy" class="dropdown-item">Smart Energy</a>
                    <a href="smartFarm" class="dropdown-item">Smart Farm</a>
                    <a href="smartStation" class="dropdown-item">Smart Station</a>
                </div>
            </div>
            <c:choose>
                <c:when test="${sessionScope.member == null}">
                    <a href="goLoginForm" class="nav-item nav-link">LOGIN</a>
                </c:when>
                <c:otherwise>
                    <a href="goLogOut" class="nav-item nav-link">LOGOUT</a>
                </c:otherwise>
            </c:choose>

            <a href="/" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block" id="btn-home">HOME<i
                    class="fa fa-arrow-right ms-3"></i></a>
        </div>
</nav>
<!-- Navbar End -->

<!-- Carousel Start -->
<div class="container-fluid p-0 pb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="owl-carousel header-carousel position-relative">
        <div class="owl-carousel-item position-relative" data-dot="<img src='img/mainImage1.jpg'>">
            <img class="img-fluid" src="img/mainImage1.jpg" alt="" />
            <div class="owl-carousel-inner">
                <div class="container">
                    <div class="row justify-content-start">
                        <div class="col-10 col-lg-8">
                            <h1 class="display-2 text-white animated slideInDown">
                                Create the New ERA, Solcaster
                            </h1>
                            <p class="fs-5 fw-medium text-white mb-4 pb-3">
                                We provide solutions with solar monitoring systems<br>
                                The sunlight that reaches the earth in 30 seconds alone produces <br>
                                energy that can be used by all mankind for 48 hours
                            </p>
                            <a href="about" class="btn btn-primary rounded-pill py-3 px-5 animated slideInLeft">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="owl-carousel-item position-relative" data-dot="<img src='img//mainImage2.jpg'>">
            <img class="img-fluid" src="img/mainImage2.jpg" alt="" />
            <div class="owl-carousel-inner">
                <div class="container">
                    <div class="row justify-content-start">
                        <div class="col-10 col-lg-8">
                            <h1 class="display-2 text-white animated slideInDown">
                                Create the New ERA, Solcaster
                            </h1>
                            <p class="fs-5 fw-medium text-white mb-4 pb-3">
                                We provide solutions with solar monitoring systems<br>
                                The sunlight that reaches the earth in 30 seconds alone produces <br>
                                energy that can be used by all mankind for 48 hours
                            </p>
                            <a href="about" class="btn btn-primary rounded-pill py-3 px-5 animated slideInLeft">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="owl-carousel-item position-relative" data-dot="<img src='img/mainImage3.jpg'>">
            <img class="img-fluid" src="img/mainImage3.jpg" alt="" />
            <div class="owl-carousel-inner">
                <div class="container">
                    <div class="row justify-content-start">
                        <div class="col-10 col-lg-8">
                            <h1 class="display-2 text-white animated slideInDown">
                                Create the New ERA, Solcaster
                            </h1>
                            <p class="fs-5 fw-medium text-white mb-4 pb-3">
                                We provide solutions with solar monitoring systems<br>
                                The sunlight that reaches the earth in 30 seconds alone produces <br>
                                energy that can be used by all mankind for 48 hours
                            </p>
                            <a href="about" class="btn btn-primary rounded-pill py-3 px-5 animated slideInLeft">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Carousel End -->

<!-- Feature Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center mb-4">
                    <div class="btn-lg-square bg-primary rounded-circle me-3">
                        <i class="fa fa-users text-white"></i>
                    </div>
                    <h1 class="mb-0" data-toggle="counter-up">5853</h1>
                </div>
                <h5 class="mb-3 ScoreDream600">Happy Customers</h5>
                <span class="ScoreDream400">많은 분들이 Solcater와 <br>
            함께 하고 있습니다</span>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.3s">
                <div class="d-flex align-items-center mb-4">
                    <div class="btn-lg-square bg-primary rounded-circle me-3">
                        <i class="fa fa-check text-white"></i>
                    </div>
                    <h1 class="mb-0" data-toggle="counter-up">100</h1>
                    <h1>%</h1>
                </div>
                <h5 class="mb-3 ScoreDream600">Customer satisfaction</h5>
                <span class="ScoreDream400">Solcater는 언제나 고객의 만족을 최우선으로 생각합니다</span>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.5s">
                <div class="d-flex align-items-center mb-4">
                    <div class="btn-lg-square bg-primary rounded-circle me-3">
                        <i class="fa fa-award text-white"></i>
                    </div>
                    <h1 class="mb-0" data-toggle="counter-up">3123</h1>
                </div>
                <h5 class="mb-3 ScoreDream600">Awards Win</h5>
                <span class="ScoreDream400">Solcater의 기술은 우리사회를 위한 가치 창조로 이어집니다.</span>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s">
                <div class="d-flex align-items-center mb-4">
                    <div class="btn-lg-square bg-primary rounded-circle me-3">
                        <i class="fa fa-users-cog text-white"></i>
                    </div>
                    <h1 class="mb-0" data-toggle="counter-up">831</h1>
                </div>
                <h5 class="mb-3 ScoreDream600">Expert Workers</h5>
                <span class="ScoreDream400">숙련된 기술자들로 이루어진 팀이 프로젝트를 진행합니다.</span>
            </div>
        </div>
    </div>
</div>
<!-- Feature Start -->

<!-- About Start -->
<div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
    <div class="container about px-lg-0">
        <div class="row g-0 mx-lg-0">
            <div class="col-lg-6 ps-lg-0 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100" src="img/about.jpg" style="object-fit: cover" alt="" />
                </div>
            </div>
            <div class="col-lg-6 about-text py-5 wow fadeIn" data-wow-delay="0.5s">
                <div class="p-lg-5 pe-lg-0">
                    <h6 class="text-primary">Solcaster</h6>
                    <h1 class="mb-4">
                        Solar Energy Monitoring System
                    </h1>
                    <p>
                        사람과 환경을 생각하는 Solcaster 태양열 모니터링 시스템의 <br>
                        전문적인 데이터 시계열 분석으로 <br>
                        고객의 만족과 지속가능한 에너지 기술을 이끌어 갑니다.
                    </p>
                    <p>
                        <i class="fa fa-check-circle text-primary me-3"></i>Smart Energy
                    </p>
                    <p>
                        <i class="fa fa-check-circle text-primary me-3"></i>Smart Farm
                    </p>
                    <p>
                        <i class="fa fa-check-circle text-primary me-3"></i>Smart Station
                    </p>
                    <a href="" class="btn btn-primary rounded-pill py-3 px-5 mt-3">Explore More</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->

<!-- Service Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px">
            <h6 class="text-primary">Solution</h6>
            <h1 class="mb-4">This is how you use <br>our monitoring system!</h1>
        </div>
        <div class="row g-4">
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-1.jpg" alt="" />
                    <div class="position-relative p-4 pt-0">
                        <div class="service-icon">
                            <i class="fa fa-solar-panel fa-3x"></i>
                        </div>
                        <h4 class="mb-3">Solar Panels</h4>
                        <p class="ScoreDream400">
                            실시간 날씨 정보에 따른<br>
                            태양광 모듈 실시간 모니터링 및 예측
                        </p>
                        <a class="small fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-2.jpg" alt="" />
                    <div class="position-relative p-4 pt-0">
                        <div class="service-icon">
                            <i class="fa fa-tractor fa-3x"></i>
                        </div>
                        <h4 class="mb-3">Smart Farm</h4>
                        <p class="ScoreDream400">
                            태양광 발전량 예측을 통한 <br>
                            효율적인 농작물 경작 및 수확
                        </p>
                        <a class="small fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-3.jpg" alt="" />
                    <div class="position-relative p-4 pt-0">
                        <div class="service-icon">
                            <i class="fa fa-bus fa-3x"></i>
                        </div>
                        <h4 class="mb-3">Solar Station</h4>
                        <p class="ScoreDream400">
                            태양광 발전을 이용한 친환경 시설물로 <br>
                            국민의 편리함과 건강을 지키는 안전 station
                        </p>
                        <a class="small fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-4.jpg" alt="" />
                    <div class="position-relative p-4 pt-0">
                        <div class="service-icon">

                            <i class="fa fa-dumpster fa-3x"></i>
                        </div>
                        <h4 class="mb-3">Solar Trash can</h4>
                        <p class="ScoreDream400">
                            태양광 에너지를 활용한 <br>
                            친환경 자동압축 쓰레기통
                        </p>
                        <a class="small fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-5.jpg" alt="" />
                    <div class="position-relative p-4 pt-0">
                        <div class="service-icon">
                            <i class="fa fa-wind fa-3x"></i>
                        </div>
                        <h4 class="mb-3">Solar Car</h4>
                        <p class="ScoreDream400">
                            능동적으로 에너지를 생산하는<br>
                            PPT 기술 적용 태양광 자동차
                        </p>
                        <a class="small fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-6.jpg" alt="" />
                    <div class="position-relative p-4 pt-0">
                        <div class="service-icon">
                            <i class="fa fa-tree fa-3x"></i>
                        </div>
                        <h4 class="mb-3">Solar Park</h4>
                        <p class="ScoreDream400">
                            태양광 패널을 통해 에너지를 생산 및 저장하는 <br>
                            ZERO 에너지 공원
                        </p>
                        <a class="small fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->

<!-- Projects Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px">
            <h6 class="text-primary">Our suggestion</h6>
            <h1 class="mb-4">
                Solcaster suggest it to our user!
            </h1>
        </div>
        <div class="row mt-n2 wow fadeInUp" data-wow-delay="0.3s">
            <div class="col-12 text-center">
                <ul class="list-inline mb-5" id="portfolio-flters">
                    <li class="mx-2 active" data-filter="*">All</li>
                    <li class="mx-2" data-filter=".first">Individual users</li>
                    <li class="mx-2" data-filter=".second">public works</li>
                </ul>
            </div>
        </div>
        <div class="row g-4 portfolio-container wow fadeInUp" data-wow-delay="0.5s">
            <div class="col-lg-4 col-md-6 portfolio-item second">
                <div class="portfolio-img rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-6.jpg" alt="" />
                    <div class="portfolio-btn">
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href="img/img-600x400-6.jpg"
                           data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href=""><i class="fa fa-link"></i></a>
                    </div>
                </div>
                <div class="pt-3">
                    <p class="text-primary mb-0">Solar Park</p>
                    <hr class="text-primary w-25 my-2" />

                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item first">
                <div class="portfolio-img rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-5.jpg" alt="" />
                    <div class="portfolio-btn">
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href="img/img-600x400-5.jpg"
                           data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href=""><i class="fa fa-link"></i></a>
                    </div>
                </div>
                <div class="pt-3">
                    <p class="text-primary mb-0">Solar Car</p>
                    <hr class="text-primary w-25 my-2" />

                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item second">
                <div class="portfolio-img rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-4.jpg" alt="" />
                    <div class="portfolio-btn">
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href="img/img-600x400-4.jpg"
                           data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href=""><i class="fa fa-link"></i></a>
                    </div>
                </div>
                <div class="pt-3">
                    <p class="text-primary mb-0">Solar Trash can</p>
                    <hr class="text-primary w-25 my-2" />

                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item second">
                <div class="portfolio-img rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-3.jpg" alt="" />
                    <div class="portfolio-btn">
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href="img/img-600x400-3.jpg"
                           data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href=""><i class="fa fa-link"></i></a>
                    </div>
                </div>
                <div class="pt-3">
                    <p class="text-primary mb-0">Solar Station</p>
                    <hr class="text-primary w-25 my-2" />

                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item first">
                <div class="portfolio-img rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-2.jpg" alt="" />
                    <div class="portfolio-btn">
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href="img/img-600x400-2.jpg"
                           data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href=""><i class="fa fa-link"></i></a>
                    </div>
                </div>
                <div class="pt-3">
                    <p class="text-primary mb-0">Smart Farm</p>
                    <hr class="text-primary w-25 my-2" />

                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item first second">
                <div class="portfolio-img rounded overflow-hidden">
                    <img class="img-fluid" src="img/img-600x400-1.jpg" alt="" />
                    <div class="portfolio-btn">
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href="img/img-600x400-1.jpg"
                           data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                        <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href=""><i class="fa fa-link"></i></a>
                    </div>
                </div>
                <div class="pt-3">
                    <p class="text-primary mb-0">Solar Pannel</p>
                    <hr class="text-primary w-25 my-2" />

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Projects End -->

<!-- Quote Start -->
<div class="container-fluid bg-light overflow-hidden my-5 px-lg-0" id="quote">
    <div class="container quote px-lg-0">
        <div class="row g-0 mx-lg-0">
            <div class="col-lg-6 ps-lg-0 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px">
                <div class="video position-relative h-100">
                    <iframe width="600" height="350" src="https://www.youtube.com/embed/UvpgjdzwIE8" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


                </div>
            </div>
            <div class="col-lg-6 quote-text py-5 wow fadeIn" data-wow-delay="0.5s">
                <div class="quote-text p-lg-5 pe-lg-0">
                    <h6 class="text-primary">The future with smart solar power monitoring system</h6>
                    <h1 class="mb-4">Get A Solcaster</h1>
                    <p class="mb-4 pb-2 ScoreDream400">
                        솔캐스터는 스마트 에너지 모니터링 기술의 글로벌 리더 기업으로 <br>
                        세계적 수준의 엔지니어링 기술로 <br>
                        미래의 발전을 주도하는 스마트 에너지 모니터링 시스템을 만들고 있습니다.
                    </p>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Quote End -->

<!-- 고객의 소리 Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px">
            <h5 class="text-primary ScoreDream600">Solcaster는</h5>
            <h1 class="mb-4 ScoreDream400">고객의 우수한 평가와 함께합니다</h1>
        </div>
        <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
            <div class="testimonial-item text-center">
                <div class="testimonial-img position-relative">
                    <img class="img-fluid rounded-circle mx-auto mb-5" src="img/customer-1.jpeg" />
                    <div class="btn-square bg-primary rounded-circle">
                        <i class="fa fa-quote-left text-white"></i>
                    </div>
                </div>
                <div class="testimonial-text text-center rounded p-4">
                    <p class="ScoreDream400">
                        REC거래와 한국형 FIT로 생산된 5년간의 일정한 연간매출, <br>
                        솔캐스터의 관리에 만족합니다.
                    </p>
                    <h5 class="mb-1 ScoreDream600">John Jun Suh</h5>
                    <span class="fst-italic ScoreDream400">기업사용자</span>
                </div>
            </div>
            <div class="testimonial-item text-center">
                <div class="testimonial-img position-relative">
                    <img class="img-fluid rounded-circle mx-auto mb-5" src="img/customer-2.jpeg" />
                    <div class="btn-square bg-primary rounded-circle">
                        <i class="fa fa-quote-left text-white"></i>
                    </div>
                </div>
                <div class="testimonial-text text-center rounded p-4">
                    <p class="ScoreDream400">
                        솔캐스터와 함께 한 후, 저희 스마트팜은 <br>
                        탄소배출량 절감 및 기후위기에 대응하는 친환경 농장이 되었고 <br>
                        에너지 자립 시스템으로 수확 시점 예측에 있어서 훨씬 편해졌습니다.
                    </p>
                    <h5 class="mb-1 ScoreDream600">jungwoo</h5>
                    <span class="fst-italic ScoreDream400">(사)한국스마트팜산업협회</span>
                </div>
            </div>
            <div class="testimonial-item text-center">
                <div class="testimonial-img position-relative">
                    <img class="img-fluid rounded-circle mx-auto mb-5" src="img/customer-3.jpeg" />
                    <div class="btn-square bg-primary rounded-circle">
                        <i class="fa fa-quote-left text-white"></i>
                    </div>
                </div>
                <div class="testimonial-text text-center rounded p-4">
                    <p class="ScoreDream400">
                        태양광 발전 개인사용자로서 처음엔 고민했습니다. <br>
                        하지만 웹에 들어갈 필요도 없이 <br>
                        휴대폰으로 실시간 발전량이 확인 가능하니 너무 편리합니다. <br>
                        솔캐스터와 함께한 후 삶에 '여유'가 생겼습니다.
                    </p>
                    <h5 class="mb-1 ScoreDream600">Jeno</h5>
                    <span class="fst-italic ScoreDream400">개인사용자</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Testimonial End -->

<!-- Footer Start -->
<div class="container-fluid bg-dark text-body footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h5 class="text-white mb-4">Address</h5>
                <p class="mb-2">
                    <i class="fa fa-map-marker-alt me-3"></i>Yesul-gil 31-15, Gwangju,
                    KOREA
                </p>
                <p class="mb-2">
                    <i class="fa fa-phone-alt me-3"></i>+10 1234 5678
                </p>
                <p class="mb-2">
                    <i class="fa fa-envelope me-3"></i>chaewon6400@gmail.com
                </p>
                <div class="d-flex pt-2">
                    <a class="btn btn-square btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-square btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-square btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 quick-links">
                <h5 class="text-white mb-4">Quick Links</h5>
                <a class="btn btn-link" href="/">HOME</a>
                <a class="btn btn-link" href="about">About Us</a>
                <c:choose>
                    <c:when test="${sessionScope.member == null}">
                        <a class="btn btn-link" href="goLoginForm">Login</a>
                    </c:when>
                    <c:otherwise>
                        <a class="btn btn-link" href="goLogOut">Logout</a>
                    </c:otherwise>
                </c:choose>
                <a class="btn btn-link" href="service">Our Services</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h5 class="text-white mb-4">Project Gallery</h5>
                <div class="row g-2">
                    <div class="col-4">
                        <img class="img-fluid rounded" src="img/gallery-1.jpg" alt="" />
                    </div>
                    <div class="col-4">
                        <img class="img-fluid rounded" src="img/gallery-2.jpg" alt="" />
                    </div>
                    <div class="col-4">
                        <img class="img-fluid rounded" src="img/gallery-3.jpg" alt="" />
                    </div>
                    <div class="col-4">
                        <img class="img-fluid rounded" src="img/gallery-4.jpg" alt="" />
                    </div>
                    <div class="col-4">
                        <img class="img-fluid rounded" src="img/gallery-5.jpg" alt="" />
                    </div>
                    <div class="col-4">
                        <img class="img-fluid rounded" src="img/gallery-6.jpg" alt="" />
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 vertical-center">
                <a href="/">
                    <img src="./img/logo.png" class="footer-logo" />
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/counterup/counterup.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/isotope/isotope.pkgd.min.js"></script>
<script src="lib/lightbox/js/lightbox.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
</body>
</html>