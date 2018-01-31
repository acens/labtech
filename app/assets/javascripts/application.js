
//= require rails-ujs
//= require active_admin
//= require vendor/jquery-migrate.min
//= require vendor/bootstrap/js/bootstrap.min
//= require vendor/jquery.easing
//= require vendor/jquery.back-to-top
//= require vendor/jquery.smooth-scroll
//= require vendor/jquery.wow.min
//= require vendor/swiper/js/swiper.jquery.min
//= require vendor/masonry/jquery.masonry.pkgd.min
//= require vendor/masonry/imagesloaded.pkgd.min
//= require layout
//= require components/wow.min
//= require components/swiper.min
//= require components/masonry.min
//= require smoothscroll
// require turbolinks
//= require ckeditor/init
//= require_tree .

$('.page-scroll').bind('click', function(event){
    var $anchor = $(this);
    $('html, body').stop().animate({
        scrollTop: $($anchor.attr('href')).offset().top -64
    }, 1500, 'easeInOutExpo');
    event.preventDefault();
});
