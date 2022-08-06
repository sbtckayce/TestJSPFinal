<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/6/2021
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <div class="grid container-top">
        <div class="grid-row container-top-menu">
            <div class="container-top-menu-list">
                <ul>

                    <c:forEach var="cate" items="${category}">
                        <li style=" padding-bottom: 2px;
    padding-right: 10px;
    padding-left: 10px;
    padding-top: 4px;">
                            <div>
                                <img src="${cate.img}" alt="" class="icon-category"
                                     style="max-width: 20px;padding: -1px 10px">
                                <a href="category?cid=${cate.cid}"
                                   class="text-black ${tag==cate.cid ?"category-active":""}">${cate.menu}</a>

                            </div>


                        </li>
                    </c:forEach>


                </ul>
            </div>
            <div class="container-top-menu-slide">
                <div class="container-top-menu-slide-top">
                    <div id="sync1" class="slide-top owl-carousel owl-theme">
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/10/banner/690-300-690x300-12.png" alt=""
                                 class="img-slider-run">
                        </div>
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/10/banner/690-300-690x300-14.png" alt=""
                                 class="img-slider-run">
                        </div>
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/10/banner/690x300-690x300.jpg" alt=""
                                 class="img-slider-run">
                        </div>
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/09/banner/690-300-690x300-30.png" alt=""
                                 class="img-slider-run">
                        </div>
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/09/banner/690-300-690x300-32.png" alt=""
                                 class="img-slider-run">
                        </div>
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/10/banner/690-300-690x300-8.png" alt=""
                                 class="img-slider-run">
                        </div>
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/10/banner/690-300-690x300-1.jpg" alt=""
                                 class="img-slider-run">
                        </div>
                        <div class="item slide-top-img">
                            <img src="https://cdn.tgdd.vn/2021/08/banner/690-300-690x300-26.png" alt=""
                                 class="img-slider-run">
                        </div>

                    </div>
                </div>
                <div class="container-top-menu-slide-bot" style=" margin-top: 18px;">
                    <div id="sync2" class="owl-carousel owl-theme item-slide">
                        <div class="item"><a href="#">Mua máy lạnh
                            giảm 9-15%
                        </a></div>

                        <div class="item"><a href="#">Mua
                            Đồ bếp giảm đến 49%
                        </a></div>
                        <div class="item"><a href="#">Mua Tivi SamSung
                            giảm đến 10 triệu
                        </a></div>
                        <div class="item"><a href="#">Máy lọc nước
                            giảm đến 30%
                        </a></div>

                        <div class="item"><a href="#">Mua tủ lạnh giảm
                            sốc đến 25%
                        </a></div>
                        <div class="item"><a href="#">Mừng hết cách ngăn
                            giảm 2 lần
                        </a></div>
                        <div class="item"><a href="#">Xe đạp giảm sốc
                            đến 15%
                        </a></div>
                        <div class="item"><a href="#">Có giặt có sấy có quà

                        </a></div>
                    </div>
                </div>


            </div>
            <div class="container-top-menu-img">
                <div class="container-top-menu-img-top">
                    <a href="">
                        <img src="https://cdn.tgdd.vn/2021/06/banner/Default-TV-254x254.png" alt="">
                    </a>
                    <a href="">
                        <img src="https://cdn.tgdd.vn/2021/09/banner/Docquyen30-254x254.png" alt="">
                    </a>
                </div>
                <div class="container-top-menu-img-mid">
                    <a href="">
                        <img src="https://cdn.tgdd.vn/2021/08/banner/GD-254x254-2.png" alt="">
                    </a>
                    <a href="">
                        <img src="https://cdn.tgdd.vn/2021/10/banner/Giadu%CC%A3nglo%CC%9B%CC%81n(1)-254x254.png"
                             alt="">
                    </a>
                </div>
                <div class="container-top-menu-img-bot">
                    <a href="">
                        <img src="https://cdn.tgdd.vn/2021/08/banner/bannermatbang262x96-524x192-3.jpg" alt=""
                             style="height: 124px">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
