/*
 * Main UI file.
 *
 * Here we activate and configure all scripts or
 * jQuery plugins required for UI.
 *
 */
(function ($, window, vendor, undefined) {

	jQuery(document).one('click','.supsystic-admin-notice a, .supsystic-admin-notice button',function(event) {
		var responseCode = jQuery(this).data('response-code') || 'hide';

		jQuery('.supsystic-admin-notice .notice-dismiss').trigger('click');

		window.supsystic.Tables.request({
			module: 'tables',action: 'reviewNoticeResponse'
		},{
			responseCode: responseCode
		});
	});

    $(document).ready(function () {
		var activModule = (/\module=([^&#]*)/i.test($('.supsystic-navigation').find('li.active').find('a').attr('href'))) ? RegExp.$1 : 'tables';
		$('#toplevel_page_supsystic-tables').find('.wp-submenu li').removeClass('current').each(function(){
			if($(this).find('a[href$="&module='+ activModule+ '"]').size()) {
				$(this).addClass('current');
			}
		});
        /* Bootstrap Tooltips */
        // $('body').tooltip({
        //     selector: '.supsystic-plugin [data-toggle="tooltip"]',
        //     container: 'body'
        // });

        $('[data-toggle="tooltip"]').tooltipster({
                contentAsHTML: true,
                interactive: true,
                position: 'top-left',
                updateAnimation: true,
                animation: 'swing',
                functionReady: function(origin) {
                    $('img').load(function(){
                        origin.tooltipster('reposition');
                    });
                }
            });

        $('[data-target-toggle]').on('click change ifChanged', function(event) {
            event.preventDefault();
            $target = $($(this).data('target-toggle'));
            $target.fadeToggle();
        });

        /* Minimum height for the container */
        var $autoHeight = $('.supsystic-item'),
            naviationHeight = $('.supsystic-navigation').outerHeight();

        $autoHeight.each(function () {
            $(this).css({ minHeight: naviationHeight });
        });

        $('input').iCheck({
            checkboxClass: 'icheckbox_minimal',
            radioClass:    'iradio_minimal'
        });
    });

}(jQuery, window, 'supsystic'));
