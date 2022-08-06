
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
<div class="grid product-cold " >
    <div class="product-cold-header">
        <div class="product-cold-header-left">

            <ul class="tab-cold">

                <li class="tab-cold1 tivi-blue">
                    Máy lạnh
                </li>
                <li class="tab-cold2">
                    Tủ lạnh
                </li>
                <li class="tab-cold3">
                    Tủ đông
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
    <div class="product-cold-main">

        <div id="tab-ml" class="product-tivi-main-slide owl-carousel owl-theme tabcold"
             >
<%--            <jsp:useBean id="proMayLanh" scope="request" type="java.util.List"/>--%>
            <c:forEach var="ml" items="${proMayLanh}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-2">

                            <div class="product-img">
                                <img src="${ml.img}" alt="">
                            </div>
                            <!-- <div class="monopoly">
                                    <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                                </div> -->

                            <!-- </div> -->
                            <div class="discount-1">
                                <img class="discount-img-1"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon1-50x50.png" alt="">
                                <span>100 suất Giảm sốc</span>
                            </div>
                            <div class="product-name">
                                <a href="maylanhdetail?mlid=${ml.id}">${ml.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${ml.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <p class="price-old">${ml.oldPrice}</p>
                            <span class="percent">${ml.percent}</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${ml.newPrice}</p>
                        </div>
                        <div class="product-vote">
                            <p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star star-black"></i>
                                <i class="fas fa-star star-black"></i>
                            </p>
                            <p>${ml.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>




        </div>
        <div id="tab-tl" class="product-tivi-main-slide owl-carousel owl-theme tabcold"
             style="display: none;">
<%--            <jsp:useBean id="proTuLanh" scope="request" type="java.util.List"/>--%>
            <c:forEach var="tl" items="${proTuLanh}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-2">

                            <div class="product-img">
                                <img src="${tl.img}" alt="">
                            </div>
                            <!-- <div class="monopoly">
                                    <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                                </div> -->

                            <!-- </div> -->
                            <div class="discount-1">
                                <img class="discount-img-1"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon1-50x50.png" alt="">
                                <span>100 suất Giảm sốc</span>
                            </div>
                            <div class="product-name">
                                <a href="tulanhdetail?tlid=${tl.id}">${tl.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${tl.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <p class="price-old">${tl.oldPrice}</p>
                            <span class="percent">${tl.percent}</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${tl.newPrice}</p>
                        </div>
                        <div class="product-vote">
                            <p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star star-black"></i>
                                <i class="fas fa-star star-black"></i>
                            </p>
                            <p>${tl.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>




        </div>
        <div id="tab-td" class="product-tivi-main-slide owl-carousel owl-theme tabcold"
             style="display: none;">

<%--            <jsp:useBean id="proTuDong" scope="request" type="java.util.List"/>--%>
            <c:forEach var="td" items="${proTuDong}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-2">

                            <div class="product-img">
                                <img src="${td.img}" alt="">
                            </div>
                            <!-- <div class="monopoly">
                                    <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                                </div> -->

                            <!-- </div> -->
                            <div class="discount-1">
                                <img class="discount-img-1"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon1-50x50.png" alt="">
                                <span>100 suất Giảm sốc</span>
                            </div>
                            <div class="product-name">
                                <a href="tudongdetail?tdid=${td.id}">${td.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${td.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <p class="price-old">${td.oldPrice}</p>
                            <span class="percent">${td.percent}</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${td.newPrice}</p>
                        </div>
                        <div class="product-vote">
                            <p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star star-black"></i>
                                <i class="fas fa-star star-black"></i>
                            </p>
                            <p>${td.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>


        </div>

    </div>

</div>