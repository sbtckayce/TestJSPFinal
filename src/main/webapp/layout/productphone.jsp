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
<div class="grid product-phone">
    <div class="product-phone-header">
        <div class="product-phone-header-left">

            <ul class="tab-phone">
                <li class="tab-phone1 tivi-blue">
                    Điện thoại
                </li>
                <li class="tab-phone2">
                    Laptop
                </li>
                <li class="tab-phone3">
                    Tablet
                </li>
                <li class="tab-phone4">
                    Tai nghe
                </li>



            </ul>
        </div>
        <div class="product-cold-header-right">
            <a href="">Xem tất cả
                <h5> 160 </h5>
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
    </div>
    <div class="product-phone-main">
        <div id="tab-dt" class="product-tivi-main-slide owl-carousel owl-theme tabphone">

<%--           <jsp:useBean id="proDienThoai" scope="request" type="java.util.List"/>--%>
           <c:forEach var="dt" items="${proDienThoai}">
               <div class="item wow zoomIn">
                   <div class="product-tivi-main-slide-decription">
                       <div class="installment-2">
                           <span>Trả góp 0%</span>
                       </div>
                       <div class="product-item-7">

                           <div class="product-img">
                               <img src="${dt.img}" alt="">
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
                               <a href="dienthoaidetail?dtid=${dt.id}">${dt.name}</a>
                           </div>
                       </div>
                       <div class="product-status">
                           <p class="item-txt-online">${dt.decription}</p>
                       </div>
                       <div class="product-price-sale">
                           <input type="text" class="input-old-price-new" value="${dt.oldPrice}" style="display: none">
                           <p class="price-old price-old-new"></p>
                           <span class="percent">${dt.percent}%</span>
                       </div>
                       <div class="product-price-new">
                           <input type="text" class="input-new-price-new" value="${dt.newPrice}" style="display: none">
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
                           <p>${dt.quantity}</p>
                       </div>


                   </div>
               </div>
           </c:forEach>


        </div>
        <div id="tab-lt" class="product-tivi-main-slide owl-carousel owl-theme tabphone" style="display: none;">

<%--            <jsp:useBean id="proLaptop" scope="request" type="java.util.List"/>--%>
            <c:forEach var="ltp" items="${proLaptop}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-7">

                            <div class="product-img">
                                <img src="${ltp.img}" alt="">
                            </div>
                            <div class="monopoly">
                                <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                            </div>

                            <!-- </div> -->
                            <div class="discount-3">
                                <img class="discount-img-3"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon4-50x50.png" alt="">
                                <span>Hot Sale Gaming</span>
                            </div>
                            <div class="product-name">
                                <a href="laptopdetail?ltid=${ltp.id}">${ltp.name}</a>
                            </div>
                        </div>
                        <div class="product-compare">
                            <span>${ltp.compare1}</span>
                            <span>${ltp.compare2}</span>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${ltp.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <input type="text" class="input-old-price-new" value="${ltp.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${ltp.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${ltp.newPrice}" style="display: none">
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
                            <p>${ltp.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>
        </div>
        <div id="tab-tbl" class="product-tivi-main-slide owl-carousel owl-theme tabphone" style="display: none;">

<%--            <jsp:useBean id="proTablet" scope="request" type="java.util.List"/>--%>
            <c:forEach var="tbl" items="${proTablet}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-7">

                            <div class="product-img">
                                <img src="${tbl.img}" alt="">
                            </div>
                            <div class="monopoly">
                                <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                            </div>

                            <!-- </div> -->
                            <div class="discount-3">
                                <img class="discount-img-3"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon4-50x50.png" alt="">
                                <span>Tặng quà</span>
                            </div>
                            <div class="product-name">
                                <a href="tabletdetail?tbid=${tbl.id}">${tbl.name}</a>
                            </div>
                        </div>
                         <div class="product-status">
                                <p class="item-txt-online">${tbl.decription}</p>
                            </div>
                        <div class="product-price-sale">
                            <input type="text" class="input-old-price-new" value="${tbl.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${tbl.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${tbl.newPrice}" style="display: none">
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
                            <p>${tbl.quantity}</p>
                        </div>


                    </div>
                </div>
            </c:forEach>
        </div>
        <div id="tab-tn" class="product-tivi-main-slide owl-carousel owl-theme tabphone" style="display: none;">

            <%--            <jsp:useBean id="proTaiNghe" scope="request" type="java.util.List"/>--%>
            <c:forEach var="tn" items="${proTaiNghe}">
                <div class="item wow zoomIn">
                    <div class="product-tivi-main-slide-decription">
                        <div class="installment-2">
                            <span>Trả góp 0%</span>
                        </div>
                        <div class="product-item-8">

                            <div class="product-img">
                                <img src="${tn.img}" alt="">
                            </div>
                            <div class="monopoly">
                                <img src="https://cdn.tgdd.vn/ValueIcons/Label_01-05.png" alt="">
                            </div>

                            <!-- </div> -->
                            <div class="discount-2">
                                <img class="discount-img-2"
                                     src="https://cdn.tgdd.vn/2020/10/content/icon4-50x50.png" alt="">
                                <span>Cuối tuần giảm giá</span>
                            </div>
                            <div class="product-name">
                                <a href="tainghedetail?tnid=${tn.id}">${tn.name}</a>
                            </div>
                        </div>
                        <div class="product-status">
                            <p class="item-txt-online">${tn.decription}</p>
                        </div>
                        <div class="product-price-sale">
                            <input type="text" class="input-old-price-new" value="${tn.oldPrice}" style="display: none">
                            <p class="price-old price-old-new"></p>
                            <span class="percent">${tn.percent}%</span>
                        </div>
                        <div class="product-price-new">
                            <input type="text" class="input-new-price-new" value="${tn.newPrice}" style="display: none">
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
                            <p>${tn.quantity}</p>
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