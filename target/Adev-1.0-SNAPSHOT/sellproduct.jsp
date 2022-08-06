<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 12/17/2021
  Time: 12:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix = "fn"--%>
<%--           uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/reset.css">
    <link rel="stylesheet"
          href="./assets/font/fontawesome-free-5.15.4-web (1)/fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap"
          rel="stylesheet">

    <link rel="stylesheet/less" type="text/css" href="./assets/css/style.less"/>
    <script src="https://cdn.jsdelivr.net/npm/less@4.1.1"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="./assets/js/wowjs-1/animate.css">


    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <style>
        #table_id_wrapper{
            width: 1200px;
            margin: 20px auto;
        }
        #table_id_info{
            display: none;
        }
        table.dataTable thead th.sorting:after,

        table.dataTable thead th.sorting_asc:after,

        table.dataTable thead th.sorting_desc:after {

            position: absolute;

            top: 12px;

            right: 8px;

            display: block;

            font-family: "Font Awesome\ 5 Free";

        }

        table.dataTable thead th.sorting:after {

            content: "\f0dc";

            color: #ddd;

            font-size: 0.8em;

            padding-top: 0.12em;

        }

        table.dataTable thead th.sorting_asc:after {

            content: "\f0de";

        }

        table.dataTable thead th.sorting_desc:after {

            content: "\f0dd";

        }

        table.dataTable.display tbody tr:hover > .sorting_1,

        table.dataTable.order-column.hover tbody tr:hover > .sorting_1,

        /*tbody tr:hover {*/

        /*    transition: all 0.5s linear;*/
        /*    !*background-color: #4285DE !important;*!*/

        /*    color: #fff;*/

        /*}*/

        .dataTables_wrapper .dataTables_paginate .paginate_button.current,

        .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover {
            transition: all 0.5s linear;
            background: none !important;

            border-radius: 50px;

            /*background-color: #4285DE !important;*/

            /*color:#fff !important;*/

        }

        .paginate_button.current:hover

        {
            transition: all 0.5s linear;
            background: none !important;

            border-radius: 50px;

            /*background-color: #4285DE !important;*/

            color:#4285DE !important;

        }

        .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover,

        .dataTables_wrapper .dataTables_paginate .paginate_button:hover {

            border: 1px solid #979797;

            background: none !important;

            border-radius: 50px !important;

            background-color: #4285DE !important;

            color:#fff !important;
            transition: all 0.5s linear;

        }
        #table_id_paginate{
            width: 100%;
            text-align: center;
            margin: 30px auto;
        }
        .paginate_button.previous,
        .paginate_button.next{
            margin: 0 20px;
        }
        table.dataTable.display tbody tr:hover > .sorting_1, table.dataTable.order-column.hover tbody tr:hover > .sorting_1, .dataTables_wrapper .dataTables_paginate .paginate_button.current, .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover{
            border-radius: 0px;
            background: none;
        }
        .edit-action:hover{
           color:  #7ed6df !important;
        }
        .delete-action:hover{
            color: #ff7675 !important;
        }
        .add-sellpr:hover{
            color:  #fff !important;
        }
        table tbody tr:nth-child(odd){
            background: #fff !important;
        }
        table tbody tr:nth-child(even){
            background: #f5f5f5 !important;
        }
        table tbody tr:nth-child(odd) td{
            background: #fff !important;
            box-shadow: none !important;
        }
        table tbody tr:nth-child(even) td{
            background: #f5f5f5 !important;
            box-shadow: none !important;
        }
        input::placeholder{
            padding-left: 0px;
        }

    </style>
    <title>Document</title>
</head>
<body class="preloading">
<div class="loader">
        <span class="fas fa-spinner icon-load xoay">

        </span>
</div>
<div class="main">
    <jsp:include page="layout/header.jsp"/>
    <jsp:include page="layout/container.jsp"/>

    <div class="main-sellpr">
        <div class="header-decrip-sellpr" style="  width: 100%;
   margin-top: 100px;">
            <div class="header-sellpr" style="  width: 1200px;
    margin:  auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
    text-align: center;
    background-color: #3bacf0;
    border-radius: 5px;">
                <div class="header-left-sellpr">
                    <h3 style="  margin-bottom: 0;
    line-height: 60px;
    text-transform: uppercase;
    color: #fff;
    font-weight: 600;
    padding-left: 15px;">
                        Quản lí sản phẩm
                    </h3>
                </div>
                <div class="header-right-sellpr" style=" padding-right: 90px;">

                    <a href="#" class="add-sellpr" id="add-sellpr" style=" font-size: 20px;
    margin-left: 50px;
    color: #000;">
                        <i class="far fa-plus-square"></i>
                        Add
                    </a>
                </div>
            </div>
        </div>

        <table id="table_id" class="display">

            <thead>
            <tr>
                <th class="id-menu-center" style=" width: 10%; text-align: center">ID</th>
                <th  class="name-menu-center" style=" width: 50%;">Name</th>
                <th class="img-menu-center-main" style=" width: 20%; text-align: center">Image</th>
                <th class="price-menu-center-main" style="width: 10%; text-align: center">Price</th>
                <th class="action-menu-center" style=" width: 10%;">Action</th>
            </tr>
            </thead>
            <tbody>
<c:forEach var="sellpr" items="${allpro}">
            <tr style="height: 100px">
                <td class="id-menu-center-main" style=" width: 10%; text-align: center"> ${sellpr.id}</td>
                <td class="name-menu-center-main" style=" width: 50%;"> ${sellpr.name}</td>
                <td class="img-menu-center-main" style=" width: 20%; text-align: center"><img src="${sellpr.img}" alt="" style=" height: 100px; background-size: cover"></td>
                <td class="price-menu-center-main" style="width: 10%; text-align: center">${sellpr.newPrice}</td>
                <td class="action-menu-center-main" style="  width: 10%;">
                    <a href="loadproductsell?pid=${sellpr.id}" class="edit-action"  style="  color: #000;"> <i class="fas fa-pen"></i></a>
                    <a href="deleteproduct?sptid=${sellpr.id}" class="delete-action" style="  margin-left: 15px; color: #000;"><i class="far fa-trash-alt"></i></a>
                </td>
            </tr>
</c:forEach>
            </tbody>
        </table>
    </div>

    <div class="add-product-sellpr " style="   box-shadow:  0 25px 50px rgba(0,0,0,0.1),
    0 0 0 1000px rgba(255,255,255,0.95);position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 600px;height: 700px;
    z-index: 1000;">
        <form action="addsell" class="form-addpr" method="post" style="width: 600px;height: 700px; border: none ; background-color: #2f3542; color: #fff;border-radius: 10px"
       >
            <div class="header-addpr-new">
                <h4 style="text-transform: uppercase; padding: 20px 0">Add product</h4>

            </div>
            <div class="name-addpr">
                <label>Name</label>
                <input type="text" name="name" placeholder="Name :" style="padding-left: 10px">
            </div>
            <div class="linkimg-addpr">
                <label>Image</label>
                <input type="text" name="image" placeholder="Link img :" style="padding-left: 10px">
<%--                <input type="file" name="image" id="image">--%>
            </div>
            <div class="price-addpr">
                <label>Price</label>
                <input type="text" name="price" placeholder="Price :"style="padding-left: 10px">
            </div>
            <div class="decrip-addpr">
                <label>Decription</label>
                <textarea name="decription"style="padding-left: 10px"></textarea>
            </div>
            <div class="category-addpr">
                <label>Category</label>
                <select name="categoryse">
                    <c:forEach var="catesell" items="${category}">
                        <option value="${catesell.cid}">${catesell.menu}</option>

                    </c:forEach>


                </select>
            </div>
            <div class="button-addpr">
                <input type="button" class="cancel-addpr" value="Cancel" id="cancel-addpr">
                <input type="submit" class="submit-addpr" value="Add" style="background:#7ed6df ; color: #fff">
            </div>
        </form>

    </div>
    <jsp:include page="layout/footer.jsp"/>
    <script src="./assets/js/HeaderFixed.js"></script>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
            integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
            integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="./assets/js/Loader.js"></script>
    <!-- <script src="js/wow.min.js"></script> -->
    <script src="./assets/js/OWL.js"></script>

    <script src="./assets/js/wowjs-1/wow.min.js"></script>
    <script src="./assets/js/WowJS.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <%--    <script src="./assets/js/Sellpr.js"></script>--%>
    <script>
        $(document).ready(function () {

            $('#table_id').DataTable();

            var addsell = document.getElementById('add-sellpr');

            var cancel = document.getElementById('cancel-addpr');
            addsell.onclick = sellPr;
            cancel.onclick = curr;


        })
        var current = 1;

        function sellPr() {
            if (current == 1) {
                $('.add-product-sellpr').addClass('open');
                current = 2;
            } else {
                $('.add-product-sellpr').removeClass('open');
                current = 1;
            }

        }

        function curr() {
            $('.add-product-sellpr').removeClass('open');
            current = 1;

        }

    </script>


</div>
</body>
</html>
