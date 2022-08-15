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
    <style>
        .add-cart-btn:hover {
            color: #000 !important;
            transition: all 0.5s linear;
            background: #FFF200 !important;
        }

        .img-detail-list img:hover {
            border: 2px solid #4285DE !important;
        }

        input, textarea {
            outline: none;
            border-radius: 3px;
            border: 1px solid #000;
            font-size: 18px !important;
        }

        .form-comment {
            width: 500px;
            margin: 0 auto;
            display: flow-root;
            background-color: #F0F8FF;
        }

        .form-group {
            margin: 10px 0;
            padding: 5px 10px;
        }

        .form-group label {
            display: block;
            font-size: 16px !important;
            margin-bottom: 8px;
            font-weight: 600;
        }

        .form-group input {
            width: 100%;
            padding-left: 10px;
        }

        .form-group textarea {
            width: 100%;
            padding-left: 10px;
        }

        .btn-comment {
            margin: 0 auto;
            width: max-content;
            display: block;
            border: none;
            border-radius: 3px;
            background-color: #4285DE;
            font-size: 18px;
            padding: 5px 15px;
            color: #fff;
            margin-bottom: 15px;
        }

        .btn-comment:hover {
            color: #FFF200;
        }

        #comment-list {
            width: 900px;
            margin: 15px auto;


        }

        .comment-content {
            margin: 10px 0;
            padding: 15px;
            background-color: aqua;
        }

        .comment-content-name {
            font-weight: 600;
            font-size: 18px;
            text-align: center;
        }

        .comment-content-date {
            font-size: 18px;

        }

        .comment-content-desc {
            font-size: 18px;

        }
    </style>
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

        <div class="detail-product-new " style=" margin-top: 100px;
    width: 100%;
    background-color: #fff;
    border: none;
    margin-bottom: 100px;

">
            <div class="detail-decription-new" style=" width: 1200px;
    margin: 0 auto;    border-top: 1px solid #e0e0e0;
    display: flex">
                <div class="detail-decrip-left-new" style=" padding: 30px 15px;background: #2f3542;
    width: 58%;
    ">
                    <div class="img-detail" style=" width: 100%;border-bottom: 1px solid #e0e0e0;">
                        <img src="${detail.img}" alt="" data-img="${detail.img}"
                             style=" width: 100%;  height: 372px; padding: 0 10px;background-size: cover; transition: all 1s linear;margin-bottom: 30px">
                    </div>
                    <div class="img-detail-list"
                         style="display: flex;align-items: center;justify-content: space-around ;width: 70%;height: 100px ; margin: 10px auto">
                        <img src="${detail.descImg1}" alt="" data-img="${detail.descImg1}"
                             style="width: 80px;height:80px;background-size: cover; cursor: pointer; transition: all 1s linear;-webkit-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
-moz-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);";
                        >
                        <img src="${detail.descImg2}" alt="" data-img="${detail.descImg2}"
                             style="width: 80px;height:80px;background-size: cover;cursor: pointer; transition: all 1s linear;
-webkit-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
-moz-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);">
                        <img src="${detail.descImg3}" alt="" data-img="${detail.descImg3}"
                             style="width: 80px;height:80px;background-size: cover;cursor: pointer; transition: all 1s linear;
-webkit-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
-moz-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);">
                        <img src="${detail.descImg4}" alt="" data-img="${detail.descImg4}"
                             style="width: 80px;height:80px;background-size: cover;cursor: pointer; transition: all 1s linear;
-webkit-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
-moz-box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);
box-shadow: 0px 0px 8px 1px rgba(204,204,204,1);">
                        <%--                    <img src="${detail.descImg}" alt="" data-img="${detail.descImg}">--%>
                    </div>

                </div>

                <div class="detail-decrip-right-new" style=" padding: 30px 15px;border-left: 1px solid #e0e0e0;
    width: 42%; background: #2f3542; position: relative">
                    <div class="text-detail" style=" width: 100%;
    text-align: center;">
                        <div class="header-text-detail" style="  font-size: 30px;padding: 0 10px;
    color: #fff;font-weight: 600;">
                            ${detail.name}
                        </div>
                        <input type="text" class="input-oldPrice" value=" ${detail.oldPrice} " style="display: none">
                        <div class="oldprice-detail" style=" padding-top: 10px;color: #fff;
    font-size: 18px;
    text-decoration: line-through;">

                        </div>
                        <input type="text" class="input-newPrice" value=" ${detail.newPrice}"style="display: none">
                        <div class="newprice-detail"  style=" padding-top: 10px;
                             color: #4285DE;
                             font-size: 30px;
                             font-weight: 500;"
                             >

                        </div>
                        <div class="text-decription-new" style="

    text-align: justify;
    margin: 30px 0;color: #fff; display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;

   ">
                            ${detail.text}
                        </div>
                    </div>
                    <div class="buys-detail" style=" display: flex;border-top: 1px solid #e0e0e0; position: absolute;
                    top: 74%;width: 95%;

   ">

                        <a class="add-cart-btn" href="AddCartController?id=${detail.id}" style=" border-radius: 5px;

    height: 40px;
    text-align: center;
    text-transform: uppercase;
    padding: 0 10px;
    line-height: 40px;
    color: #fff;
    background: #4285DE;
    margin-left: auto;
    margin-top: 30px;
">
                            <i class="fas fa-shopping-cart" style=" padding: 0 5px;"></i>Add to Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form class="form-comment">
        <div class="form-group">
            <label>
                Name
            </label>
            <input type="text" id="name">
        </div>

        <div class="form-group">
            <label>
                Comment
            </label>
            <textarea id="desc"></textarea>
        </div>
        <button type="button" class="btn-comment" onclick="loadAjax()">>Comment</button>
    </form>
    <div id="comment-list">

    </div>


    <%--    <c:forEach var="cm" items="${commentList}">--%>
    <%--        <p>${cm.name}</p>--%>
    <%--        <p>${cm.desc}</p>--%>
    <%--    </c:forEach>--%>

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

<script src="./assets/js/zoomsl.js"></script>
<script>
    function loadAjax() {
        var name = document.getElementById("name").value;
        var desc = document.getElementById("desc").value;
        console.log('1name', name)
        console.log('1desc', desc)
        if (name.trim() == "" || desc.trim() == "") {
            alert("All fields are Required");
            return false;
        }


        // var url = "AllCommentController?name=" + name + "&desc=" + desc
        var url = "ajaxRequestPage.jsp?name=" + name + "&desc=" + desc

        if (window.XMLHttpRequest) {

            request = new XMLHttpRequest();

        } else if (window.ActiveXObject) {

            request = new ActiveXObject("Microsoft.XMLHTTP");
        }
        try {
            request.onreadystatechange = sendInfo;
            request.open("POST", url, true);
            request.send();

        } catch (e) {
            document.write(e);
        }
    }

    function sendInfo() {
        var p = document.getElementById("comment-list");

        if (request.readyState == 1) {
            var text = request.responseText;
            p.innerHTML = "Please Wait...";
            console.log("1");
        }

        if (request.readyState == 2) {
            var text = request.responseText;
            console.log("2");
        }
        if (request.readyState == 3) {
            var text = request.responseText;
            console.log("3");
        }
        if (request.readyState == 4) {
            var text = request.responseText;
            p.innerHTML = " Your Comment has been Posted  " + text;
        }
    }
</script>
<script>

    $(document).ready(function () {
        $('.img-detail-list img').mousemove(function (e) {
            e.preventDefault();

            $('.img-detail img').attr('src', $(this).attr("data-img"))
        })
        $('.img-detail img').imagezoomsl({
            zoomrange: [3, 3]
        })
        currencyVND()
    })
    var oldPriceDetail = document.querySelector('.oldprice-detail')

    var newPriceDetail = document.querySelector('.newprice-detail')

    var inputOldPrice = document.querySelector('.input-oldPrice')

    var inputNewPrice = document.querySelector('.input-newPrice')

    function currencyVND() {
        var oldP = inputOldPrice.value
        var oldPrice = new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'VND'}).format(oldP)
        oldPriceDetail.innerHTML = oldPrice

        var newP = inputNewPrice.value
        var newPrice = new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'VND'}).format(newP)
        newPriceDetail.innerHTML = newPrice
    }

</script>


</body>
</html>