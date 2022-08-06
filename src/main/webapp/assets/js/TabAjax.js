$(function () {

    loadURL('tivi.html');
    $('.tab-tivi li').click(function () {
        $('.tab-tivi li').each(function () {
            $(this).removeClass('tivi-blue');
        });
        $(this).addClass('tivi-blue');
        var _url = $(this).data('ajax');

        loadURL(_url);

    });

    loadURL('dienlanh.html');
    $('.tab-cold li').click(function () {
        $('.tab-cold li').each(function () {
            $(this).removeClass('tivi-blue');
        });
        $(this).addClass('tivi-blue');
        var _url = $(this).data('ajax');

        loadURL(_url);

    });

});

function loadURL(_url) {
    if (_url != undefined) {
        $.ajax({
            url: _url,
            method: 'get',
            type: 'html',
            success: function (response) {
                $('.product-tivi-main').html(response);
                $('.product-cold-main').html(response);
            }
            
        })
    }
}
