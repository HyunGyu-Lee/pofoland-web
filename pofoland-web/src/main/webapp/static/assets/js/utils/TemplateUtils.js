(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        define(factory);
    } else if (typeof module === 'object' && module.exports) {
        module.exports = factory;
    } else {
        root.TemplateUtils = factory();
    }
}) (this, function () {
    var TemplateUtils = {};
    
    var templateBundle = {};
    
    var load = function () {
        _.forEach($('script[type="text/template"]'), function (template) {
            templateBundle[$(template).attr('id')] = _.template($(template).html());
        });
    }
    
    var generate = function (templateName, params) {
        console.log(templateName, params, templateBundle[templateName]);
        
        return templateBundle[templateName](params);
    }
    
    /**
     * HTML 페이지에 선언된 <script type="text/template"> 태그들을 템플릿으로 등록
     * 템플릿 명은 해당 태그의 ID
     */
    TemplateUtils.load = function () {
        load();
    }
    
    TemplateUtils.generate = function (templateName, params) {
        return generate(templateName, params);
    }
    
    return TemplateUtils;
});