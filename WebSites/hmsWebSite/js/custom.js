(function($){"use strict";$(document).ready(function(){$('select').niceSelect();});$(window).scroll(function(){var window_top=$(window).scrollTop()+1;if(window_top>50){$('.main_menu').addClass('menu_fixed animated fadeInDown');}else{$('.main_menu').removeClass('menu_fixed animated fadeInDown');}});$(document).ready(function(){$('select').niceSelect();});var review=$('.client_review_part');if(review.length){review.owlCarousel({items:1,loop:true,dots:true,autoplay:true,autoplayHoverPause:true,autoplayTimeout:5000,nav:false,smartSpeed:2000,});}
function mailChimp(){$('#mc_embed_signup').find('form').ajaxChimp();}
mailChimp();}(jQuery));



function goTo(){
    'use strict';
    window.scrollTo(774,4000);    
}

function mailTo() {
    'use strict';
    location.protocol = "mailto";
}
function moveTo() {
    'use strict';
    location.href = "dep.html";
}
function goTo2(){
    'use strict';
    window.scrollTo(504,1700);    
}
function goTo3(){
    'use strict';
    window.scrollTo(504,2970);    
}
function goTo4(){
    'use strict';
    window.scrollTo(504,2000);    
}

