$('.product-sale-main-slide').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    dots: false,
    autoplay: false,
    autoplayTimeout: 7000,
   


    // responsive: {
    //     0: {
    //         items: 1
    //     },
    //     600: {
    //         items: 3
    //     },
    //     1000: {
    //         items: 5
    //     }
    // }
    items : 5,
    itemsDesktop : [1199,4],
    itemsDesktopSmall : [980,3],
    itemsTablet: [768,2],
    itemsTabletSmall: false,
    itemsMobile : [479,1],
    singleItem : false,
    })
