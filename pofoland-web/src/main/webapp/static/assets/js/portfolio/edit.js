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

var services = {
    validatePortfolio : function (data) {
        console.log(data);
        
        return true;
    },
    // 포트폴리오 수정
    editPortfolio : function () {
        var data = $("#editForm").serializeObject();
        var pageInfo = gatheringPageInfo();
        data["portfolioHashTags"] = gatheringHashTagInfo();
        data["portfolioPages"] = pageInfo.pages;
        
        if (services.validatePortfolio(data)) {
            LoadingUtils.loading();
            
            AjaxUtils.post('/api/portfolio', data, function (response) {
                var pofolNo = response.payloads;
                
                // TODO 수정된 파일 체크해서 올리고;
                services.uploadPageFile(pofolNo, pageInfo.files);
                
                // 대표이미지를 변경한 경우
                if ($('#mainImageFile')[0].files.length != 0) {
                    services.changeMainImage(pofolNo, $('#mainImageFile')[0].files[0]);
                }
                
                MessageBox.success("포트폴리오가 수정되었습니다.", function () {
                    LoadingUtils.closeLoading();
                    location.href = ctx + '/portfolio/' + pofolNo;
                });
            });
        } else {
            MessageBox.warning("에러");
        }
    },
    // 포트폴리오 메인 이미지 변경
    changeMainImage: function (pofolNo, imgFile) {
        var uploadForm = $('<form />');
        var formData = new FormData(uploadForm);
        formData.append('mainImage', imgFile);
        
        $.ajax({
            url: '/api/portfolio/' + pofolNo + '/main-image',
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
    // 페이지의 파일 업로드
    uploadPageFile: function (pofolNo, pofolPageFileList) {
        _.forEach(pofolPageFileList, function (pageFileInfo, idx) {
            var uploadForm = $('<form />');
            var formData = new FormData(uploadForm);
            formData.append('file', pageFileInfo.fileData);
            
            $.ajax({
                url: '/api/portfolio/' + pofolNo + '/' + pageFileInfo.pageNo + '/file',
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
    TemplateUtils.load();
    
    initPageTypeChooser();
    
    $("#btnAddPortfolioPage").on("click", function () {
        alertify.chooser($("#chooseTemplate").html());
    });
    
    $("#btnEditPortfolio").on("click", services.editPortfolio);
    
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
    
    AjaxUtils.get('/api/portfolio/' + pofolNo, null, function (response) {
        // TODO
        // 1. Form 기본정보 세팅
        // 2. 대표이미지 세팅
        // 3. 포트포리오 페이지 뿌리기
        
        var portfolio = response.payloads;
        
        _.forEach(portfolio.portfolioPages, page => {
            console.log(page);
            console.log(page.pofolPageTypeCd)
            switch (page.pofolPageTypeCd) {
            case TEXT_TYPE : 
                addPortfolioPage('text');
                break;
            case PICTURE_TYPE : 
                addPortfolioPage('picture');
                break;
            case MOVIE_TYPE : 
                addPortfolioPage('movie');
                break;
            }
        });
        
        LoadingUtils.closeLoading();
    });
});

// 페이지 유형 선택창 초기화
function initPageTypeChooser() {
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
    
    var singlePageWrap = $('<div id="pageHolder' + pageData.pageId + '" class="singlePageWrap"/>');
    
    singlePageWrap.append(TemplateUtils.generate('pageControls', pageData));
    singlePageWrap.append(TemplateUtils.generate(pageType + 'Template', pageData));
    
    $("#portfolioBodyWrap").append(singlePageWrap);
    getPageEditor(pageData.pageId).summernote(summernoteSettings);

    alertify.closeAll();
}

/**
 * 포트폴리오 페이지 번호 redraw 및 새 페이지 번호 반환 
 */
function refreshPageNo() {
    var pageNo = 1;
    
    _.forEach(getPortfolioPageList(), function (page) {
        $(page).find("#pageNo").text(pageNo);
        pageNo++;
    });
    
    return pageNo;
}

/**
 * internal 페이지ID 생성 (view에서만 사용되는 ID) 
 */
function generatePageId() {
    return PAGE_ID_GENERATOR++;
}

/**
 * pageId의 summernote에티더 object 반환
 */
function getPageEditor(pageId) {
    return $("#pageContentEditor" + pageId);
}

/**
 * pageId의 summernote에티더 object 반환
 */
function deletePage(pageId) {
    $('#pageHolder' + pageId).remove();
    refreshPageNo();
}

/**
 * 포트폴리오 페이지 목록 반환 
 */
function getPortfolioPageList() {
    return $('#portfolioBodyWrap').find('.portfolioPage');
}

/**
 * 해시태그 목록 반환 
 */
function getHashTagList() {
    return $('#hashTagListArea').find('.tags');
}

/**
 * 해시태그 추가 
 */
function addHashTag(tagName) {
    var isValid = true;
    
    if (!tagName) {
        MessageBox.warning('해시태그를 입력하세요');
        isValid = false;
    }
    
    var tagList = getHashTagList();
    
    if (tagList.length == 5) {
        MessageBox.warning('태그는 최대 5개까지만 등록이 가능합니다.');
        isValid = false;
    } else {
        _.forEach(tagList, function (tag, idx) {
            if ($(tag).attr('tagNm') == tagName) {
                MessageBox.warning('동일한 태그가 존재합니다.');
                isValid = false;
                return false;
            }
        });
    }
    
    if (isValid) {
        $('#hashTagListArea').append(TemplateUtils.generate('hashTagTemplate', {tagNm: tagName}));
    }
}

/**
 * 해시태그 삭제 
 */
function deleteTag(tagName) {
    var tagList = getHashTagList();
    _.forEach(tagList, function (tag, idx) {
        if ($(tag).attr('tagNm') == tagName) {
            $(tag).remove();
            return false;
        }
    });
}

/**
 * 해시태그 정보 취합 
 */
function gatheringHashTagInfo() {
    var tags = [];
    var tagOrder = 1;
    
    _.forEach(getHashTagList(), function (tag, i) {
        tags.push({
            tagNm: $(tag).attr('tagNm'),
            tagOrder: tagOrder++
        });
    });
    
    return tags;
}

/**
 * 포트폴리오 페이지 정보 취합
 * 
 *  pages : 포트폴리오 각 페이지
 *  files : 업로드할 사진/동영상 파일 정보
 */
function gatheringPageInfo() {
    var pages = [];
    var files = [];
    
    _.forEach(getPortfolioPageList(), function (page, i) {
        var type = $(page).attr('type');
        var pageId = $(page).find('#pageId').val();
        var content = getPageEditor(pageId).summernote('code');
        var pageNo = i + 1;
        
        if (type != TEXT_TYPE) {
            files.push({
                pageNo: pageNo,
                fileData: $(page).find('input[type=file]')[0].files[0]
            });
        }
        
        pages.push({
            sortOrder: pageNo,
            pofolPageTypeCd: type,
            pofolPageCont: content
        });
    });
    
    return {pages: pages, files, files};
}