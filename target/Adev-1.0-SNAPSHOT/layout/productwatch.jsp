<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/6/2021
  Time: 12:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"
           uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="grid product-watch" >
    <div class="product-watch-header">
        <div class="product-watch-header-left">

            <ul class="tab-watch">
                <li class="tab-watch1 tivi-blue">
                    Đồng hồ nam
                </li>
                <li class="tab-watch2">
                    Đồng hồ nữ
                </li>



            </ul>
        </div>
        <div class="product-cold-header-right">
            <a href="">Xem tất cả
                <h5> 140 </h5>
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
    </div>
    <div class="product-electric-main">

        <div id="tab-dhn" class="product-tivi-main-slide owl-carousel owl-theme tabwatch"
           >

<%--            <jsp:useBean id="proDHNam" scope="request" type="java.util.List"/>--%>
            <c:forEach var="dhn" items="${proDHNam}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-9">

                            <div class="product-img">
                                <img src="${dhn.img}" alt="">
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
                                <a href="dhnamdetail?dhnid=${dhn.id}">${dhn.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${dhn.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <input type="text" class="input-old-price-new" value="${dhn.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${dhn.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${dhn.newPrice}" style="display: none">
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
                            <p>${dhn.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>
        </div>
        <div id="tab-dhnu" class="product-tivi-main-slide owl-carousel owl-theme tabwatch"
             style="display: none;">

<%--            <jsp:useBean id="proDHNu" scope="request" type="java.util.List"/>--%>
            <c:forEach var="dhnu" items="${proDHNu}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-9">

                            <div class="product-img">
                                <img src="${dhnu.img}" alt="">
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
                                <a href="dhnudetail?dhnuid=${dhnu.id}">${dhnu.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${dhnu.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <input type="text" class="input-old-price-new" value="${dhnu.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${dhnu.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${dhnu.newPrice}" style="display: none">
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
                            <p>${dhnu.quantity}</p>
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