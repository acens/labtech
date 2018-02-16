
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
//= require jquery_ujs
// require turbolinks
//= require ckeditor/init
//= require_tree .

$(document).on('click', 'a[href^="#"]', function (event) {
    event.preventDefault();

    $('html, body').animate({
        scrollTop: $($.attr(this, 'href')).offset().top
    }, 500);
});
