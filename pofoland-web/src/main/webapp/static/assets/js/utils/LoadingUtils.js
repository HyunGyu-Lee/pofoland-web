(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        define(factory);
    } else if (typeof module === 'object' && module.exports) {
        module.exports = factory;
    } else {
        root.LoadingUtils = factory();
    }
}) (this, function () {
    var LoadingUtils = {};
    
    var imageAssetHome = ctx + '/static/vendor/oLoader/images/ownageLoader/';
    
    var loading = function (element, options) {
        $(element).oLoader(options);
    }
    
    var closeLoading = function (element) {
        $(element).oLoader('hide');
    }
    
    var loadingImage = function (path) {
        return imageAssetHome + path;
    }
    
    LoadingUtils.loading = function () {
        loading('body', {
            wholeWindow: true, 
            effect:'slide',
            image: loadingImage('loader3.gif'),/*,
            hideAfter: 1500*/
        });
    }
    
    LoadingUtils.closeLoading = function () {
        closeLoading('body');
    }
    
    return LoadingUtils;
});