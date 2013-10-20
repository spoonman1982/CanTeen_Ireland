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
//= require image_cycle
//= require jquery.Jcrop
//= require_tree .

function myFunction(){
	window.alert("This is an alerte button")
}

$('.slider').cycle({ 
    fx: 'scrollDown' 
});

$(function(){$('#cropbox').Jcrop({
    onChange: showCoords,
    onSelect: showCoords,
    setSelect: [0, 0, 50, 50],
    aspectRatio: 1.5
    });
});


function showCoords(coords)
{
  $('#crop_x').val(coords.x);
  $('#crop_y').val(coords.y);
  $('#crop_w').val(coords.w);
  $('#crop_h').val(coords.h);

  var rx = 150 / coords.w;
  var ry = 100 / coords.h;

  $('#preview').css({
    width: Math.round(rx * 500) + 'px',
    height: Math.round(ry * 370) + 'px',
    marginLeft: '-' + Math.round(rx * coords.x) + 'px',
    marginTop: '-' + Math.round(ry * coords.y) + 'px'
  });
};