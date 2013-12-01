function startCV() {
  $(".resume .entry h3").click( function(){ 
    toggleView($(this));
  });
}

function toggleView(el) {
  desc = el.parent().find(".description")
  info = el.parent().find(".info")
  if (desc.is(':visible') || info.is(':visible')) {
    desc.hide();
    info.hide();
    el.css("list-style-image","url('/assets/arrow_right.png')");
  }
  else {
    desc.show();
    info.show();
    el.css("list-style-image","url('/assets/arrow_down.png')");
  }
}

function startPortfolio() {
  var $container = $('.portfolioContainer');
  $container.isotope({
      filter: '*',
      animationOptions: {
          duration: 750,
          easing: 'linear',
          queue: false
      }
  });

  $('.portfolioFilter a').click(function(){
      $('.portfolioFilter .current').removeClass('current');
      $(this).addClass('current');

      var selector = $(this).attr('data-filter');
      $container.isotope({
          filter: selector,
          animationOptions: {
              duration: 750,
              easing: 'linear',
              queue: false
          }
       });
       return false;
  }); 

  $('.portfolioContainer .item').hover(function() {
    $(this).find(".hover_message").show();
  }, function(){
    $(this).find(".hover_message").hide();
  });

  resizePortfolioContainer();
  $(window).resize(function() { resizePortfolioContainer(); });
}

function resizePortfolioContainer() {
  var ref = Math.min($("#container").width(), 1060)
  var result = Math.floor(ref / 210)*210
  $(".portfolioContainer").width(result);
}