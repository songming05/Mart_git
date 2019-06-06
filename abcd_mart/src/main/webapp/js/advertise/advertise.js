/*중간광고 소스 */
/*$(document).ready(function(){*/
	$(".custom-carousel").swipe({

		  swipe: function(event, direction, distance, duration, fingerCount, fingerData) {

			if (direction == 'left') $(this).carousel('next');
			if (direction == 'right') $(this).carousel('prev');

		  },
		  allowPageScroll:"vertical"

		});
	/*$(window).resize(function() {*/
					if($(window).width() >= 992) {
	            $('.custom-carousel .item').each(function(){
				var itemToClone = $(this);

				for (var i=1;i<3;i++) {
				  itemToClone = itemToClone.next();

				  if (!itemToClone.length) {
					itemToClone = $(this).siblings(':first');
				  }

				  itemToClone.children(':first-child').clone()
					.addClass("cloneditem-"+(i))
					.appendTo($(this));
				}
			  });
	        }
	        else if($(window).width() >= 768){
	           $('.custom-carousel .item').each(function(){
				var itemToClone = $(this);

				for (var i=1;i<2;i++) {
				  itemToClone = itemToClone.next();

				  if (!itemToClone.length) {
					itemToClone = $(this).siblings(':first');
				  }
				  itemToClone.children(':first-child').clone()
					.addClass("cloneditem-"+(i))
					.appendTo($(this));
				}
			  });
	        }
			else if($(window).width() <= 767){
	           $('.custom-carousel .item').each(function(){
				var itemToClone = $(this);

				for (var i=1;i<1;i++) {
				  itemToClone = itemToClone.next();

				  if (!itemToClone.length) {
					itemToClone = $(this).siblings(':first');
				  }

				  itemToClone.children(':first-child').clone()
					.addClass("cloneditem-"+(i))
					.appendTo($(this));
				}
			  });
	        }
/*	    }).resize(); 
	});*/


/*맨밑 광고*/
(function(){
	  $('.carousel-showmanymoveone .item').each(function(){
	    var itemToClone = $(this);

	    for (var i=1;i<6;i++) {
	      itemToClone = itemToClone.next();

	      // wrap around if at end of item collection
	      if (!itemToClone.length) {
	        itemToClone = $(this).siblings(':first');
	      }

	      // grab item, clone, add marker class, add to collection
	      itemToClone.children(':first-child').clone()
	        .addClass("cloneditem-"+(i))
	        .appendTo($(this));
	    }
	  });
	}());



