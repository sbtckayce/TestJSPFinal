
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
<div class="grid product-tivi">
    <div class="product-tivi-header">
        <div class="product-tivi-header-left">



            <ul class="tab-tivi">
                <li class="tab-tivi1 tivi-blue">
                    Tivi
                </li>
                <li class="tab-tivi2">
                    Loa karaoke , dàn âm thanh
                </li>
            </ul>
        </div>
        <div class="product-tivi-header-right">
            <a href="">Xem tất cả
                <h5> 275 </h5>
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
    </div>
    <div class="product-tivi-main">

        <!-- <div class="product-tivi-main-slide owl-carousel owl-theme">

            </div> -->
        <div id="tab-tivi" class="product-tivi-main-slide owl-carousel owl-theme tabtivi">

<%--           <jsp:useBean id="protivi" scope="request" type="java.util.List"/>--%>
           <c:forEach var="tv" items="${proTivi}">
               <div class="item wow zoomIn">
                   <div class="product-tivi-main-slide-decription">
                       <div class="installment-2">
                           <span>Trả góp 0%</span>
                       </div>
                       <div class="product-item-1">

                           <div class="product-img">
                               <img src="${tv.img}" alt="">
                           </div>
                           <div class="monopoly">
                               <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                           </div>

                           <!-- </div> -->
                           <div class="discount-1">
                               <img class="discount-img-1"
                                    src="https://cdn.tgdd.vn/2020/10/content/icon1-50x50.png" alt="">
                               <span>100 suất Giảm sốc</span>
                           </div>
                           <div class="product-name">
                               <a href="tividetail?tid=${tv.id}">${tv.name}</a>
                           </div>
                       </div>
                       <div class="product-status">
                           <p class="item-txt-online">${tv.decription}</p>
                       </div>
                       <div class="product-price-sale">
                           <p class="price-old">${tv.oldPrice}</p>
                           <span class="percent">${tv.percent}</span>
                       </div>
                       <div class="product-price-new">
                           <p class="price-new">${tv.newPrice}</p>
                       </div>
                       <div class="product-vote">
                           <p>
                               <i class="fas fa-star"></i>
                               <i class="fas fa-star"></i>
                               <i class="fas fa-star"></i>
                               <i class="fas fa-star"></i>
                               <i class="fas fa-star"></i>
                           </p>
                           <p>${tv.quantity}</p>
                       </div>


                   </div>
               </div>
           </c:forEach>
        </div>
        <div id="tab-loa" class="product-tivi-main-slide owl-carousel owl-theme tabtivi"
             style="display: none;">
<%--            <jsp:useBean id="proloa" scope="request" type="java.util.List"/>--%>
            <c:forEach var="pl" items="${proLoa}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-1">

                            <div class="product-img">
                                <img src="${pl.img}" alt="">
                            </div>
                            <div class="monopoly">
                                <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                            </div>

                            <!-- </div> -->
                            <div class="discount-1">
                                <img class="discount-img-1"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon1-50x50.png" alt="">
                                <span>100 suất Giảm sốc</span>
                            </div>
                            <div class="product-name">
                                <a href="loadetail?lid=${pl.id}">${pl.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${pl.decription}̉</p>
                        </div>
                        <div class="product-price-sale">
                            <p class="price-old">${pl.oldPrice}</p>
                            <span class="percent">${pl.percent}</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${pl.newPrice}</p>
                        </div>
                        <div class="product-vote">
                            <p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </p>
                            <p>${pl.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>


        </div>

    </div>

</div>
