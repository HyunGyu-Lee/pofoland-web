var ctx;
var isLogin;

(function ($) {
    ctx = $('meta[name="ctx"]').attr('content');
    isLogin = $('meta[name="isLogin"]').attr('content');
    
    // jQuery 확장 
    $.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        
        $.each(a, function() {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        
        return o;
    };
    
    $.fn.outerHTML = function () {
        return $(this).clone().wrapAll("<div />").parent().html();
    }
    
    // alertify 글로벌 설정
    alertify.defaults.closable=false;
    alertify.defaults.closableByDimmer=false;
    alertify.defaults.glossary.ok = "확인";
    alertify.defaults.glossary.cancel = "취소";
    alertify.defaults.transition = "pulse";
    alertify.defaults.theme.ok = "btn btn-primary";
    alertify.defaults.theme.cancel = "btn btn-danger";
    alertify.defaults.theme.input = "form-control";
    alertify.defaults.basic = false;
    
})($);

/**
 * 공용 함수
 */
// contextPath를 포함한 경로 반환
function ctxUrl(url) {
    if (url && _.startsWith(url, '/')) {
        url = url.substring(1);
    }
    
    return ctx + "/" + url;
}

// Image 미리보기 이벤트
// input file태그 change이벤트에 걸어주면되고, 미리보기 영역은 태그ID + Preview임
function commonPreviewImage() {
    if (this.files && this.files[0]) {
        var previewArea = "#" + this.id + "Preview";
        var reader = new FileReader();
        
        reader.onload = function (e) {
            $(previewArea).attr("src", e.target.result);
        }
        
        reader.readAsDataURL(this.files[0]);
    }
}

function locationReload() {
    location.reload();
}

function locationHref(url) {
    location.href = url;
}