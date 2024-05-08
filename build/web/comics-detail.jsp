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

        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">Comics Detail</h1>
        </div>
        <!-- Single Page Header End -->


        <!-- Single Product Start -->
        <div class="container-fluid py-5 mt-5">
            <div class="container py-5">
                <div class="row g-4 mb-5">
                    <div class="col-lg-8 col-xl-9">
                        <div class="row g-4">
                            <div class="col-lg-6">
                                <div class="border rounded">
                                    <a href="#">
                                        <img src="${detail.image}" class="img-fluid rounded" alt="Image">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <h4 class="fw-bold mb-3">${detail.name}</h4>
                                <p class="mb-3">Author: ${detail.author}</p>
                                <div class="d-flex mb-4">
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <c:if test="${sessionScope.acc.isAdmin == 1}">
                                    <a a href="insertlibrary?AccountID=${sessionScope.acc.id}&productID=${detail.id}" title="View Product" class="btn border border-secondary rounded-pill px-3 text-primary">Like </a>

                                </c:if>
                                <c:if test="${sessionScope.acc.isAdmin == 0}">
                                    <a a href="insertlibrary?AccountID=${sessionScope.acc.id}&productID=${detail.id}" title="View Product" class="btn border border-secondary rounded-pill px-3 text-primary">Like </a>
                                </c:if>

                                <c:forEach items="${ltrchap}" var="o">
                                    <div class="d-flex">
                                        <a class="btn-link" href="chapter?chapterid=${detail.id}">${o.namechapter}</a>
                                    </div>
                                </c:forEach>   

                            </div>
                            <div class="col-lg-12">
                                <nav>
                                    <div class="nav nav-tabs mb-3">
                                        <button class="nav-link active border-white border-bottom-0" type="button" role="tab"
                                                id="nav-about-tab" data-bs-toggle="tab" data-bs-target="#nav-about"
                                                aria-controls="nav-about" aria-selected="true">Summary</button>

                                    </div>
                                </nav>
                                <div class="tab-content mb-5">
                                    <div class="tab-pane active" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                                        <p> ${detail.description} </p>     
                                    </div>

                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <h1 class="fw-bold mb-0">Recommend</h1>
                <div class="vesitable">
                    <div class="owl-carousel vegetable-carousel justify-content-center">
                        <c:forEach items="${ltr}" var="o">
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="${o.image}" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>${o.name}</h4>
                                    <p>Author:  ${o.author}</p>
                                    <p>Publisher: ${o.publishedBy}</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <a href="detail?pid=${o.id}" class="btn border border-secondary rounded-pill px-3 text-primary"> READ NOW </a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Product End -->


        <jsp:include page="Footer.jsp" />



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