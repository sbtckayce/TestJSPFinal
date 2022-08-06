<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/6/2021
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<div class="header">
    <div class="header-top">
        <div class="header-top-img">
            <a href="">
                <img src="https://cdn.tgdd.vn/2021/10/banner/1200-44-1200x44-1.png" alt="">
            </a>
        </div>
    </div>
    <div class="header-second wow bounceInLeft">
        <div class="header-second-menu">
            <a href="/Adev/HomeController" class="header-second-menu-logo">
                <div></div>
            </a>
            <div class="header-second-menu-device">
                <div class="header-second-menu-device-left">
                    <div class="header-second-menu-border">
                    </div>
                    <div class="header-second-menu-address">
                        <a href="">Xem giá, tồn kho tại
                            <span>Hồ Chí Minh
                                        <i class="fas fa-caret-down"></i>
                                    </span>


                        </a>
                    </div>
                    <form action="search" class="header-second-menu-search">
                        <input type="text" placeholder="Bạn tìm gì..." name="text-search" value="${decripsearch}">
                        <button type="submit" name="button-search">
                            <i></i>
                        </button>
                    </form>
                    <a href="" class="header-second-menu-cart">
                        <i></i>
                        Giỏ Hàng
                    </a>
                    <c:if test="${sessionScope.userlogin.isSell==1}">
                        <a href="sellproduct" class="header-second-menu-history">
                            Quản lí sản phẩm
                        </a>
                    </c:if>

                    <c:if test="${sessionScope.userlogin.isAdmin==1}">
                        <a href="" class="header-second-menu-history">
                            Quản lí tài khoản
                        </a>
                    </c:if>

                    <div class="header-second-menu-border">
                    </div>
                </div>

                <div class="header-second-menu-device-right">
                    <div class="header-second-menu-list">


                        <div class="header-second-menu-border">
                        </div>
                        <c:if test="${sessionScope.userlogin==null}">

                            <a href="/Adev/signin.jsp">Đăng Nhập</a>
                        </c:if>
                        <c:if test="${sessionScope.userlogin!=null}">
                            <a href="">Hello : ${sessionScope.userlogin.username}</a>
                            <div class="header-second-menu-border">
                            </div>
                            <a href="logout">Đăng Xuất</a>
                        </c:if>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-three wow bounceInRight" data-wow-delay="1s">
        <div class="header-three-menu">
            <div class="header-three-menu-category">
                <p>Danh mục</p>
                <i class="fas fa-sort-down"></i>
                <a href="/Adev/AllProductController">Tất cả nhóm hàng</a>
            </div>
            <div class="header-three-menu-list">
                <a href="">Máy Giặt mua Online giảm đến 30%</a>
                <div class="header-three-menu-border">
                </div>
                <a href="">Quạt điều hoà giảm đến 45%</a>
                <div class="header-three-menu-border">
                </div>
                <a href="">Gia dụng Online giảm đến 49%</a>
            </div>
        </div>
    </div>
</div>
