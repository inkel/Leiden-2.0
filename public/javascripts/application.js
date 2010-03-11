// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(function() {
        jQuery('ul.gallery a[title]').hover(
                                            function() {
                                                jQuery(this).append('<div class="title">' + this.title + '</div>');
                                            },
                                            function() {
                                                jQuery(this).find('div.title').remove();
                                            }
                                            );
    });
