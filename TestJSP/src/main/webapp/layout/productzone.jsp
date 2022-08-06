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
                            <p class="price-old">${pz.oldPrice} đ</p>
                            <span class="percent">${pz.percent} %</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${pz.newPrice} đ</p>
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
