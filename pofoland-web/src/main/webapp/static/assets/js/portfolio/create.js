var PAGE_ID_GENERATOR = 0;

// summernote PageContentEditor 설정
var summernoteSettings = {
    height: '415',
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
var pageTemplateBundle = {
        text: _.template('<div class="row portfolioPage">\
                              <div id="pageContentEditor<%= pageId %>"></div>\
                              <div class="col-sm-12 center">\
                                  <h5>- <span id="pageNo"><%= pageNo %></span> -</h5>\
                              </div>\
                              <div class="v-divider standard col-sm-12"></div>\
                          </div>'),
        picture: _.template('<div class="row portfolioPage">\
                                 <div class="col-sm-7" style="height: 100%; padding-left: 0">\
                                     <img id="imgPreview<%= pageId %>" src="https://via.placeholder.com/480x360" style="width: 100%; height: 465px;">\
                                     <input type="file" onchange="setImagePreview(this, <%= pageId %>);"></input>\
                                 </div>\
                                 <div class="col-sm-5" style="height: 100%; padding-right: 0">\
                                     <div id="pageContentEditor<%= pageId %>"></div>\
                                 </div>\
                                 <div class="col-sm-12 center">\
                                     <h5>- <span id="pageNo"><%= pageNo %></span> -</h5>\
                                 </div>\
                                 <div class="v-divider standard col-sm-12"></div>\
                             </div>'),
        movie: '<h1>동영상 템플릿</h1>'
};

var portfolioBody = $("#portfolioBodyWrap");

$(function () {
    alertify.dialog('chooser',function factory() {
        return {
            main: function (content) {
                this.setContent(content)
            },
            setup: function() {
                return {
                    options: {
                        basic: false,
                        maximizable:false,
                        resizable:false,
                        padding:true,
                        closable:true,
                        title: '<h4><i class="fa fa-info-circle"></i> 페이지 유형 선택</h4>'
                    }
                }
            }
        };
    });
    
    
    $("#btnAddPortfolioPage").on("click", function () {
        alertify.chooser($("#chooseTemplate").html());
    });
});

function addPortfolioPage(pageType) {
    var pageNo = refreshPageNo();
    var pageId = generatePageId();
    
    $("#portfolioBodyWrap").append(pageTemplateBundle[pageType]({pageId: pageId, pageNo: pageNo}));
    getPageEditor(pageId).summernote(summernoteSettings);

    alertify.closeAll();
}

function refreshPageNo() {
    var pageList = $("#portfolioBodyWrap").find(".portfolioPage");
    var pageNo = 1;
    
    _.forEach(pageList, function (page) {
        $(page).find("#pageNo").text(pageNo);
        pageNo++;
    });
    
    return pageNo;
}

function generatePageId() {
    return PAGE_ID_GENERATOR++;
}

function getPageEditor(pageNo) {
    return $("#pageContentEditor" + pageNo);
}

function setImagePreview(input, pageId) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
            $('#imgPreview' + pageId).attr('src', e.target.result);
        }
        
        reader.readAsDataURL(input.files[0]);
    }
}