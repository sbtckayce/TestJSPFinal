<%--<jsp:useBean id="detail" scope="request" type="vn.edu.hcmuaf.fit.bean.AllProduct"/>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn"
           uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
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

    <div class="detail-main">

        <div class="detail-product " style=" margin-top: 100px;
    width: 100%;
    height: 1000px;
    background-color: #3333332e;">
            <div class="detail-decription" style=" width: 1200px;
    margin: 0 auto;
    display: flex;
    background-color: #fff;
    border: 1px solid #000;">
                <div class="detail-decrip-left" style=" padding: 30px 0;
    width: 50%;
    border-right: 1px solid #000;">
                    <div class="img-detail" style=" width: 100%;">
                        <img src="${detail.img}" alt="" style=" width: 100%;  height: 480px;    padding: 0 10px;">
                    </div>
                    <div class="buys-detail" style=" display: flex;
  margin: 20px 50px 0;
    justify-content: space-between;">
                        <a class="buy-btn" href="" style=" padding: 0 10px;
    height: 40px;
    text-align: center;
    line-height: 40px;
  text-transform: uppercase;
  background-color: #3333332e;
  border-radius: 5px;
  color: #000;">
                            <i class="fas fa-money-check-alt" style=" padding: 0 5px;"></i>Buy</a>
                        <a class="add-cart-btn" href="AddCartController?id=${detail.id}" style=" border-radius: 5px;
    height: 40px;
    text-align: center;
    text-transform: uppercase;
    padding: 0 10px;
    line-height: 40px;
    background-color: #3333332e;
    color: #000;">
                            <i class="fas fa-shopping-cart" style=" padding: 0 5px;"></i>Add to Cart</a>
                    </div>
                </div>
                <div class="detail-decrip-right" style=" padding: 30px 0;
    width: 50%;">
                    <div class="text-detail" style=" width: 100%;
    text-align: center;">
                        <div class="header-text-detail" style="  font-size: 40px;padding: 0 10px;
    color: #8EB6EC;">
                            ${detail.name}
                        </div>
                        <div class="oldprice-detail" style=" padding-top: 10px;
    font-size: 18px;
    text-decoration: line-through;">
                            ${detail.oldPrice}
                        </div>
                        <div class="newprice-detail" padding-top: 10px;
                             font-size: 25px;>
                            ${detail.newPrice}
                        </div>
                        <div class="text-decription" style="  padding-top: 40px;
    text-align: justify;
    padding-left: 20px;
    padding-right: 20px;">
                            ${detail.text}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp"/>
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
</div>
</body>
</html>