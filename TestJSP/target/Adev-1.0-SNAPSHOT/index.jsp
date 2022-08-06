<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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

    <title>TestDocument</title>
</head>

<body class="preloading">

<div class="loader">
        <span class="fas fa-spinner icon-load xoay">

        </span>
</div>
<div class="main">
    <jsp:include page="layout/header.jsp"/>
    <jsp:include page="layout/container.jsp"/>

    <div class="product">
        <jsp:include page="layout/productsale.jsp"/>
        <jsp:include page="layout/productzone.jsp"/>
        <jsp:include page="layout/producttivi.jsp"/>
        <jsp:include page="layout/productcold.jsp"/>
        <jsp:include page="layout/productelectric.jsp"/>

        <jsp:include page="layout/producthair.jsp"/>
        <jsp:include page="layout/productphone.jsp"/>

        <jsp:include page="layout/productwatch.jsp"/>
    </div>
    <jsp:include page="layout/trademark.jsp"/>
    <jsp:include page="layout/footer.jsp"/>

</div>

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
<script src="./assets/js/ProductSale.js">
</script>

<script src="./assets/js/OWL.js"></script>
<script src="./assets/js/ProductTivi.js"></script>
<%--<script src="./assets/js/TabJS.js"></script>--%>


<!-- <script src="js/wow.min.js"></script> -->
<script src="./assets/js/wowjs-1/wow.min.js"></script>
<script src="./assets/js/WowJS.js"></script>
<script>
    $(function () {

        //Tivi
        $('.tab-tivi li').click(function () {
            $('.tab-tivi li').each(function () {
                $(this).removeClass('tivi-blue');
            });
            $(this).addClass('tivi-blue');

            //Maylanh
        });
        $('.tab-cold li').click(function () {
            $('.tab-cold li').each(function () {
                $(this).removeClass('tivi-blue');
            });
            $(this).addClass('tivi-blue');

            //Dien
        });
        $('.tab-elect li').click(function () {
            $('.tab-elect li').each(function () {
                $(this).removeClass('tivi-blue');
            });
            $(this).addClass('tivi-blue');


        });
        // //Nuoc
        // $('.tab-water li').click(function () {
        //     $('.tab-water li').each(function () {
        //         $(this).removeClass('tivi-blue');
        //     });
        //     $(this).addClass('tivi-blue');
        //
        //
        // });
        // //Xedap
        // $('.tab-bike li').click(function () {
        //     $('.tab-bike li').each(function () {
        //         $(this).removeClass('tivi-blue');
        //     });
        //     $(this).addClass('tivi-blue');
        //
        //
        // });
        // //Giadinh
        $('.tab-hair li').click(function () {
            $('.tab-hair li').each(function () {
                $(this).removeClass('tivi-blue');
            });
            $(this).addClass('tivi-blue');


        });
        //Dienthoai
        $('.tab-phone li').click(function () {
            $('.tab-phone li').each(function () {
                $(this).removeClass('tivi-blue');
            });
            $(this).addClass('tivi-blue');


        });
        // //Tainghe
        // $('.tab-ear li').click(function () {
        //     $('.tab-ear li').each(function () {
        //         $(this).removeClass('tivi-blue');
        //     });
        //     $(this).addClass('tivi-blue');
        //
        //
        // });
        // //Dongho
        $('.tab-watch li').click(function () {
            $('.tab-watch li').each(function () {
                $(this).removeClass('tivi-blue');
            });
            $(this).addClass('tivi-blue');


        });

    });
    //Tivi
    var tivi = document.querySelector('.tab-tivi1');

    var loa = document.querySelector('.tab-tivi2');

    tivi.onclick = function () {

        openTab('tab-tivi');
    }
    loa.onclick = function () {

        openTab('tab-loa');
    }
    //Maylanh


    var ml = document.querySelector('.tab-cold1');

    var tl = document.querySelector('.tab-cold2');

    var td = document.querySelector('.tab-cold3');


    ml.onclick = function () {
        openTab1('tab-ml');
    }
    tl.onclick = function () {
        openTab1('tab-tl');
    }
    td.onclick = function () {
        openTab1('tab-td');
    }

    //Dien
    var oa = document.querySelector('.tab-elect1');
    var mln = document.querySelector('.tab-elect2');
    //
    oa.onclick = function () {
        openTab2('tab-oa');
    }
    mln.onclick = function () {
        openTab2('tab-mln');
    }

    // //Nuoc

    // var lndg = document.querySelector('.tab-water2');
    // var ll = document.querySelector('.tab-water3');
    // var cnnl = document.querySelector('.tab-water4');
    //
    // mln.onclick = function () {
    //     openTab3('tab-mln');
    // }
    // lndg.onclick = function () {
    //     openTab3('tab-lndg');
    // }
    // ll.onclick = function () {
    //     openTab3('tab-ll');
    // }
    // cnnl.onclick = function () {
    //     openTab3('tab-cnnl');
    // }
    // //Xedap
    // var xdnb = document.querySelector('.tab-bike1');
    // var xddh = document.querySelector('.tab-bike2');
    // var xdte = document.querySelector('.tab-bike3');
    // var plxd = document.querySelector('.tab-bike4');
    //
    // xdnb.onclick = function () {
    //     openTab4('tab-xdnb');
    // }
    // xddh.onclick = function () {
    //     openTab4('tab-xddh');
    // }
    // xdte.onclick = function () {
    //     openTab4('tab-xdte');
    // }
    // plxd.onclick = function () {
    //     openTab4('tab-pkxd');
    // }
    //Gia dinh
    var dgdnb = document.querySelector('.tab-hair1');
    var dddnb = document.querySelector('.tab-hair2');

    dgdnb.onclick = function () {
        openTab5('tab-dgdnb');
    }
    dddnb.onclick = function () {
        openTab5('tab-dddnb');
    }
    // //Dienthoai
    var dt = document.querySelector('.tab-phone1');
    var lt = document.querySelector('.tab-phone2');
    var tbl = document.querySelector('.tab-phone3');
    var tn = document.querySelector('.tab-phone4');
    dt.onclick = function () {
        openTab6('tab-dt');
    }
    lt.onclick = function () {
        openTab6('tab-lt');
    }
    tbl.onclick = function () {
        openTab6('tab-tbl');
    }
    tn.onclick = function () {
        openTab6('tab-tn');
    }
    //
    // //Tainghe
    // var tn = document.querySelector('.tab-ear1');
    // var psdp = document.querySelector('.tab-ear2');
    // var sc = document.querySelector('.tab-ear3');
    // tn.onclick = function () {
    //     openTab7('tab-tn');
    // }
    // psdp.onclick = function () {
    //     openTab7('tab-psdp');
    // }
    // sc.onclick = function () {
    //     openTab7('tab-sc');
    // }
    //
    // //Dongho

    var dhn = document.querySelector('.tab-watch1');
    var dhnu = document.querySelector('.tab-watch2');

    //
    // dhtm.onclick = function () {
    //     openTab8('tab-dhtm');
    // }
    dhn.onclick = function () {
        openTab8('tab-dhn');
    }
    dhnu.onclick = function () {
        openTab8('tab-dhnu');
    }
    // dhte.onclick = function () {
    //     openTab8('tab-dhte');
    // }


    //
    function openTab(tabName) {

        var x = document.getElementsByClassName('tabtivi');
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(tabName).style.display = "block";
    };

    function openTab1(tabName) {

        var x = document.getElementsByClassName('tabcold');
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(tabName).style.display = "block";
    };

    function openTab2(tabName) {

        var x = document.getElementsByClassName('tabelect');
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(tabName).style.display = "block";
    };
    // function openTab3(tabName) {
    //
    //     var x = document.getElementsByClassName('tabwater');
    //     for (var i = 0; i < x.length; i++) {
    //         x[i].style.display = "none";
    //     }
    //     document.getElementById(tabName).style.display = "block";
    // };
    // function openTab4(tabName) {
    //
    //     var x = document.getElementsByClassName('tabbike');
    //     for (var i = 0; i < x.length; i++) {
    //         x[i].style.display = "none";
    //     }
    //     document.getElementById(tabName).style.display = "block";
    // };
    function openTab5(tabName) {

        var x = document.getElementsByClassName('tabhair');
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(tabName).style.display = "block";
    };

    function openTab6(tabName) {

        var x = document.getElementsByClassName('tabphone');
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(tabName).style.display = "block";
    };
    // function openTab7(tabName) {
    //
    //     var x = document.getElementsByClassName('tabear');
    //     for (var i = 0; i < x.length; i++) {
    //         x[i].style.display = "none";
    //     }
    //     document.getElementById(tabName).style.display = "block";
    // };
    function openTab8(tabName) {

        var x = document.getElementsByClassName('tabwatch');
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(tabName).style.display = "block";
    };
    //
    var xemthem = document.querySelector('.xemthem');

    xemthem.onclick=function(){
        var showxemthem=document.querySelector('.show-xemthem');
        showxemthem.classList.add('open');
        $('.xemthem').html('');
    }
</script>
</body>
</html>