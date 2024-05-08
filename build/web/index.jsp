<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.Truyen" %>
<%@page import = "java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Fruitables - Vegetable Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <jsp:include page="Menu.jsp" />





        <!-- Hero Start -->
        <div class="container-fluid py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-12 col-lg-7">
                        <h4 class="mb-3 text-secondary">Search</h4>
                        <h1 class="mb-5 display-3 text-primary">Novel & Comic</h1>
                        <div class="position-relative mx-auto">
                            <form action="search" method="post" >
                                <input name="txt" class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill" type="text" placeholder="Search">
                                <button type="submit" class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100" style="top: 0; right: 25%;">Submit Now</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-5">
                        <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active rounded">
                                    <img src="https://wallpapersmug.com/download/1600x900/e6f70b/4k-red-hood-comic-art.jpg" class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">
                                    <a href="#" class="btn px-4 py-2 text-white rounded">Comic</a>
                                </div>
                                <div class="carousel-item rounded">
                                    <img src="https://wallpapersmug.com/download/1600x900/f12332/books.jpg" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                    <a href="#" class="btn px-4 py-2 text-white rounded">Novel</a>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Featurs Section Start -->
        <div class="container-fluid featurs py-5">
            <div class="container py-5">
                <div class="row g-4">
                    <div class="col-md-6 col-lg-3">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                <i class="fas fa-car-side fa-3x text-white"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>Read comic</h5>
                                <p class="mb-0">everywhere</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                <i class="fas fa-user-shield fa-3x text-white"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>Security</h5>
                                <p class="mb-0">100% security</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                <i class="fas fa-exchange-alt fa-3x text-white"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>Use</h5>
                                <p class="mb-0">to easy</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                <i class="fa fa-phone-alt fa-3x text-white"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>24/7 Support</h5>
                                <p class="mb-0">Support every time fast</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Featurs Section End -->


        <!-- Fruits Shop Start-->
        <div class="container-fluid fruite py-5">
            <div class="container py-5">
                <div class="tab-class text-center">
                    <div class="row g-4">
                        <div class="col-lg-4 text-start">
                            <h1>Our Products</h1>
                        </div>
                        <div class="col-lg-8 text-end">
                            <ul class="nav nav-pills d-inline-flex text-center mb-5">
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                                        <span class="text-dark" style="width: 130px;">All Products</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex py-2 m-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-2">
                                        <span class="text-dark" style="width: 130px;">Romance</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-3">
                                        <span class="text-dark" style="width: 130px;">SCI-FI</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-4">
                                        <span class="text-dark" style="width: 130px;">Fantasy</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-5">
                                        <span class="text-dark" style="width: 130px;">Action</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--                    <div class="tab-content" >
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                                                <div class="row g-4">
                                                    <div class="col-lg-12">
                                                        <div class="row g-4">
                    
                    <c:forEach items="${listP}" var="o">
                   <div class="col-md-6 col-lg-4 col-xl-3">
                       <div class="rounded position-relative fruite-item">
                           <figure>
                               <a href="#"><img src="${o.image}" alt="Card image cap"></a>
                               
                           </figure>
                           <div class="product-text">
                               <h4 class="card-title show txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                               <h6>${o.author}</</h6>
                               <p>${o.publishedBy} $</p>
                           </div>
                       </div>
                   </div>
                    </c:forEach>
    </div>
                    </div>
                </div>
            </div>
        </div>
                    
                </div>-->
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <c:forEach items="${ltr}" var="o">             
                                            <div class="col-md-6 col-lg-4 col-xl-3">
                                                <div class="rounded position-relative fruite-item">
                                                    <div class="fruite-img">
                                                        <img src="${o.image}" class="img-fluid w-100 rounded-top" alt="">
                                                    </div>
                                                    <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                        <h4>${o.name}</h4>
                                                        <p>Author:  ${o.author}</p>
                                                        <p>Publisher: ${o.publishedBy}</p>
                                                        <div class="d-flex justify-content-between flex-lg-wrap">
                                                            <a href="detail?pid=${o.id}" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>    
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <c:forEach items="${ltr}" var="o"> 
                                            <c:if test="${o.cateID == 1 || o.cateID == 2}">
                                                <div class="col-md-6 col-lg-4 col-xl-3">
                                                    <div class="rounded position-relative fruite-item">
                                                        <div class="fruite-img">
                                                            <img src="${o.image}" class="img-fluid w-100 rounded-top" alt="">
                                                        </div>
                                                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                            <h4>${o.name}</h4>
                                                            <p>Author:  ${o.author}</p>
                                                            <p>Publisher: ${o.publishedBy}</p>
                                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                                <a href="detail?pid=${o.id}" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <c:forEach items="${ltr}" var="o"> 
                                            <c:if test="${o.cateID == 2}">
                                                <div class="col-md-6 col-lg-4 col-xl-3">
                                                    <div class="rounded position-relative fruite-item">
                                                        <div class="fruite-img">
                                                            <img src="${o.image}" class="img-fluid w-100 rounded-top" alt="">
                                                        </div>
                                                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                            <h4>${o.name}</h4>
                                                            <p>Author:  ${o.author}</p>
                                                            <p>Publisher: ${o.publishedBy}</p>
                                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                                <a href="detail?pid=${o.id}" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-4" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <c:forEach items="${ltr}" var="o"> 
                                            <c:if test="${o.cateID == 3}">
                                                <div class="col-md-6 col-lg-4 col-xl-3">
                                                    <div class="rounded position-relative fruite-item">
                                                        <div class="fruite-img">
                                                            <img src="${o.image}" class="img-fluid w-100 rounded-top" alt="">
                                                        </div>
                                                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                            <h4>${o.name}</h4>
                                                            <p>Author:  ${o.author}</p>
                                                            <p>Publisher: ${o.publishedBy}</p>
                                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                                <a href="detail?pid=${o.id}" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-5" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <c:forEach items="${ltr}" var="o"> 
                                            <c:if test="${o.cateID == 4}">
                                                <div class="col-md-6 col-lg-4 col-xl-3">
                                                    <div class="rounded position-relative fruite-item">
                                                        <div class="fruite-img">
                                                            <img src="${o.image}" class="img-fluid w-100 rounded-top" alt="">
                                                        </div>
                                                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                            <h4>${o.name}</h4>
                                                            <p>Author:  ${o.author}</p>
                                                            <p>Publisher: ${o.publishedBy}</p>
                                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                                <a href="detail?pid=${o.id}" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>      
            </div>
        </div>
        <!-- Fruits Shop End-->

        <!-- Banner Section Start-->
        <div class="container-fluid banner bg-secondary my-5">
            <div class="container py-5">
                <div class="row g-4 align-items-center">
                    <div class="col-lg-6">
                        <div class="py-4">
                            <h1 class="display-3 text-white">Top Comic</h1>
                            <p class="fw-normal display-3 text-dark mb-4">in LHS COMIC</p>
                            <p class="mb-4 text-dark">The series received the highest ratings from readers at LHS COMIC.</p>
                            <a href="detail?pid=1" class="banner-btn btn border-2 border-white rounded-pill text-dark py-3 px-5">READ NOW</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="position-relative">
                            <img src="https://fwmedia.fandomwire.com/wp-content/uploads/2024/02/10134727/solo-leveling.png" class="img-fluid w-100 rounded" alt="">
                            <div class="d-flex align-items-center justify-content-center bg-white rounded-circle position-absolute" style="width: 140px; height: 140px; top: 0; right: 0;">
                                <h1 style="font-size: 100px;">1</h1>
                                <div class="d-flex flex-column">
                                    <span class="h2 mb-0">top</span>
                                    <span class="h4 text-muted mb-0">like</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Section End -->


        <!-- Bestsaler Product Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5" style="max-width: 700px;">
                    <h1 class="display-4">Most Prominent Comics</h1>
                    <p>Below are the comics that are most appreciated by everyone.</p>
                </div>
                <div class="row g-4">
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="https://cdn.sforum.vn/sforum/wp-content/uploads/2022/02/portada_solo-leveling-Copy.jpg" class="img-fluid rounded-circle w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Solo Leveling</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="detail?pid=1" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/06/26/demon-slayer-hashira-training-arc.jpg" class="img-fluid rounded-circle w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Demon Slayer</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="detail?pid=2" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="https://cdn.oneesports.gg/cdn-data/2023/07/Anime_JujutsuKaisen_Season2_GojoSatoru_GetoSuguru_ShokoIeiri.jpg" class="img-fluid rounded-circle w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Jujutsu Kaisen</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="detail?pid=3" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="https://classic.imgix.net/movies/legacy/minions.jpg?auto=compress,format&w=1600&h=900&fit=crop&v=20221026" class="img-fluid rounded-circle w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Minions</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="detail?pid=5" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="https://imageio.forbes.com/blogs-images/jvchamary/files/2015/08/Inside-Out-First-Look-RGB-d150_20mpub.pub16.101-1940x1091.jpg?format=jpg&height=900&width=1600&fit=bounds" class="img-fluid rounded-circle w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Inside Out</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="detail?pid=6" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="https://i.pinimg.com/originals/36/7c/2c/367c2cf84ec585be3e3db556e3c2aabd.jpg" class="img-fluid rounded-circle w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">The Kings Avatar</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="detail?pid=8" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                </div>
                            </div>
                        </div>
                    </div>                                        
                </div>
            </div>
        </div>
        <!-- Bestsaler Product End -->


        <!-- Fact Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="bg-light p-5 rounded">
                    <div class="row g-4 justify-content-center">
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>satisfied readers</h4>
                                <h1>2024</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>quality of service</h4>
                                <h1>99%</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>quality certificates</h4>
                                <h1>33</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>Available Products</h4>
                                <h1>789</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fact Start -->

        <!-- Footer Start -->
        <jsp:include page="Footer.jsp" />
        <!-- Footer End -->

        <!-- Copyright Start -->

        <!-- Copyright End -->



        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   


        <!-- JavaScript Libraries -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>