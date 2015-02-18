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
                $(e).val(Number($(e).val()) + n);
                $(e).trigger('keyup');
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
    });
	//Easter eggs
	$("#submit").click(function(){
        count++;
        if (count >= 5){
            $(".form-field").fadeTo(20000, 0.005);
        }
        var comments = $("textarea#comments").val();
        if (comments.indexOf("hack") != -1){
            $rob = $("<img src = '/static/robber.png' width = '50px' id='robber'/>");
			$("#hacker").append($rob);
			$("#robber").animate({left: "+=1000px"},1000);//halp
        }
    });
    $('img#logo').click(function() {
        var elt = $('audio')[0];
        elt.currentTime = 0;
        elt.play();
    });
	$('#red').click(function() {
		$('body').css("background-color", "#ff0000");
	});
	$('#orange').click(function() {
		$('body').css("background-color", "#FF7F00");
	});
	$('#yellow').click(function() {
		$('body').css("background-color", "#ffff00");
	});
	$('#green').click(function() {
		$('body').css("background-color", "#00BC3F");
	});
	$('#blue').click(function() {
		$('body').css("background-color", "#0068FF");
	});
	$('#indigo').click(function() {
		$('body').css("background-color", "#7A00E5");
	});
	$('#violet').click(function() {
		$('body').css("background-color", "#D300C9");
	});
	
});
