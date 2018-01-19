// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require vendor/jquery.min
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
//= require jquery.nav
//= require turbolinks
//= require_tree .


$('#nav').onePageNav({
	currentClass: 'current',
	changeHash: false,
	scrollSpeed: 750,
	scrollThreshold: 0.5,
	filter: ':not(.external)',
	easing: 'swing'
});
