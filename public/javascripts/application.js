// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
  $("#photos").bxSlider({
    mode: "fade",
    speed: 1000,
    controls: false,
    captions: true,
    captionsSelector: $("#caption"),
    auto: true
  });
});
