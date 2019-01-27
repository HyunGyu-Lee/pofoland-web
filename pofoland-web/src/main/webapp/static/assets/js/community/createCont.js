$(function() {
	/** Summernote Editor Setting */
	let editor = $("#boardCont");
	if (editor) {
		editor.summernote({
			height: 300, // Default Height 300
			codemirror: {
			      mode: 'text/html',
			      htmlMode: true,
			      lineNumbers: true,
			      theme: 'monokai'
			    }
		});
	};
});

/**
 * Content List Page
 */
$('#btnContList').on('click', function() {
	// 페이지이동(공통함수)로 처리하기
	alert('개발 중입니다.');
})

/**
 * Insert Content
 */
$('#btnInsertCont').on('click', function() {
	/** Validation Check */
	if (!validChk()) {
		return false;
	}
	
	let boardTtl = $('#boardTtl').val();
	let boardCont = $('#boardCont').summernote('code');
	let boardSeCd = $('select[name=boardSeCd] option:selected').val();
	const params = {
		 "boardSeCd"	: boardSeCd	// 게시판구분코드
		,"boardTtl"		: boardTtl	// 제목
		,"boardCont"	: boardCont	// 내용
	};
	
	// Ajax
	$.ajax({
		url: "/api/community"
		,method : "POST"
		,data : JSON.stringify(params)
		,dataType : "JSON"
		,contentType : "application/json; charset=UTF-8"
		,async : false
		,error : function(err, xhr, code) {
			alert('err: ' + JSON.stringify(err) + ', xhr: ' + xhr + ', code: ' + code);
		}
		,success : function(response) {
			let boardNo = response.payloads;
			if (response.payloads === 0) {
				MessageBox.warning(MSG.CREATE_TO_FAILED); // 등록에 실패하였습니다.
			} else {
				MessageBox.success(MSG.CREATE_TO_SUCCESS, function() {
					location.href = "/community/select-dtl-cont/"+boardNo;// 등록이 완료되었습니다.
				});
			}
			
		}
	});
	
});

/**
 * Validation Check
 */
const validChk = function() {
	let title = $('#boardTtl');
	let contentYn = $('#boardCont').summernote('isEmpty');
	
	// Title
	if (_.isEmpty($.trim(title.val()))) {
		alert("제목을 입력해주세요.");
		title.focus();
		return false;
	}
	// Content
	if (contentYn) {
		alert("내용을 입력해주세요.");
		editor.summernote({ focus: true });
		return false;
	}
	
	return true;
};