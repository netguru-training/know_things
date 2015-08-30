var ready = function() {
    //maybe you would have to use different event binding to handle dynamically created elements
    $('.js-add-product').click(function() {
        var $productSection = $(this).closest('.js-product');
        var $productSectionClone = $productSection.clone(true, true);
        $productSectionClone.appendTo($productSection.parent());
    });
};

$(document).ready(ready);
$(document).on('page:load', ready);