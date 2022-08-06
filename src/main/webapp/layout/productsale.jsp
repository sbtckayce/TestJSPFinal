<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/6/2021
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<div class="grid product-sale">
    <div class="product-sale-header">
        <img src="https://cdn.tgdd.vn/mwgcart/mwgcore/ContentMwg/images/halloween/san_sale_desktop.png"
             alt="">
    </div>
    <div class="product-sale-main">
        <div class="product-sale-main-slide owl-carousel owl-theme">


         
          
<%--            <jsp:useBean id="sale" scope="request" type="java.util.List"/>--%>
            <c:forEach var="ps" items="${proSale}">
                <div class="item wow zoomIn" data-wow-delay="1s">
                    <div class="product-sale-main-slide-decription">
                        <div class="installment">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item">

                            <div class="product-img">
                                <img src="${ps.img}"
                                     alt="">
                            </div>
                            <div class="monopoly">
                                <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                            </div>

                            <!-- </div> -->
                            <div class="discount">
                                <img class="discount-img" src="./assets/img/discount.png"
                                     alt="">
                                <span>Giảm sốc</span>
                            </div>
                            <div class="product-name">
                                <a href="saledetail?sid=${ps.id}">${ps.name}</a>
                            </div>
                        </div>
                        <div class="product-compare">
                            <span>${ps.compare1}</span>
                            <span>${ps.compare2}</span>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${ps.decription}</p>
                        </div>
                        <div class="product-price-sale">

                            <input type="text" class="input-old-price" value="${ps.oldPrice}" style="display: none">

                            <p class="price-old"></p>
                            <span class="percent">${ps.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price" value="${ps.newPrice}" style="display: none">
                            <p class="price-new"></p>
                        </div>
                        <div class="product-vote">
                            <p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </p>
                            <p>${ps.quantity}</p>
                        </div>


                    </div>
                </div>

            </c:forEach>

           



        </div>
    </div>
</div>
<script>
    function currencyVNDOld(){
        var inputOldPrice = document.querySelectorAll('.input-old-price')
        var priceOld = document.querySelectorAll('.price-old')
        var x

        for(var i=0;i<priceOld.length;i++){
            for(var j =0;j<inputOldPrice.length;j++){
                x = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(inputOldPrice[i].value);

                priceOld[i].innerHTML=x
            }

        }

        console.log('currency vnd')
    }
    function currenctVNDNew(){
        var inputNewPrice = document.querySelectorAll('.input-new-price')
        var priceNew = document.querySelectorAll('.price-new')
        var y
        for(var a =0 ;a<priceNew.length;a++){
            for(var b=0;b<inputNewPrice.length;b++){
                y = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(inputNewPrice[a].value);
                priceNew[a].innerHTML=y
            }
        }
    }
    currencyVNDOld()
    currenctVNDNew()
</script>