
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
                            <input type="text" class="input-old-price-new" value="${ml.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${ml.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${ml.newPrice}" style="display: none">
                            <p class="price-new price-new-new">${ml.newPrice}</p>
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
                            <input type="text" class="input-old-price-new" value="${tl.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${tl.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${tl.newPrice}" style="display: none">
                            <p class="price-new price-new-new"></p>
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
                            <input type="text" class="input-old-price-new" value="${td.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${td.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${td.newPrice}" style="display: none">

                            <p class="price-new price-new-new"></p>
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
<script>
    function currencyVNDOld(){
        var inputOldPrice = document.querySelectorAll('.input-old-price-new')
        var priceOld = document.querySelectorAll('.price-old-new')
        var x

        for(var i=0;i<priceOld.length;i++){
            for(var j =0;j<inputOldPrice.length;j++){
                x = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(inputOldPrice[i].value);

                priceOld[i].innerHTML=x
            }

        }

        console.log('currency tivi')
    }
    function currenctVNDNew(){
        var inputNewPrice = document.querySelectorAll('.input-new-price-new')
        var priceNew = document.querySelectorAll('.price-new-new')
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