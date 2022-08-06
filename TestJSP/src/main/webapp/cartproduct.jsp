<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/21/2021
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>

<jsp:useBean id="cart" scope="request" type="vn.edu.hcmuaf.fit.bean.Cart"/>

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
    <div class="cartpr-main" style="width: 100%;">
        <div class="cartpr-decrip" style=" width: 1200px;
    margin:100px auto;
">
            <div class="cartpr-top" style="  border: 1px solid #000;
    height: 50px;
    width: 100%;
    display: flex;
    text-align: center;
    line-height: 50px;
    color: #000;
    font-weight: 700;
    background-color: #28b6d642;">
                <div class="cart-img" style=" width: 25%;
 border-right: 1px solid #000;">
                    Sản Phẩm
                </div>
                <div class="cart-name" style="  width: 30%;
    border-right: 1px solid #000;">
                    Tên Sản Phẩm
                </div>
                <div class="cart-price" style=" width: 15%;
    border-right: 1px solid #000;">
                    Giá cả
                </div>
                <div class="cart-quantity" style=" width: 10%;
    border-right: 1px solid #000;">
                    Số Lượng
                </div>
                <div class="cart-total" style=" width: 10%;
    border-right: 1px solid #000;">
                    Tạm Tính
                </div>
                <div class="cart-remove" style=" width: 10%;">
                    Tùy Chọn
                </div>
            </div>
            <div class="cartpr-menu">

                <c:set var="products" value ="${cart.map}"/>

                <c:forEach items="${products}" var ="product">
<%--    <c:forEach items="${cart}" var ="product">--%>
                <div class="cartpr-menu-item" style="  border: 1px solid #000;
    height: 200px;
    width: 100%;
    display: flex;
    text-align: center;
    /* line-height: 200px; */
    color: #000;
    font-weight: 400;
    align-items: center;">
                    <div class="cart-img-1" style="  width: 25%;
    border-right: 1px solid #000;">
                        <img src="${product.img}" alt="" style="  width: 100%;
    height: 200px;
    padding: 10px;">
                    </div>
                    <div class="cart-name-1" style=" width: 30%;
       border-right: 1px solid #000;
       height: 200px;
       line-height: 200px;">
                        <a href="#">${product.name}</a>
                    </div>
                    <div class="cart-price-1" style="  width: 15%;
       border-right: 1px solid #000;
       height: 200px;
       line-height: 200px;">
                        <a href="#">${product.newPrice}</a>
                    </div>
                    <div class="cart-quantity-1" style="  width: 10%;
       border-right: 1px solid #000;
       height: 200px;">
                        <input type="number" min="0" max="10000" step="1" value="${product.sellQuantity}" style=" text-align: center;
    margin-top: 87px;">
                    </div>
                    <div class="cart-total-1" style="  width: 10%;
       border-right: 1px solid #000;
       height: 200px;
       line-height: 200px;">
                        <a href="#">${product.totalMoney}</a>
                    </div>
                    <div class="cart-remove-1" style="  width: 10%;
       cursor: pointer;">
                        <a href="">
                            <i class="fas fa-trash-alt"></i>
                        </a>
                    </div>
                </div>
    </c:forEach>
            </div>
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


<script src="./assets/js/OWL.js"></script>


<!-- <script src="js/wow.min.js"></script> -->
<script src="./assets/js/wowjs-1/wow.min.js"></script>
<script src="./assets/js/WowJS.js"></script>
</body>
</html>
