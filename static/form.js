$(function() {
    function mkbutton() {
        return $('<a>').attr('href', '#').addClass('btn btn-default').click(function(e){e.preventDefault();});
    }
    $('form#scouting-form').validate({
        rules: {
            match_id: {
                minlength: 1,
                maxlength: 15,
                required: true
            },
            team_id: {
                minlength: 1,
                maxlength: 15,
                required: true
            },
            auton_start: {
                required: true
            },
            totes_stacked: {
                minlength: 1,
                required: true
            },
            bin_height: {
                minlength: 1,
                required: true
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
    $(window).bind('beforeunload', function () {
        return 'If you leave this page, all data not submitted will be lost';
    });
    $('input[type=number].custom-spinner').each(function(i, e) {
        var increment = function(n) {
            return function() {
                $(e).trigger('keyup');
                $(e).val(Number($(e).val()) + n);
            }
        }
        mkbutton().addClass('input-group-addon').text('+').insertAfter($(e)).click(increment(1));
        mkbutton().addClass('input-group-addon').text('-').insertBefore($(e)).click(increment(-1));
    });
});
