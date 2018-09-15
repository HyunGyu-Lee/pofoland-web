var PAGE_ID_GENERATOR = 0;

// 포트폴리오 페이지 타입 유형
var TEXT_TYPE = '0001';
var PICTURE_TYPE = '0002';
var MOVIE_TYPE = '0003';

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
        text: _.template('<div class="row portfolioPage" type="' + TEXT_TYPE + '">\
                              <input type="hidden" id ="pageId" value="<%= pageId%>">\
                              <div id="pageContentEditor<%= pageId %>"></div>\
                              <div class="col-sm-12 center">\
                                  <h5>- <span id="pageNo"><%= pageNo %></span> -</h5>\
                              </div>\
                              <div class="v-divider standard col-sm-12"></div>\
                          </div>'),
        picture: _.template('<div class="row portfolioPage" type="' + PICTURE_TYPE + '">\
                                 <input type="hidden" id ="pageId" value="<%= pageId%>">\
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

var services = {
        // 포트폴리오 등록 처리
        createPortfolio : function () {
            var data = $("#createForm").serializeObject();
            
            var portfolioPages = [];
            var fileUploadPool = [];
            
            _.forEach($('.portfolioPage'), function (e, i) {
                var type = $(e).attr('type');
                var pageId = $(e).find('#pageId').val();
                var content = getPageEditor(pageId).summernote('code');
                var pageNo = i + 1;
                
                if (type != TEXT_TYPE) {
                    fileUploadPool.push({
                        pageNo: pageNo,
                        fileData: $(e).find('input[type=file]')[0].files[0]
                    });
                }
                
                portfolioPages.push({
                    sortOrder: pageNo,
                    pofolPageTypeCd: type,
                    pofolPageCont: content
                });
            });
            
            data["portfolioPages"] = portfolioPages;
            
            AjaxUtils.post("/api/portfolios", data, function (response) {
                _.forEach(fileUploadPool, function (e, i) {
                    var uploadForm = $('<form />');
                    var formData = new FormData(uploadForm);
                    formData.append('file', e.fileData);
                    
                    $.ajax({
                        url: '/api/portfolios/' + response.payloads + '/' + e.pageNo + '/upload',
                        enctype: 'multipart/form-data',
                        processData: false,
                        contentType: false,
                        data: formData,
                        type: 'POST',
                        async: false,
                        success: function (response) {
                        }
                    });
                });
                
                MessageBox.success("등록됌", locationReload);
            });
        }

    }

$(function () {
    initChooser();
    
    $("#btnAddPortfolioPage").on("click", function () {
        alertify.chooser($("#chooseTemplate").html());
    });
    
    $("#btnCreatePortfolio").on("click", services.createPortfolio);
});

// alertify chooser 초기화
function initChooser() {
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
}

/**
 * 포트폴리오 페이지 추가 
 */
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

function getPageEditor(pageId) {
    return $("#pageContentEditor" + pageId);
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