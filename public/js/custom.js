$(document).ready(function() {
    $('.feedback-slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2500,
        arrows: false,
        dots: true
    });

    var widthOffsetLeft = $('.navbar>.container').offset().left + 15;
    var navbarHeight = $('.navbar').outerHeight();
    $('.width-offset-left').css('width',''+widthOffsetLeft+'px');
    $('.width-offset-left').css('height',''+navbarHeight+'px');
    var searchCartMobile = $('.navbar-item-right').html();
    $('.search-cart-mobile').append(searchCartMobile);
    console.log(widthOffsetLeft);
})