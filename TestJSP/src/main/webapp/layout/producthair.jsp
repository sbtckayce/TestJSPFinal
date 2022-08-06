<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/6/2021
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"
           uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="grid product-hair">
    <div class="product-hair-header">
        <div class="product-hair-header-left">

            <ul class="tab-hair">
                <li class="tab-hair1 tivi-blue">
                    Điện gia dụng nổi bật
                </li>
                <li class="tab-hair2">
                    Đồ dùng gia đình nổi bật
                </li>



            </ul>
        </div>
        <div class="product-cold-header-right">
            <a href="">Xem tất cả
                <h5> 100 </h5>
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
    </div>
    <div class="product-hair-main">
        <div id="tab-dgdnb" class="product-tivi-main-slide owl-carousel owl-theme tabhair">

<%--           <jsp:useBean id="proGiaDung" scope="request" type="java.util.List"/>--%>
           <c:forEach var="dgdnb" items="${proGiaDung}">
               <div class="item wow zoomIn">
                   <div class="product-tivi-main-slide-decription">
                       <div class="installment-2">
                           <span>Trả góp 0%</span>
                       </div>
                       <div class="product-item-6">

                           <div class="product-img">
                               <img src="${dgdnb.img}" alt="">
                           </div>
                           <div class="monopoly">
                               <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                           </div>

                           <!-- </div> -->
                           <div class="discount-2">
                               <img class="discount-img-2"
                                    src="https://cdn.tgdd.vn/2020/10/content/icon4-50x50.png" alt="">
                               <span>Tặng quà ngon</span>
                           </div>
                           <div class="product-name">
                               <a href="diengiadetail?dgid=${dgdnb.id}">${dgdnb.name}</a>
                           </div>
                       </div>
                       <div class="product-status">
                           <p class="item-txt-online">${dgdnb.decription}</p>
                       </div>
                       <div class="product-price-sale">
                           <p class="price-old">${dgdnb.oldPrice}</p>
                           <span class="percent">${dgdnb.percent}</span>
                       </div>
                       <div class="product-price-new">
                           <p class="price-new">${dgdnb.newPrice}</p>
                       </div>
                       <div class="product-vote">
                           <p>
                               <i class="fas fa-star"></i>
                               <i class="fas fa-star"></i>
                               <i class="fas fa-star"></i>
                               <i class="fas fa-star star-black"></i>
                               <i class="fas fa-star star-black"></i>
                           </p>
                           <p>${dgdnb.quantity}</p>
                       </div>


                   </div>
               </div>
           </c:forEach>


        </div>
        <div id="tab-dddnb" class="product-tivi-main-slide owl-carousel owl-theme tabhair" style="display: none;">


<%--                <jsp:useBean id="proGiaDinh" scope="request" type="java.util.List"/>--%>
                <c:forEach var="dddnb" items="${proGiaDinh}">
                    <div class="item wow zoomIn">
                        <div class="product-tivi-main-slide-decription">
                            <div class="installment-2">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="product-item-6">

                                <div class="product-img">
                                    <img src="${dddnb.img}" alt="">
                                </div>
                                <div class="monopoly">
                                    <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                                </div>

                                <!-- </div> -->
                                <div class="discount-3">
                                    <img class="discount-img-3"
                                         src="https://cdn.tgdd.vn/2020/10/content/icon4-50x50.png" alt="">
                                    <span>Tặng quà ngon</span>
                                </div>
                                <div class="product-name">
                                    <a href="giadinhdetail?gdid=${dddnb.id}">${dddnb.name}</a>
                                </div>
                            </div>
                            <div class="product-status">
                                <p class="item-txt-online">${dddnb.decription}</p>
                            </div>
                            <div class="product-price-sale">
                                <p class="price-old">${dddnb.oldPrice}</p>
                                <span class="percent">${dddnb.percent}</span>
                            </div>
                            <div class="product-price-new">
                                <p class="price-new">${dddnb.newPrice}</p>
                            </div>
                            <div class="product-vote">
                                <p>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star star-black"></i>
                                    <i class="fas fa-star star-black"></i>
                                </p>
                                <p>${dddnb.quantity}</p>
                            </div>


                        </div>
                    </div>
                </c:forEach>
        </div>


    </div>
</div>

