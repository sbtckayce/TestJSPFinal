$(document).ready(function(){
    var addsell = document.getElementById('add-sellpr');

    var cancel =document.getElementById('cancel-addpr');
    addsell.onclick=sellPr;
    cancel.onclick=curr;
})
var current=1;
function sellPr(){
    if(current==1){
        $('.add-product-sellpr').addClass('open-sell');
        current=2;
    }else{
        $('.add-product-sellpr').removeClass('open-sell');
        current=1;
    }

}
function curr(){
    $('.add-product-sellpr').removeClass('open-sell');
    current=1;

}