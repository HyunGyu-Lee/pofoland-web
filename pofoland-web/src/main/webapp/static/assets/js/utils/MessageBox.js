(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        define(factory);
    } else if (typeof module === 'object' && module.exports) {
        module.exports = factory;
    } else {
        root.MessageBox = factory();
    }
}) (this, function () {
    var MessageBox = {};
    
    var title = "TripStore";
    var iconSuccess = '<i class="fa fa-check"></i> ';
    var iconInformation = '<i class="fa fa-info-circle text-info"></i> ';
    var iconWarning = '<i class="fa fa-exclamation-triangle text-warning"></i> ';
    var iconDanger = '<i class="fa fa-times text-danger"></i> ';
    
    // 기본 alert 함수
    var alert = function (type, message, callback) {
        if (callback) {
            alertify.alert(type + title, message.replace(/\n/gi, "<br/>"), callback);
        } else {
            alertify.alert(type + title, message.replace(/\n/gi, "<br/>"));
        }
    }
    
    var success = function (message, callback) {
        alert(iconSuccess, message, callback);
    } 

    var info = function (message, callback) {
        alert(iconInformation, message, callback);
    } 
    
    var warning = function (message, callback) {
        alert(iconWarning, message, callback);
    } 
    
    var danger = function (message, callback) {
        alert(iconDanger, message, callback);
    } 
    
    MessageBox.success = function (message, callback) {
        success(message, callback);
    }
    
    MessageBox.info = function (message, callback) {
        info(message, callback);
    }
    
    MessageBox.warning = function (message, callback) {
        warning(message, callback);
    }
    
    MessageBox.danger = function (message, callback) {
        danger(message, callback);
    }
    
    return MessageBox;
    
});