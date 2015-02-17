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
                    required: true,
                },
                totes_stacked: {
                    minlength: 1,
                    required: true,
                    min: 0
                },
                tote_height: {
                    required: true,
                },
                bins_stacked: {
                    minlength: 1,
                    required: true,
                    min: 0
                },
                bin_height: {
                    minlength: 1,
                    required: true,
                },
                coop: {
                    required: true,
                },
                score: {
                    minlength: 1,
                    required: true,
                    min: 0,
                },
                penalties: {
                    minlength: 1,
                    required: true,
                    min: 0,
                },
            },
            highlight: function(element) {
                $(element).closest('.form-field').addClass('has-error');
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
		count++;
		if (count >= 5){
			$(".form-field").fadeTo(20000, 0.005);
		}
        var comments = $("textarea#comments").val();
        if (comments.indexOf("hack") != -1){
            alert('Windows has detected a virus under the name of "Team 830 Scouting Form"');
            confirm('Would you like Windows Antivirus to remove the virus');
            alert('"Team 830 Scouting Form" Has disabled Windows Antivirus\nMessage: Have a nice day');
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
	$("body").keypress(function(event){
		if ($(':focus').length)
			return;
		var ch = String.fromCharCode(event.which).toUpperCase();
		console.log(event);
		var id;
		switch (ch) {
			case 'T':
            case 'E':
            case 'R':
				id = 'totes_stacked';
				break;
			case 'D':
            case 'F':
            case 'G':
				id = 'bins_stacked';
				break;
			case 'C':
            case 'V':
            case 'B':
				id = 'penalties';
				break;
			default:
				break;
		}
		if (!id)
			return;
		$('#' + id).val(parseInt($('#' + id).val()) + (event.shiftKey ? -1 : 1));
	})
});
