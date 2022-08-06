<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/17/2021
  Time: 12:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix = "fn"--%>
<%--           uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
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
        <div class="header-decrip-sellpr" style="  width: 100%;
   margin-top: 100px;">
            <div class="header-sellpr" style="  width: 1200px;
    margin:  auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
    text-align: center;
    background-color: #3bacf0;
    border-radius: 5px;">
                <div class="header-left-sellpr">
                    <h3 style="  margin-bottom: 0;
    line-height: 60px;
    text-transform: uppercase;
    color: #fff;
    font-weight: 600;
    padding-left: 15px;">
                        Quản lí sản phẩm
                    </h3>
                </div>
                <div class="header-right-sellpr" style=" padding-right: 90px;">
                    <a href="" class="delete-sellpr" style="font-size: 20px;
    color: #fff;">
                        <i class="far fa-trash-alt"></i>
                        Delete
                    </a>
                    <a href="#" class="add-sellpr" id="add-sellpr" style=" font-size: 20px;
    margin-left: 50px;
    color: #fff;">
                        <i class="far fa-plus-square"></i>
                        Add
                    </a>
                </div>
            </div>
        </div>
        <div class="container-decrip-sellpr" style="  width: 100%;
    min-height: 1000px;">
            <div class="container-sellpr" style=" width: 1200px;
    margin: 20px auto;
    background-color: #fff;
">
                <div class="center-sellpr" style="  width: 100%;
    padding: 0 15px;
    background-color: #fff;
    border-radius: 5px;
    border: 1px solid #f1f1f1;">
                    <div class="center-top-sellpr" style="  border-bottom: 2px solid #000;
        height: 50px;
        background-color: #f1f1f1;
        text-align: center;
        line-height: 50px;">
                        <div class="menu-center-top-sellpr" style=" display: flex;
    width: 100%;">
                            <div class="input-menu-center" style="width: 5%">
                                <input type="checkbox" style="margin-top: 20px">
                            </div>
                            <div class="id-menu-center" style=" width: 5%;">
                                ID
                            </div>
                            <div class="name-menu-center" style=" width: 30%;">
                                Name
                            </div>
                            <div class="img-menu-center" style="width: 40%;">
                                Image
                            </div>
                            <div class="price-menu-center" style=" width: 10%;">
                                Price
                            </div>
                            <div class="action-menu-center" style=" width: 10%;">
                                Actions
                            </div>
                        </div>
                    </div>
                    <div class="center-main-sellpr" style="  padding: 30px 0;
    text-align: center;
    line-height: 200px;">
<%--                        <jsp:useBean id="allpro" scope="request" type="java.util.List"/>--%>
                        <c:forEach var="sellpr" items="${allpro}">
                            <div class="menu-center-main-sellpr" style="  display: flex;
    width: 100%;
    padding: 10px 0;
    border-bottom: 2px solid #f1f1f1;">
                                <div class="input-menu-center-main" style="  width: 5%">
                                    <input type="checkbox" style="margin-top: 95px">
                                </div>
                                <div class="id-menu-center-main" style=" width: 5%;">
                                        ${sellpr.id}
                                </div>
                                <div class="name-menu-center-main" style=" width: 30%;">
                                        ${sellpr.name}
                                </div>
                                <div class="img-menu-center-main" style=" width: 40%;">
                                    <img src="${sellpr.img}" alt="" style="  width: 200px;
    height: 200px;">
                                </div>
                                <div class="price-menu-center-main" style="width: 10%;">
                                        ${sellpr.newPrice}
                                </div>
                                <div class="action-menu-center-main" style="  width: 10%;">

                                    <a href="loadproductsell?pid=${sellpr.id}" class="edit-action" style="  color: #000;">
                                        <i class="fas fa-pen"></i>
                                    </a>
                                    <a href="deleteproduct?sptid=${sellpr.id}" class="delete-action" style="  margin-left: 15px;
   color: #000;">
                                        <i class="far fa-trash-alt"></i>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>


                    </div>
                    <div class="center-bot-sellpr" style=" width: 100%;
    display: flex;">
                        <div class="number-page-sellpr" style=" width: 1200px;
    margin: auto;
    display: flex;
    text-align: center;
    align-items: center;
    justify-content: center;">
                            <a href="" style=" color: #000;
    padding: 15px 0;
    width: 50px;"> < </a>
                            <a href="" style=" color: #000;
    padding: 15px 0;
    width: 50px;">1</a>
                            <a href="" style=" color: #000;
    padding: 15px 0;
    width: 50px;">2</a>
                            <a href="" style=" color: #000;
    padding: 15px 0;
    width: 50px;">3</a>
                            <a href="" style=" color: #000;
    padding: 15px 0;
    width: 50px;">4</a>
                            <a href="" style=" color: #000;
    padding: 15px 0;
    width: 50px;">5</a>
                            <a href="" style=" color: #000;
    padding: 15px 0;
    width: 50px;"> > </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="add-product-sellpr ">
        <form action="addsell" class="form-addpr" method="post">
            <div class="header-addpr">
                <h4>Add product</h4>

            </div>
            <div class="name-addpr">
                <label >Name</label>
                <input type="text" name="name" placeholder="Name :">
            </div>
            <div class="linkimg-addpr">
                <label >Image</label>
                <input type="text" name="image" placeholder="Link img :">
            </div>
            <div class="price-addpr">
                <label >Price</label>
                <input type="text"name="price" placeholder="Price :">
            </div>
            <div class="decrip-addpr">
                <label >Decription</label>
                <textarea name="decription" ></textarea>
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
                <input type="button" class="cancel-addpr" value="Cancel" id="cancel-addpr">
                <input type="submit" class="submit-addpr" value="Add">
            </div>
        </form>

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
<%--    <script src="./assets/js/Sellpr.js"></script>--%>
    <script>
        $(document).ready(function(){
            var addsell = document.getElementById('add-sellpr');

            var cancel =document.getElementById('cancel-addpr');
            addsell.onclick=sellPr;
            cancel.onclick=curr;
        })
        var current=1;
        function sellPr(){
            if(current==1){
                $('.add-product-sellpr').addClass('open');
                current=2;
            }else{
                $('.add-product-sellpr').removeClass('open');
                current=1;
            }

        }
        function curr(){
            $('.add-product-sellpr').removeClass('open');
            current=1;

        }
    </script>
</div>
</body>
</html>
