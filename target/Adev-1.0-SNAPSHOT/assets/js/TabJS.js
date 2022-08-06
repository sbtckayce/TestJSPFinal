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
    //Nuoc
    $('.tab-water li').click(function () {
        $('.tab-water li').each(function () {
            $(this).removeClass('tivi-blue');
        });
        $(this).addClass('tivi-blue');


    });
    //Xedap
    $('.tab-bike li').click(function () {
        $('.tab-bike li').each(function () {
            $(this).removeClass('tivi-blue');
        });
        $(this).addClass('tivi-blue');


    });
    //Giadinh
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
    //Tainghe
    $('.tab-ear li').click(function () {
        $('.tab-ear li').each(function () {
            $(this).removeClass('tivi-blue');
        });
        $(this).addClass('tivi-blue');


    });
    //Dongho
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


var ml = document.querySelector('.tab-cold2');

var tl = document.querySelector('.tab-cold3');

var td = document.querySelector('.tab-cold4');


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
var mb = document.querySelector('.tab-elect2');
var mk = document.querySelector('.tab-elect3');
var dc = document.querySelector('.tab-elect4');

oa.onclick = function () {
    openTab2('tab-oa');
}
mb.onclick = function () {
    openTab2('tab-mb');
}
mk.onclick = function () {
    openTab2('tab-mk');
}
dc.onclick = function () {
    openTab2('tab-dc');
}
//Nuoc
var mln = document.querySelector('.tab-water1');
var lndg = document.querySelector('.tab-water2');
var ll = document.querySelector('.tab-water3');
var cnnl = document.querySelector('.tab-water4');

mln.onclick = function () {
    openTab3('tab-mln');
}
lndg.onclick = function () {
    openTab3('tab-lndg');
}
ll.onclick = function () {
    openTab3('tab-ll');
}
cnnl.onclick = function () {
    openTab3('tab-cnnl');
}
//Xedap
var xdnb = document.querySelector('.tab-bike1');
var xddh = document.querySelector('.tab-bike2');
var xdte = document.querySelector('.tab-bike3');
var plxd = document.querySelector('.tab-bike4');

xdnb.onclick = function () {
    openTab4('tab-xdnb');
}
xddh.onclick = function () {
    openTab4('tab-xddh');
}
xdte.onclick = function () {
    openTab4('tab-xdte');
}
plxd.onclick = function () {
    openTab4('tab-pkxd');
}
//Gia dinh
var dgdnb = document.querySelector('.tab-hair1');
var dddnb = document.querySelector('.tab-hair2');

dgdnb.onclick = function () {
    openTab5('tab-dgdnb');
}
dddnb.onclick = function () {
    openTab5('tab-dddnb');
}
//Dienthoai
var dt = document.querySelector('.tab-phone1');
var lt = document.querySelector('.tab-phone2');
var tbl = document.querySelector('.tab-phone3');

dt.onclick = function () {
    openTab6('tab-dt');
}
lt.onclick = function () {
    openTab6('tab-lt');
}
tbl.onclick = function () {
    openTab6('tab-tbl');
}

//Tainghe
var tn = document.querySelector('.tab-ear1');
var psdp = document.querySelector('.tab-ear2');
var sc = document.querySelector('.tab-ear3');
tn.onclick = function () {
    openTab7('tab-tn');
}
psdp.onclick = function () {
    openTab7('tab-psdp');
}
sc.onclick = function () {
    openTab7('tab-sc');
}

//Dongho
var dhtm = document.querySelector('.tab-watch1');
var dhn = document.querySelector('.tab-watch2');
var dhnu = document.querySelector('.tab-watch3');
var dhte = document.querySelector('.tab-watch4');

dhtm.onclick = function () {
    openTab8('tab-dhtm');
}
dhn.onclick = function () {
    openTab8('tab-dhn');
}
dhnu.onclick = function () {
    openTab8('tab-dhnu');
}
dhte.onclick = function () {
    openTab8('tab-dhte');
}


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
function openTab3(tabName) {

    var x = document.getElementsByClassName('tabwater');
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
};
function openTab4(tabName) {

    var x = document.getElementsByClassName('tabbike');
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
};
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
function openTab7(tabName) {

    var x = document.getElementsByClassName('tabear');
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
};
function openTab8(tabName) {

    var x = document.getElementsByClassName('tabwatch');
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
};

var xemthem = document.querySelector('.xemthem');

xemthem.onclick=function(){
    var showxemthem=document.querySelector('.show-xemthem');
    showxemthem.classList.add('open');
  $('.xemthem').html('');
}