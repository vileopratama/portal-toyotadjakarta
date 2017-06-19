jQuery(document).ready(function ($) {
	jQuery.fn.randomize = function (selector) {
		var $elems = selector ? $(this).find(selector) : $(this).children(), $parents = $elems.parent();
		$parents.each(function () {
			$(this).children(selector).sort(function (childA, childB) {
				// * Prevent last slide from being reordered
				if ($(childB).index() !== $(this).children(selector).length - 1) {
					return Math.round(Math.random()) - 0.5;
				}
			}.bind(this)).detach().appendTo(this);
		});
		
		return this;
	};
	
	$("#202-593bf2c22a5ab")
		.randomize()
		.slick({
			slidesToShow: 7,
			slidesToScroll: 1,
			autoplaySpeed: 2000,
			speed: 1000,
			arrows: true,
			asNavFor: null,
			autoplay: true,
			
			useCSS: true,
			responsive: [
				{
					breakpoint: 1199,
					settings: {
						arrows: true,
						slidesToShow: 4
					}
				},
				{
					breakpoint: 979,
					settings: {
						arrows: true,
						slidesToShow: 3
					}
				}, {
					breakpoint: 768,
					settings: {
						arrows: true,
						slidesToShow: 2
					}
				}, {
					breakpoint: 479,
					settings: {
						arrows: true,
						slidesToShow: 1
					}
				}
			]
			
		});
});;