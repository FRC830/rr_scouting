var count = 0;
$(function() {
    function mkbutton() {
        return $('<a>').attr('href', '#').addClass('btn btn-default').click(function(e){e.preventDefault();});
    }
    if (window.location.href.indexOf('no-validation') == -1) {
        $('form#scouting-form').validate({
            rules: {
                match_id: {
                    minlength: 1,
                    maxlength: 15,
                    required: true,
                    min: 0
                },
                team_id: {
                    minlength: 1,
                    maxlength: 15,
                    required: true,
                    min: 0
                },
                auton_start: {
                    required: false
                },
                totes_stacked: {
                    minlength: 1,
                    required: false,
                    min: 0
                },
                tote_height: {
                    required: false
                },
                bins_stacked: {
                    minlength: 1,
                    required: false,
                    min: 0
                },
                bin_height: {
                    minlength: 1,
                    required: false
                },
                coop: {
                    required: false
                },
                score: {
                    minlength: 1,
                    required: false
                },
                penalties: {
                    minlength: 1,
                    required: false
                }
            },
            highlight: function(element) {
                $(element).closest('.form-field').addClass('has-error');
				count = count+1;
            },
            unhighlight: function(element) {
                $(element).closest('.form-field').removeClass('has-error');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function(error, element) {
                // disable messages
                return true;
            }
        });
    }
	$("#submit").click(function(){
		if (count >= 10){
			$(".form-field").fadeOut(20000);
		}
	});
    function requestFullscreen() {
        var doc = window.document.documentElement;
        if (doc.requestFullscreen)
            return doc.requestFullscreen();
        else if (doc.webkitRequestFullscreen)
            return doc.webkitRequestFullscreen();
        else if (doc.mozRequestFullScreen)
            return doc.mozRequestFullScreen();
        else if (doc.msRequestFullscreen)
            return doc.msRequestFullscreen();
        else
            return false;
    }
    function exitFullscreen() {
        var doc = window.document.documentElement;
        if (doc.exitFullscreen)
            return doc.exitFullscreen();
        else if (doc.webkitExitFullscreen)
            return doc.webkitExitFullscreen();
        else if (doc.mozExitFullScreen)
            return doc.mozExitFullScreen();
        else if (doc.msExitFullscreen)
            return doc.msExitFullscreen();
        else
            return false;
    }
    var in_fullscreen = false;
    $('.fullscreen-toggle').click(function() {
        if ((in_fullscreen && exitFullscreen()) || (!in_fullscreen && requestFullscreen())) {
            $(this).toggleClass('glyphicon-fullscreen glyphicon-resize-small')
        }
    });
    /*
    $(window).bind('beforeunload', function () {
        return 'If you leave this page, all data not submitted will be lost';
    });
    */
    $('input[type=number].custom-spinner').each(function(i, e) {
        var increment = function(n) {
            return function() {
                $(e).trigger('keyup');
                $(e).val(Number($(e).val()) + n);
            }
        }
        var button_inc = mkbutton().addClass('input-group-addon').text('+').insertAfter($(e)).click(increment(1));
        var button_dec = mkbutton().addClass('input-group-addon').text('-').insertBefore($(e)).click(increment(-1));
        var width = Math.max(button_inc.width(), button_dec.width());
        button_inc.width(width);
        button_dec.width(width);
    });
    $('body').on('change', '.has-error input[type=radio]', function(evt) {
        $(this).parents('.has-error').removeClass('has-error');
    });
});
