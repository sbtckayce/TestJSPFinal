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
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/reset.css">
    <%--    <link rel="stylesheet"--%>
    <%--          href="./assets/font/fontawesome-free-5.15.4-web (1)/fontawesome-free-5.15.4-web/css/all.min.css">--%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet/less" type="text/css" href="assets/css/style.less"/>
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

    <link rel="stylesheet" href="assets/js/wowjs-1/animate.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <style>
        input::placeholder {
            color: #000;
            font-weight: 500;
        }

        @keyframes rightLeft {
            from {
                /*opacity: 0;*/
                margin-right: -100px;
            }
            to {
                /*opacity: 1;*/
                margin-right: 150px;
            }

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
    <div class="cartpr-main" style="width: 100%;">
        <div class="cartpr-decrip" style=" width: 1200px;
    margin:100px auto;">
            <div class="card" style="-webkit-box-shadow: 0px 0px 14px 4px rgba(241,241,241,1);
-moz-box-shadow: 0px 0px 14px 4px rgba(241,241,241,1);
box-shadow: 0px 0px 14px 4px rgba(241,241,241,1);
background-color: #fff;border: none">
                <div class="card-header" style="background-color: #4285DE;text-transform: uppercase;color: #fff">
                    <h2>Shopping Cart</h2>
                </div>
                <c:if test="${sessionScope.cart.sizeCart()!=0}">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered m-0">
                                <thead>
                                <tr>
                                    <!-- Set columns width -->
                                    <th class="text-center py-3 px-4" style="width: 40%">Product Name &amp; Details
                                    </th>
                                    <th class="text-center py-3 px-4" style="width: 20%;">Quantity</th>
                                    <th class="text-center py-3 px-4" style="width: 20%;">Price</th>
                                        <%--                                <th class="text-center py-3 px-4" style="width: 100px;">Total</th>--%>
                                        <%--                                <th class="text-center py-3 px-4" style="width: 100px;">Total</th>--%>
                                    <th class="text-center align-middle py-3 px-0" style="width: 10%"><a href="#"
                                                                                                         class="shop-tooltip float-none text-light"
                                                                                                         title=""
                                                                                                         data-original-title="Clear cart"><i
                                            class="ino ion-md-trash"></i></a></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="products" value="${cart.map}"/>

                                <c:forEach items="${products}" var="product">
                                    <tr class="tr-cart">

                                        <td class="p-4">
                                            <div class="media align-items-center">
                                                <img src="${product.img}" class="d-block ui-w-40 ui-bordered mr-4"
                                                     alt=""
                                                     style="width: 100px">
                                                <div class="media-body">
                                                    <a href="#" class="d-block text-dark"
                                                       style="text-decoration: none;">${product.name}</a>

                                                </div>
                                            </div>
                                        </td>
                                            <%--                                    <td class="text-right font-weight-semibold align-middle p-4">${product.newPrice}</td>--%>
                                        <td class="align-middle p-4">
                                            <div class="button-container" style="display: flex ; align-items: center">
                                            <button class="cart-qty-minus" type="button" style="text-align: center;border: none;outline: none;
                                            background-color: #000;color: #fff;width: 20%;height: 40px;
">
                                                <i class="fa-solid fa-minus"></i>
                                            </button>
                                            <input class="change-quantity" type="text" min="0" max="10000" step="1"
                                                   oldQuantity=${product.sellQuantity}
                                                           pid="${product.id}" value="${product.sellQuantity}"
                                                   style="width: 60%; outline: none;border: none; background-color: #f1f1f1;text-align: center;height: 40px">
                                            <button class="cart-qty-plus" type="button"
                                                    style="text-align: center;border: none;outline: none;height: 40px;
                                            background-color: #000;color: #fff;width: 20%;
">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                        </div>


                                        </td>
                                        <td class="text-right font-weight-semibold align-middle p-4"
                                            style="display: none">
                                            <input class="change-price" type="text" readonly
                                                   value="${product.newPrice}"></td>
                                        <td class="align-middle font-weight-semibold align-middle p-4 change-amount"
                                            style="text-align: center ;font-size: 18px">0
                                        </td>
                                            <%--                                    <td class="text-right font-weight-semibold align-middle p-4">${product.totalMoney}</td>--%>
                                        <td class="text-center align-middle px-0"><a class="remove-cart-icon"
                                                                                     pid="${product.id}"
                                                                                     style="cursor: pointer">
                                            <i class="fas fa-trash-alt"></i>
                                        </a></td>
                                    </tr>

                                </c:forEach>


                                </tbody>
                            </table>
                        </div>
                        <!-- / Shopping cart table -->

                        <div class="d-flex flex-wrap justify-content-between align-items-center pb-4">
                            <div class="mt-4">
                                <label class="text-muted font-weight-normal">Promocode</label>
                                <input type="text" placeholder="ABC" class="form-control">
                            </div>
                            <div class="mt-4" style="display: flex">

                                <label class="text-muted font-weight-normal m-0">Total Price :</label>
                                <div class="text-large"><strong class="change-total"
                                                                style="padding-left: 20px">$0</strong></div>

                                    <%--                            <div class="text-right mt-4">--%>
                                    <%--                                <label class="text-muted font-weight-normal m-0">Total price</label>--%>
                                    <%--                                <div class="text-large"><strong>${cart.totalPrice}</strong></div>--%>
                                    <%--                            </div>--%>
                            </div>
                        </div>

                        <div class="float-left">
                                <%--                        <a href="/Adev/HomeController">Back</a>--%>
                            <div class="pt-5">
                                <h6 class="mb-0"><a href="/TestJSP/HomeController" class="text-body" style="font-weight: 400;
    color: #fff !important;
    padding: 10px;
    background-color: #4285DE;
    text-decoration: none;
    border-radius: 3px;
"><i
                                        class="fas fa-long-arrow-alt-left me-2" style="padding-right: 10px"></i>Back to
                                    shop</a></h6>
                            </div>

                        </div>


                    </div>
                    <div class="d-flex justify-content-center">

                        <form id="form" action="/TestJSP/CheckoutController" method="post"
                              style="background: #2f3542;padding: 10px 15px;width: 700px; margin: 50px 0 ">
                            <c:if test="${sessionScope.userlogin!=null}">
                            <input type="text" name="name" id="name" placeholder="Nhap Ten Nguoi Nhan ..."
                                   style="display: block;
    overflow: hidden;
    border: 1px solid #d1d1d1;
    border-radius: 4px;
    padding: 10px;
    color: #000;
    box-sizing: border-box;
    width: 100%;  font-weight: 500;
margin: 20px 0;background: #fff;
"
                                   pattern="[A-Za-z_ ]{1,32}" title="Name not contain number" required
                            >
                            <input type="text" name="phone" id="phone" placeholder="Nhap So Dien Thoai ..."
                                   style="display: block;
    overflow: hidden;
    border: 1px solid #d1d1d1;
    border-radius: 4px;
    padding: 10px;
    color: #000;
    box-sizing: border-box;
    width: 100%;
    margin: 20px 0;
    background: #fff;  font-weight: 500;
"
                                   pattern="[0]{1}[1-9]{9}" title="Phone number with 0 and remaing 9 digit with 1-9" required

                            >
                            <div class="box-checkout">
                                <div class="f-group"
                                     style="display: flex;align-items: center;justify-content: space-between;margin: 20px 0">

                                    <select name="slct1" id="slct1" style="display: block;
    padding: 10px;
    border: 1px solid #d1d1d1;
    border-radius: 4px;
    width: 100%;

    text-align: left;
   color: #000;
    position: relative;  font-weight: 500;
    cursor: pointer;  background: #fff;outline: none;

"
                                            onchange="populate(this.id,'slct2') ">
                                        <option value="">-- Choose Country --</option>
                                        <option value="TP.HCM">TPHCM</option>
                                        <option value="HaNoi">HaNoi</option>
                                    </select>
                                </div>
                                <div class="f-group"
                                     style="display: flex;align-items: center;justify-content: space-between;margin: 20px 0">

                                    <select name="slct2" id="slct2" style="display: block;
    padding: 10px;
    border: 1px solid #d1d1d1;
    border-radius: 4px;
    width: 100%;

    text-align: left;
    color: #000;
    position: relative;  font-weight: 500;
    cursor: pointer;  background: #fff;outline: none;
">
                                        <option value="">-- Choose City --</option>
                                        <option value="TP.HCM">TPHCM</option>
                                        <option value="HaNoi">HaNoi</option>
                                    </select>
                                </div>
                            </div>
                            <input type="text" name="address" id="address" placeholder="Nhap Dia Chi Day Du ..."
                                   style="display: block;
    overflow: hidden;
    border: 1px solid #d1d1d1;
    border-radius: 4px;
    padding: 10px;
    color: #000;
    box-sizing: border-box;
    width: 100%;  font-weight: 500;
margin: 20px 0;background: #fff;
"
                                   pattern="[A-Za-z1-9_ ]{1,100}" title="Address not contain number" required
                            >
                    </c:if>
                            <button type="submit" value="Check out" style="padding: 10px 15px;  background:#4285DE;color:#fff;border: none;border-radius: 4px;
                            display: flex;align-items: center;margin-left: auto ">
                                Checkout <i class="fas fa-long-arrow-alt-right me-2" style="padding-left: 10px"></i>
                            </button>
                        </form>


                    </div>

                </c:if>
                <c:if test="${sessionScope.cart.sizeCart()==0}">
                    <div class="empty-cart" style="margin: 0 auto; width: 1200px">
                        <img src="assets/img/Empty-Cart.jpg" alt="" style="width: 100%">
                    </div>
                </c:if>
            </div>
        </div>
    </div>

    <c:if test="${sessionScope.testValue}">
        <div class ="toast-message-main" id ="toast-message-main" style="position: absolute; top: 150px ;right: 0 ;display: block ; animation: rightLeft 1.2s linear ; " >

            <div class="message-success" style="width: 200px; padding: 10px;background-color: #00cec9 ;border-radius: 5px ; position: relative">
                <div class="toast-message-desc" style="display: flex;align-items: center;justify-content: space-between">
                    <i class="fa-solid fa-check" style="    color: #4CA25C;
    border-radius: 50%;
    background-color: #fff;
    padding: 10px;
    font-weight: 600; width: 20%;"></i>
                    <p style="width: 80% ; padding-left: 15px">
                        <span style="font-size: 18px;color: #fff;
    font-weight: bold;">Success</span>

                    </p>

                </div>
                <i class="fa-solid fa-xmark" style="position: absolute; top: 5px ; right: 10px ; color: #fff;font-size: 15px"></i>
            </div>

        </div>
    </c:if>
</div>

</div>
<jsp:include page="layout/footer.jsp"/>
</div>

<script src="assets/js/HeaderFixed.js"></script>


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

<script src="assets/js/Loader.js"></script>


<script src="assets/js/OWL.js"></script>


<!-- <script src="js/wow.min.js"></script> -->
<script src="assets/js/wowjs-1/wow.min.js"></script>
<script src="assets/js/WowJS.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script>
    $(document).ready(function () {
        update_amounts();
        $('.change-quantity,.change-price').on('keyup keypress blur change', function (e) {
            update_amounts()
        })
        remove_item()

        var toastMessageMain =document.getElementById('toast-message-main')

        function  showHideToast(){
            toastMessageMain.style.display='none'

        }

        setTimeout(showHideToast,3000)

    })

    function remove_item() {
        $(".remove-cart-icon").click(function () {

            var id = $(this).attr("pid")

            itemRemove = $(this).closest("tr")

            console.log(id)
            $.ajax({
                url: "/TestJSP/RemoveCartController",
                method: "POST",
                data: {
                    id: id
                },
                success: function (data) {
                    console.log("xoa thanh cong")
                    itemRemove.remove();
                    update_amounts();

                },
                error: function (data) {

                    if (data.status === 404) {
                        alert('that bai')
                    }
                }
            })
        })
    }

    function update_amounts() {
        var sum = 0.0
        $('.tr-cart').each(function () {
            var qty = $(this).find('.change-quantity').val();
            var price = $(this).find('.change-price').val();
            console.log(qty)
            console.log(price)
            var amount = (qty * price)

            sum += amount

            var amountFormat = amount.toLocaleString('it-IT', {style: 'currency', currency: 'VND'});


            $(this).find('.change-amount').text('' + amountFormat)
        })
        var sumFormat = sum.toLocaleString('it-IT', {style: 'currency', currency: 'VND'});
        $('.change-total').text('' + sumFormat)
    }

    var incre
    var decre
    var plusBtn = $('.cart-qty-plus')
    var minusMinus = $('.cart-qty-minus')

    var incre = plusBtn.click(function () {
        var $n = $(this).parents('.button-container').find('.change-quantity')
        $n.val(Number($n.val()) + 1);
        update_amounts()
    })
    var decre = minusMinus.click(function () {
        var $n = $(this).parents('.button-container').find('.change-quantity')

        var qtyVal = Number($n.val())
        if (qtyVal > 0) {
            $n.val(qtyVal - 1)
        }
        if (qtyVal == 0) {
            alert('So Luong Phai lon hon 0')
        }
        update_amounts()
    })

    function populate(s10, s20) {
        var s1 = document.getElementById(s10)
        var s2 = document.getElementById(s20)

        s2.innerHTML = '';

        if (s1.value == 'TP.HCM') {
            var optionArray = ['quan 1|Quan 1', 'quan 3|Quan 3', 'quan 4|Quan 4', 'quan 6|Quan 6', 'quan 7|Quan 7', 'quan 8|Quan 8', 'quan 10|Quan 10', 'quan 11|Quan 11',
                'quan 12|Quan 12', 'quan thu duc|Quan Thu Duc', 'quan binh tan|Quan Binh Tan', 'quan binh thanh|Quan Binh Thanh',]
        } else if (s1.value == 'HaNoi') {
            var optionArray = ['quan hoan kiem|Quan Hoan Kiem', 'quan hoang mai|Quan Hoang Mai', 'quan long bien|Quan Nam Tu Liem', 'quan tay ho|Quan Tay Ho'
                , 'quan thanh xuan|Quan Thanh Xuan', 'quan quoc oai|Quan Quoc Oai', 'quan ba vi|Quan Ba Vi', 'quan thanh tri|Quan Thanh Tri',
                'quan chuong mi|Quan Chuong Mi', 'quan soc son|Quan Soc Son',]
        }

        for (var option in optionArray) {
            var pair = optionArray[option].split('|')

            var newOption = document.createElement('option')

            newOption.value = pair[0]

            newOption.innerHTML = pair[1]

            s2.options.add(newOption)
        }
    }

</script>
</body>
</html>
