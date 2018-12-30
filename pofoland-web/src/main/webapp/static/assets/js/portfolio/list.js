const PLUS_ICON_CLASS = 'fa-plus-square-o';
const MINUS_ICON_CLASS = 'fa-minus-square-o';

const CtgrApp = {
    getItem : function (code) {
        return $('#category_' + code);
    },
    getInfo : function (code, name) {
        return this.getItem(code).data(name);
    },
    getCollapser : function (code) {
        return $('#trigger_' + code);
    },
    toggleCollapse : function (code, depth) {
        var collapser = this.getCollapser(code);
        
        if (collapser.hasClass(PLUS_ICON_CLASS)) {
            collapser.removeClass(PLUS_ICON_CLASS);
            collapser.addClass(MINUS_ICON_CLASS);
        } else {
            collapser.removeClass(MINUS_ICON_CLASS);
            collapser.addClass(PLUS_ICON_CLASS);
        }
    }
}

$(document).ready(function () {
    $('i[id^=trigger]').on('click', function (e) {
        var item = CtgrApp.getItem($(this).data('code'));
        
        CtgrApp.toggleCollapse(item.data('code'), item.data('depth'));
    });
    
    initializeCategoryUI();
});

// Category UI Initialize
function initializeCategoryUI() {
    var selectedCategory = CtgrApp.getItem(currentPofolTypeCd);
    
    if (selectedCategory.length != 0) {
        var categoryInfo = selectedCategory.data();
        
        if (categoryInfo.depth > 1) {
            CtgrApp.getCollapser(categoryInfo.parentCode).click();
            
            var parentCategory = CtgrApp.getItem(categoryInfo.parentCode);
            parentCategory.find('a.link').addClass('on')
        }
    }
}
