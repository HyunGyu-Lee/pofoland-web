var PAGE_ID_GENERATOR = 0;

// 포트폴리오 페이지 타입 유형
const TEXT_TYPE = '0001';
const PICTURE_TYPE = '0002';
const MOVIE_TYPE = '0003';

// summernote PageContentEditor 설정
const summernoteSettings = {
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
const pageTemplateBundle = {
        text: _.template($('#textTemplate').html()),
        picture: _.template($('#pictureTemplate').html()),
        movie: _.template($('#movieTemplate').html()),
        controls: _.template($('#pageControls').html())
};

var portfolioBody = $("#portfolioBodyWrap");

var services = {
    // 포트폴리오 등록 처리
    createPortfolio : function () {
        LoadingUtils.loading();
        
        var data = $("#createForm").serializeObject();
        
        var portfolioPages = [];
        var fileUploadPool = [];
        
        // 페이지 정보 취합
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
        
        // 포트폴리오 등록
        AjaxUtils.post('/api/portfolios', data, function (response) {
            var pofolNo = response.payloads;
            
            services.uploadPageFile(pofolNo, fileUploadPool);
            
            // 자동선택이 체크해제되어있는 경우 메인이미지 변경
            services.changeMainImage(pofolNo, $('#mainImageFile')[0].files[0]);
            
            MessageBox.success("등록됌", function () {
                LoadingUtils.closeLoading();
                location.href = '/portfolios/' + pofolNo;
            });
        });
    },
    // 메인 이미지 변경
    changeMainImage: function (pofolNo, imgFile) {
        var uploadForm = $('<form />');
        var formData = new FormData(uploadForm);
        formData.append('mainImage', imgFile);
        
        $.ajax({
            url: '/api/portfolios/' + pofolNo + '/main-image',
            type: 'PUT',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data: formData,
            async: false,
            success: function (response) {
            }
        });
    },
    // 특정 페이지의 파일 업로드
    uploadPageFile: function (pofolNo, fileUploadPool) {
        // 포폴 등록완료 시 나머지 파일들 등록
        _.forEach(fileUploadPool, function (e, i) {
            var uploadForm = $('<form />');
            var formData = new FormData(uploadForm);
            formData.append('file', e.fileData);
            
            $.ajax({
                url: '/api/portfolios/' + pofolNo + '/' + e.pageNo + '/file',
                type: 'POST',
                enctype: 'multipart/form-data',
                processData: false,
                contentType: false,
                data: formData,
                async: false,
                success: function (response) {
                }
            });
        });
    }
}

$(function () {
    initChooser();
    
    $("#btnAddPortfolioPage").on("click", function () {
        alertify.chooser($("#chooseTemplate").html());
    });
    
    $("#btnCreatePortfolio").on("click", services.createPortfolio);
    
    $("#inputHashTag").on("keydown", function(e) {
        if (e.keyCode == 13) {
            addHashTag($(this).val());
            $(this).val('');
        }
    });
    
    $("#btnAddHashTag").on("click", function () {
        addHashTag($("#inputHashTag").val());
        $("#inputHashTag").val('');
    });
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
    var pageData = {pageId: generatePageId(), pageNo: refreshPageNo()};
    
    var singlePageWrap = $('<div id="pageHolder' + pageData.pageNo + '" class="singlePageWrap"/>');
    
    singlePageWrap.append(pageTemplateBundle['controls'](pageData));
    singlePageWrap.append(pageTemplateBundle[pageType](pageData));
    
    $("#portfolioBodyWrap").append(singlePageWrap);
    getPageEditor(pageData.pageId).summernote(summernoteSettings);

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

function setVideoPreview(input, pageId) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
            // #videoPreview + pageId
            $('#videoPreview' + pageId).attr('src', e.target.result);
        }
        
        reader.readAsDataURL(input.files[0]);
    }
}

function deletePage(pageNo) {
    $('#pageHolder' + pageNo).remove();
    refreshPageNo();
}

function addHashTag(tagName) {
    $('#hashTagListArea').append('<a class="tags" href="#" rel="tag">#' + tagName + '</span>');
}