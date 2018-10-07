(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        define(factory);
    } else if (typeof module === 'object' && module.exports) {
        module.exports = factory;
    } else {
        root.AjaxUtils = factory();
    }
}) (this, function () {
    
    // 모듈 Object 선언
    var AjaxUtils = {};
    
    // Default 에러 처리기
    var ErrorHandlerModules = {
        400: function (error) {
            MessageBox.danger('요청형식이 알맞지 않습니다.', function () {
                LoadingUtils.closeLoading();
            });
        },
        500: function (error) {
            MessageBox.danger('요청을 처리하던 중 문제가 발생하였습니다.', function () {
                LoadingUtils.closeLoading();
            });
        }
    };
    
    var method,               // 요청 메소드
        url,                  // 요청 url
        data,                 // 요청 데이터
        onSuccess,            // 성공 콜백
        onError,              // 실패 콜백
        onSuccessPreHandler,  // 성공 전처리 콜백
        onSuccessPostHandler; // 실패 전처리 콜백
    
    var headers;
    
    var targetForm;
    
    /**  
     * private 함수 선언부
     */
    // default 통신 성공 콜백 함수
    var defaultOnSuccess = function (response) {
        console.log(response);
    }
    
    // default 통신 실패 콜백 함수
    var defaultOnError = function (error) {
        if (_.has(ErrorHandlerModules, error.status)) {
            ErrorHandlerModules[error.status](error);
        } else {
            console.log(error);
        }
    }
    
    // default onSuccess 전처리 함수
    var defaultOnSuccessPreHandler = function (response) {
        console.log("Call defaultOnSuccessPreHandler");
    }
    
    // default onSuccess 후처리 함수
    var defaultOnSuccessPostHandler = function (response) {
        console.log("Call defaultOnSuccessPostHandler");
    }
    
    // Ajax 요청 성공 콜백 로직 context
    var successHandleContext = function (response) {
        onSuccessPreHandler(response);
        
        onSuccess(response);
        
        onSuccessPostHandler(response);
    }

    var setMethod = function (mth) {
        method = mth;
    }
    
    var clearSetting = function () {
        url = undefined;
        method = "GET";
        data = undefined;
        onSuccess = undefined;
        onError = undefined;
        targetForm = undefined;
    }
    
    // Ajax 요청 초기화
    var initialize = function (ajaxInformation) {
        clearSetting();
        
        url = ajaxInformation.url;
        method = ajaxInformation.method;
        data = ajaxInformation.data;
        onSuccess = ajaxInformation.onSuccess;
        onError = ajaxInformation.onError;
        
        if (typeof data === "string") {
            targetForm = $(data);
            data = targetForm.serializeJson();
            
            // 에러 메시지 영역이 없다면 생성
            if (!_.isUndefined(targetForm)) {
                if (targetForm.find("#errMsgArea").length == 0) {
                    targetForm.append("<ul id='errMsgArea' class='errMsgList'></ul>");
                }
                
                var errMsgArea = targetForm.find("#errMsgArea");
                
                errMsgArea.html("");
                targetForm.find(".errorInput").removeClass("errorInput");
            }
        }
        
        if (!method) {
            method = "GET";
        }
        
        if (!onSuccess) {
            onSuccess = defaultOnSuccess;
        }
        
        if (!onError) {
            onError = defaultOnError;
        }
        
        if (!onSuccessPreHandler) {
            onSuccessPreHandler = defaultOnSuccessPreHandler;
        }
        
        if (!onSuccessPostHandler) {
            onSuccessPostHandler = defaultOnSuccessPostHandler;
        }
        
        if (method != "GET") {
            data = JSON.stringify(data);
            
            if (method != "POST") {
                headers = {"X-HTTP-Method-Override": method};
                method = "POST";
            }
        }
    }
    
    var successPreHandle = function (handler) {
        onSuccessPreHandler = handler;
    }
    
    var call = function (async) {
        var result;
        
        $.ajax({
            url: ctxUrl(url),
            type: method,
            headers: headers,
            contentType: "application/json",
            dataType: "json",
            data: data,
            async: async,
            success: function (response) {
                successHandleContext(response);
                
                result = response;
            },
            error: onError
        });
        
        return result;
    }
    
    var callAsync = function () {
        call(true);
    }
    
    var callSync = function () {
        return call(false);
    }
    
    /**
     * public 함수 선언부
     */
    AjaxUtils.setMethod = function (method) {
        setMethod(method);
    }
    
    AjaxUtils.init = function (ajaxInformation) {
        initialize(ajaxInformation);
    }
    
    AjaxUtils.get = function (url, data, onSuccess, onError) {
        initialize({
            url: url,
            method: 'GET',
            data: data,
            onSuccess: onSuccess,
            onError: onError
        });
        
        callAsync();
    }
    
    AjaxUtils.post = function (url, data, onSuccess, onError) {
        initialize({
            url: url,
            method: 'POST',
            data: data,
            onSuccess: onSuccess,
            onError: onError
        });
        
        callAsync();
    }
    
    AjaxUtils.callAsync = function () {
        callAsync();
    }
    
    AjaxUtils.callSync = function () {
        return callSync();
    }
    
    return AjaxUtils;
    
});