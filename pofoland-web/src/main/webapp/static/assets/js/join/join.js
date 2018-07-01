var joinForm;

// document ready
$(function () {
    joinForm = $("#joinRequest");
    
    // 사용자ID 중복체크 버튼 클릭 이벤트
    joinForm.find("#btnUserIdDuplicateCheck").on("click", validProcessDuplicateCheck);
    
    // 가입완료 버튼 클릭 이벤트
    joinForm.find("#btnProcessJoin").on("click", validProcessJoin);
});

// 사용자ID 중복체크 검증
function validProcessDuplicateCheck() {
    var userId = joinForm.find("#userId").val();
    
    if (_.isEmpty(userId)) {
        MessageBox.warning("아이디를 입력하십시오.");
        
        return false;
    } else {
        processDuplicateCheck(userId);
    }
}

// 사용자ID 중복체크 단위 기능
function processDuplicateCheck(userId) {
    AjaxUtils.get(
        ctxUrl('/api/join/duplicate-check/' + userId),
        '',
        function (response) {
            if (response.data) {
                MessageBox.warning("이미 사용중인 ID입니다.");
            } else {
                MessageBox.success("사용할 수 있는 ID입니다.");
                joinForm.find("#userId").attr('disabled', true);
            }
        }
    );
    
    joinForm.find("#userIdDuplicateCheckValue").val("OK");
}

// 회원가입 요청 검증
function validProcessJoin() {
    // 아이디 중복확인 수행여부 검사
    if (isUserIdDuplicateCheckOk() == false) {
        MessageBox.warning("아이디 중복확인을 수행하셔야 가입진행이 가능합니다.");
        return false;
    } 
    
    // 이용약관 동의 검사
    if (isUserAgree() == false) {
        MessageBox.warning("이용약관에 동의하셔야 가입진행이 가능합니다.");
        return false;
    }
    
    processJoin();
}

// 회원가입 단위 기능
function processJoin() {
    AjaxUtils.post(
            ctxUrl('/api/join'),
            '#joinRequest',
            function (response) {
                MessageBox.success("회원가입에 성공하셨습니다.", function () {
                    location.href = ctxUrl('/login');
                });
            }
        );
}

// 검증함수
function isUserAgree() {
    return joinForm.find("#chkUserAgree").is(":checked");
}

// 사용자 중복확인 여부 검사
function isUserIdDuplicateCheckOk() {
    return joinForm.find("#userIdDuplicateCheckValue").val() == "OK";
}