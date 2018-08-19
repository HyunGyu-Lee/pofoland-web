// summernote PageContentEditor 설정
var summernoteSettings = {
    height: 340,
    minHeight: null,
    maxHeight: null,
    focus: true,
    lang: 'ko-KR',
    disableResizeEditor: true,
    toolbar: [
        ['style', ['bold', 'italic', 'underline']],
        ['color', ['color']],
        ['height', ['height']],
        ['fontsize', ['fontsize']],
        ['table', ['table']],
        ['insert', ['link', 'hr']]
    ]
}

// Portfolio Page template
var pageTemplate = _.template('<div id="portfolioPageTemplate" class="row" style="height: 431px;">\
                <div class="col-sm-7" style="height: 100%;">\
                    <img src="${ctx}/static/vendor/volvox/img/blog/01.jpg" style="height: 100%;">\
                </div>\
                <div class="col-sm-5" style="height: 100%;">\
                    <div id="pageContentEditor<%= pageNo %>"></div>\
                </div>\
                <div class="col-sm-12 center">\
                    <h5>- <%= pageNo %> -</h5>\
                </div>\
                <div class="v-spacer col-sm-12 v-height-small"></div>\
            </div>');

var portfolioBody = $("#portfolioBodyWrap");

$(function () {
    alertify.dialog('chooser',function factory() {
        return {
            main: function (content) {
                this.setContent(content)
            },
            setUp: function() {
                return {
                    options: {
                        basic: true,
                        maximizable:false,
                        resizable:false,
                        padding:false
                    }
                }
            }
        };
    });
    
    
    $("#btnAddPortfolioPage").on("click", function () {
        alertify.chooser($("#chooseTemplate").html());
    });
});

function addPortfolioPage(pageType, pageNo) {
    var pageNo = getMaxPageNo() + 1;
    setMaxPageNo(pageNo);
    
    $("#portfolioBodyWrap").append(pageTemplate({pageNo: pageNo}));
    getPageEditor(pageNo).summernote(summernoteSettings);
}

function getPageEditor(pageNo) {
    return $("#pageContentEditor" + pageNo);
}

function getMaxPageNo() {
    return parseInt(portfolioBody.attr("maxPage"));
}

function setMaxPageNo(maxPage) {
    portfolioBody.attr("maxPage", maxPage);
}