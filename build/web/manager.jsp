<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
              rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
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

        <!-- Cart Page Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">

                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Products</th>
                                <th scope="col">Name</th>
                                <th scope="col">Author</th>
                                <th scope="col">PublishedBy</th>
                                <th scope="col">Handle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listP}" var="o">
                                <tr>
                                    <th scope="row">
                                        <div class="d-flex align-items-center">
                                            <img src="${o.image}" class="img-fluid me-5 rounded-circle"
                                                 style="width: 80px; height: 80px;" alt="">
                                        </div>
                                    </th>
                                    <td>
                                        <p class="mb-0 mt-4">${o.name}</p>
                                    </td>
                                    <td>
                                        <p class="mb-0 mt-4">${o.author}</p>
                                    </td>
                                    <td>
                                        <p class="mb-0 mt-4">${o.publishedBy}</p>
                                    </td>
                                    <td>
                                        <button class="btn btn-md rounded-circle bg-light border mt-4">
                                            <a href="deleteproduct?pid=${sessionScope.acc.id}&productID=${o.id}" class="delete" data-toggle="modal">
                                                <i class="fa fa-times text-danger" title="Delete"></i>
                                            </a>
                                        </button>

                                        <button class="btn btn-md rounded-circle bg-light border mt-4">
                                            <a href="load?pid=${o.id}"  class="edit" " data-toggle="modal">
                                                <i class="fa fa-wrench" title="edit"></i>
                                            </a>
                                        </button>


                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>




                </div>
                <div class="table-title">
                    <div class="col-sm-6">
                        <a href="load1" class="btn btn-success" data-toggle="modal">
                            <span>Add New Product</span>
                        </a>
                    </div>
                </div>



            </div>
        </div>
        <!-- Cart Page End -->
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listCC}" var="o">
                                        <option value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Footer Start -->
        <jsp:include page="Footer.jsp" />

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                class="fa fa-arrow-up"></i></a>

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
