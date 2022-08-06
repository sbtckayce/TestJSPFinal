<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

    <div class="menu-main">

        <div class="poster">

        </div>
        <div class="menu-product" style="margin-top: -100px" >
            <div class="menu-product-decription" id="menu-product" style="position: relative">
                <c:forEach var="allpro" items="${allpro}">
                    <div class="item wow zoomIn producttop10" style="margin-bottom: 40px;">
                        <div class="product-menu-slide-decription">
                            <div class="installment-menu">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="product-item-menu">

                                <div class="product-img-menu">
                                    <img src="${allpro.img}"
                                         alt="">
                                </div>
                                <div class="monopoly-menu">
                                    <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                                </div>

                                <!-- </div> -->
                                <div class="discount-menu">
                                    <img class="discount-img" src="./assets/img/discount.png" alt="">
                                    <span>Giảm sốc</span>
                                </div>
                                <div class="product-name-menu">
                                    <a href="detail?pid=${allpro.id}">${allpro.name}</a>
                                </div>
                            </div>
                            <div class="product-status-menu">
                                <p class="item-txt-online">${allpro.decription}</p>
                            </div>
                            <div class="product-price-sale-menu">
                                <p class="price-old">${allpro.oldPrice}</p>
                                <span class="percent">${allpro.percent}</span>
                            </div>
                            <div class="product-price-new-menu">
                                <p class="price-new">${allpro.newPrice}</p>
                            </div>
                            <div class="product-vote-menu">
                                <p>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </p>
                                <p>${allpro.quantity}</p>
                            </div>


                        </div>
                    </div>
                </c:forEach>


                <button onclick="load10product()" class="xemthempr" style="border: none;
    background-color: #fff;
    margin: 10px 15px;
    cursor: pointer;
    position: absolute;
    bottom: 0;
    left: 5px;
">Xem Thêm ...
                </button>
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
    <script>
        function  load10product(){
            var n = document.getElementsByClassName('producttop10').length;
            $.ajax({
                type: "post",
                url: "/Adev/AjaxAllProductController",
                data:{
                    numberpr :n
                },
                success: function (data) {
                    var menuproduct=document.getElementById('menu-product');
                    menuproduct.innerHTML+=data;
                }
            });
        }

    </script>
</div>
</body>
</html>