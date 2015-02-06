var fancybox = function(){
    $(".fancybox").fancybox();
};
$(document).on("page:load ready", fancybox);

$(document).ready(function() {
  $("a.fancybox").fancybox();
});

/*
$(document).ready(function() {

			$('.fancybox').fancybox();


			$('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
					openEffect : 'none',
					closeEffect : 'none',
					prevEffect : 'none',
					nextEffect : 'none',

					arrows : false,
					helpers : {
						media : {},
						buttons : {}
					}
				});
*/
$(document).ready(function() {
    $(".various").fancybox({
        maxWidth    : 1280,
        maxHeight   : 720,
        fitToView   : false,
        width       : '70%',
        height      : '70%',
        autoSize    : false,
        closeClick  : false,
        openEffect  : 'elastic',
        closeEffect : 'none',
        beforeLoad  : function(){
            var url= $(this.element).attr("href");
            url = url.replace(new RegExp("watch\\?v=", "i"), 'v/');
            url += '?fs=1&autoplay=1';
            this.href = url
        }
    });
})
		