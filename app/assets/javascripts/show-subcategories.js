var ready = function() {
    function showSubcategories(mainCategoryName) {
        $('.sub-categories>div').fadeOut();
        $('#' + mainCategoryName).fadeIn();
    }

    $('.main-categories>a').click(function() {
        showSubcategories($(this).data('link'));
    });

    function getUrlParameter(sParam) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
            sURLVariables = sPageURL.split('&'),
            sParameterName,
            i;

        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');

            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }
        return undefined;
    }

    var mainCategoryName = getUrlParameter('category');
    if(mainCategoryName && $("[data-link='" + mainCategoryName + "']").length) {
        showSubcategories(mainCategoryName);
    }
};

$(document).ready(ready);
$(document).on('page:load', ready);