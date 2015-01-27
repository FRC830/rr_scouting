$(function() {
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
            }
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
            if(element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        }
    });
    function get_field_id(a, b) {
        return 'form-' + a + '-' + b;
    }
    if (window.localStorage && window.localStorage.getItem) {
        $('form').each(function(i, form) {
            var form_id = $(form).attr('id');
            if (!form_id)
                return;
            if (location.href.indexOf('/clear') != -1) {
                $(form).find('input').each(function(i, field) {
                    var field_id = $(field).attr('id');
                    if (!field_id)
                        return;
                    localStorage.setItem(get_field_id(form_id, field_id), $(this).val());
                });
                location.href = location.href.replace('/clear', '');
                return;
            }
            $(form).find('input').each(function(i, field) {
                var field_id = $(field).attr('id');
                if (!field_id)
                    return;
                $(field).val(localStorage.getItem(get_field_id(form_id, field_id)));
            });
        });
        $('input').on('click keyup', function(event) {
            var field_id = $(this).attr('id'),
                form_id = $(this).parents('form').attr('id');
            if (!field_id || !form_id)
                return;
            localStorage.setItem(get_field_id(form_id, field_id), $(this).val());
        });
    }
});
