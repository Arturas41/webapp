jQuery(document).ready(function($){

    // Check if a user is signed in
    var isSignedIn = $.ajax({
        url: '/angleslash/authcheck',
        method: 'get',
        async: false
    }).responseText === 'true' ? true : false;

    $.ajaxSetup({
        headers: {
            'X-CSRF-Token': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });

    // handle votes
    jQuery('.vote').click(function () {
        if (isSignedIn) {
            var postId = $(this).closest('.panel').attr('class').split(' ')[2];
            $(this).toggleClass('active');

            if ($(this).hasClass('glyphicon-menu-up')) {
                jQuery('.post-' + postId + ' .vote.glyphicon-menu-down').removeClass('active');
            } else if ($(this).hasClass('glyphicon-menu-down')) {
                jQuery('.post-' + postId + ' .vote.glyphicon-menu-up').removeClass('active');
            }

            $.ajax({
                url: '/angleslash/vote',
                method: 'post',
                data: {
                    'class': $(this).attr('class'),
                    'postId': postId
                }
            });
        } else {
            jQuery('#modal').modal();
        }
    });
});
