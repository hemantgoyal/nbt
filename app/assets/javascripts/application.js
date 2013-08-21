// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require social-share-button
//= require masonry.pkgd.min.js
//= require jquery.waterfall.js
//= require zepto.js
//= require_tree .

$(document).ready(function() {
      var columns    = 3,
        setColumns = function() { columns = $( window ).width() > 640 ? 3 : $( window ).width() > 320 ? 2 : 1; };
 
    setColumns();
    $( window ).resize( setColumns );
 
    $( '#list' ).masonry(
    {
        itemSelector: '.item',
        columnWidth:  function( containerWidth ) { return containerWidth / columns; }
});
$(document).foundation();
  