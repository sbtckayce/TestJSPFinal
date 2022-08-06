function currencyVNDOld(){
    var inputOldPrice = document.querySelectorAll('.input-old-price')
    var priceOld = document.querySelectorAll('.price-old')
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
    var inputNewPrice = document.querySelectorAll('.input-new-price')
    var priceNew = document.querySelectorAll('.price-new')
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