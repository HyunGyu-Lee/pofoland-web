var registerData = {}

$(document).ready(function(){
    // 가입 경로 설정
    registerData.userJoinSeCd = userJoinSeCd;
})

var service = {
    
    loginValidation : function() {
        registerData.userEmail = $('#userEmail').val();
        registerData.userPwd = $('#userPwd').val();
        userPwdConfirm = $('#userPwdConfirm').val();
        registerData.userNickNm = $('#userNickNm').val();
        
        var checkYn = true;
        
        if (registerData.userEmail == '') {
            MessageBox.warning('이메일을 입력하여 주세요.');
            checkYn = false;
        } else if (!emailFormatYn(registerData.userEmail)) {
            MessageBox.warning('이메일 형식이 맞지 않습니다.');
            checkYn = false;
        } else if (registerData.userPwd == '') {
            MessageBox.warning('비밀번호를 입력하여 주세요.');
            checkYn = false;
        } else if (userPwdConfirm == '') {
            MessageBox.warning('비밀번호 확인을 입력하여 주세요.');
            checkYn = false;
        } else if (registerData.userPwd != userPwdConfirm) {
            MessageBox.warning('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
            checkYn = false;
        } else if (registerData.userNickNm == '') {
            MessageBox.warning('닉네임을 입력하여 주세요.');
            checkYn = false;
        } else if (!$('#userInfoCheckbox').is(':checked')) {
            MessageBox.warning('개인정보 활용에 동의하여 주세요.');
            checkYn = false;
        }
        
        return checkYn;
    },
    
    register : function() {
        
        if (!service.loginValidation()) {
            return;
        }
        
        AjaxUtils.post(
            '/api/user',
            registerData,
            function(result){
                MessageBox.success(registerData.userNickNm + '님 회원가입을 축하드립니다.', function () {
                    location.href = '/portfolio/portfolios';
                });
            },
            function(error){
                // 처리필요
                console.log(error);
            }
        )
    }
}

$(document).on('click', '#registerBtn', function() {
    service.register();
})