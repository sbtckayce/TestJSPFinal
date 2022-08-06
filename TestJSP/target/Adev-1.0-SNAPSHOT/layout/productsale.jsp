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
                            <p class="price-old">${ps.oldPrice}</p>
                            <span class="percent">${ps.percent}</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${ps.newPrice}</p>
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
