
$('#color').minicolors({
  change: function(value, opacity) {
    console.log(value + ' - ' + opacity);
    $("#grid-container").data('color', value)
  }
});

$('[data-toggle="popover"]').popover({
    placement : 'top',
    trigger : 'hover'
});

$( ".grid" ).click(function() {
  var bgColor = $('#grid-container').data('color');
  $(this).css("background-color", bgColor);
  var userName = $('#grid-container').data('user-name');
  var boxName = $(this).data('box-name');
  var jqxhr = $.post( "/selection",{user_name: userName, color: bgColor, box_name: boxName }, function() {
	});
});