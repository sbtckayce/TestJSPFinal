
<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/6/2021
  Time: 12:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<div class="grid product-electric">
    <div class="product-electric-header">
        <div class="product-electric-header-left">

            <ul class="tab-elect">
                <li class="tab-elect1 tivi-blue">
                    Ổn áp
                </li>
                <li class="tab-elect2">
                   Máy lọc nước
                </li>



            </ul>
        </div>
        <div class="product-cold-header-right">
            <a href="">Xem tất cả
                <h5> 150 </h5>
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
    </div>
    <div class="product-electric-main">
        <div id="tab-oa" class="product-tivi-main-slide owl-carousel owl-theme tabelect">
<%--            <jsp:useBean id="proOnAp" scope="request" type="java.util.List"/>--%>
            <c:forEach var="oa" items="${proOnAp}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-3">

                            <div class="product-img">
                                <img src="${oa.img}" alt="">
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
                                <a href="onapdetail?oaid=${oa.id}">${oa.name}</a>
                            </div>
                        </div>
                        <div class="product-compare">
                            <span>Không kèm phụ kiện</span>
                            <span>Dùng điện</span>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${oa.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <p class="price-old">${oa.oldPrice}</p>
                            <span class="percent">${oa.percent}</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${oa.newPrice}</p>
                        </div>
                        <div class="product-vote">
                            <p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star star-black"></i>
                                <i class="fas fa-star star-black"></i>
                            </p>
                            <p>${oa.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>



        </div>

        <div id="tab-mln" class="product-tivi-main-slide owl-carousel owl-theme tabelect" style="display: none;">
            <%--            <jsp:useBean id="proMayLocNuoc" scope="request" type="java.util.List"/>--%>
            <c:forEach var="mln" items="${proMayLocNuoc}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-4">

                            <div class="product-img">
                                <img src="${mln.img}" alt="">
                            </div>
                            <div class="monopoly">
                                <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                            </div>

                            <!-- </div> -->
                            <div class="discount-2">
                                <img class="discount-img-2"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon5-50x50.png" alt="">
                                <span>100 suất Giảm sốc</span>
                            </div>
                            <div class="product-name">
                                <a href="maylocnuocdetail?mlnid=${mln.id}">${mln.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${mln.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <p class="price-old">${mln.oldPrice}</p>
                            <span class="percent">${mln.percent}</span>
                        </div>
                        <div class="product-price-new">
                            <p class="price-new">${mln.newPrice}</p>
                        </div>
                        <div class="product-vote">
                            <p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star star-black"></i>
                                <i class="fas fa-star star-black"></i>
                            </p>
                            <p>${mln.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>


        </div>


</div>
</div>