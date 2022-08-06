<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/6/2021
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<div class="grid product-zone  wow bounce" data-wow-delay="2s">
    <div class="product-zone-header">
        <img src="./assets/img/zone/bg.png"
             alt="">
    </div>
    <div class="product-zone-main">
        <div class="product-sale-main-slide owl-carousel owl-theme">
<%--            <jsp:useBean id="proZone" scope="request" type="java.util.List"/>--%>
            <c:forEach var="pz" items="${proZone}">
                <div class="item wow zoomIn" data-wow-delay="1s">
                    <div class="product-zone-main-slide-decription">
                        <div class="installment">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item">

                            <div class="product-img">
                                <img src="${pz.img}"
                                     alt="">
                            </div>
                            <div class="monopoly">
                                <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                            </div>

                            <!-- </div> -->
                            <div class="discount">
                                <img class="discount-img" src="https://cdn.tgdd.vn/2020/10/content/icon1-50x50.png"
                                     alt="">
                                <span>Giảm sốc</span>
                            </div>
                            <div class="product-name">
                                <a href="zonedetail?zid=${pz.id}">${pz.name}</a>
                            </div>
                        </div>
<%--                        <div class="product-compare">--%>
<%--                            <span>${pz.compare1}</span>--%>
<%--                            <span>${pz.compare2}</span>--%>
<%--                        </div>--%>
                        <div class="product-status">
                            <p class="item-txt-online">${pz.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <input type="text" class="input-old-price" value="${pz.oldPrice}" style="display: none">
                            <p class="price-old"></p>
                            <span class="percent">${pz.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price" value="${pz.newPrice}" style="display: none">
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
                            <p>${pz.quantity}</p>
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