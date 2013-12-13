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

$(function() {startCV();} );