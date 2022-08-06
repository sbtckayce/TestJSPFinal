<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/19/2021
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/reset.css">
    <link rel="stylesheet"
          href="./assets/font/fontawesome-free-5.15.4-web (1)/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap"
          rel="stylesheet">

    <link rel="stylesheet/less" type="text/css" href="./assets/css/style.less"/>
    <script src="https://cdn.jsdelivr.net/npm/less@4.1.1"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="./assets/js/wowjs-1/animate.css">

    <title>Document</title>
</head>
<body class="preloading">
<div class="loader">
        <span class="fas fa-spinner icon-load xoay">

        </span>
</div>
<div class="main">
    <jsp:include page="layout/header.jsp"/>
    <jsp:include page="layout/container.jsp"/>
    <div class="main-sellpr">
        <div class="header-decrip-sellpr">
            <div class="header-sellpr">
                <div class="header-left-sellpr">
                    <h3>
                        Edit Product
                    </h3>
                </div>
                <div class="header-right-sellpr">
                    <a href="" class="delete-sellpr">
                        <i class="far fa-trash-alt"></i>
                        Delete
                    </a>

                    <a href="#" class="add-sellpr" id="add-sellpr">
                        <i class="far fa-plus-square"></i>
                        Add
                    </a>


                </div>
            </div>
        </div>
        <div class="add-product-sellpr-1" style="  width: 100%;
   ">
            <form action="editproduct" method="post" class="form-addpr-1" style=" height: 800px;
    width: 600px;
    margin: 20px auto;

    border: 1px solid #000;
    text-align: center;
    background-color: #fff;">
                <div class="header-addpr">
                    <h4>Edit product</h4>

                </div>
                <div class="name-addpr">
                    <label >ID</label>
                    <input  value="${detail.id}" type="text" name="id" placeholder="ID :" readonly>
                </div>
                <div class="name-addpr">
                    <label >Name</label>
                    <input  value="${detail.name}" type="text" name="name" placeholder="Name :" >
                </div>
                <div class="linkimg-addpr">
                    <label>Image</label>
                    <input value="${detail.img}" type="text" name="image" placeholder="Link img :"  >
                </div>
                <div class="price-addpr">
                    <label >Price</label>
                    <input value="${detail.newPrice}" type="text" name="price" placeholder="Price :" >
                </div>
                <div class="decrip-addpr">
                    <label >Decription</label>
                    <textarea name="decription" >${detail.decription}</textarea>
                </div>
                <div class="category-addpr">
                    <label >Category</label>
                    <select name="categoryse">
                        <c:forEach var="catesell" items="${category}">
                            <option value="${catesell.cid}">${catesell.menu}</option>

                        </c:forEach>



                    </select>
                </div>
                <div class="button-addpr">
                    <input type="button" class="cancel-addpr" value="Cancel" id="cancel-addpr-1">
                    <input type="submit" class="submit-addpr" value="Edit">
                </div>
            </form>

        </div>
    </div>
    <jsp:include page="layout/footer.jsp"/>
</div>
<script src="./assets/js/HeaderFixed.js"></script>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="./assets/js/Loader.js"></script>
<!-- <script src="js/wow.min.js"></script> -->
<script src="./assets/js/OWL.js"></script>

<script src="./assets/js/wowjs-1/wow.min.js"></script>
<script src="./assets/js/WowJS.js"></script>
</body>
</html>
