// 로그인 정보 데이터
let loginData = {};

$(document).ready(function(){
    // 가입 경로 설정
    loginData.userJoinSeCd = userJoinSeCd;
    // 기본정보 셋팅
    service.init();
});

var service = {
    
    login: function() {
        
        loginData.userEmail = $('#userEmail').val();
        loginData.password = $('#password').val();
        if (!loginData.userEmail || !loginData.password) {
            MessageBox.warning('아이디나 비밀번호를 입력하여주세요.', function(){
                return;
            });
        }
        
//        AjaxUtils.post(
//            '/api/user',
//            loginData,
//            function(result){
//                MessageBox.success(registerData.userNickNm + '님 회원가입을 축하드립니다.', function () {
//                    location.href = '/portfolio/portfolios';
//                });
//            },
//            function(error){
//                // 처리필요
//                console.log(error);
//            }
//        )
    }
}
$(document).on('click', '#loginBtn', function() {
    service.login();
});