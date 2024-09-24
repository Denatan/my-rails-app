import 'slick-carousel'
$(document).on('turbolinks:load', function() {

    $('.image-slider').slick({
        dots: true,
        infinite: true,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1
    });
});