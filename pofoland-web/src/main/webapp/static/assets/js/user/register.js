$(document).ready(function(){
	
})

var service = {
	
	loginValidation : function() {
		var email = $('#email').val();
		var password = $('#password').val();
		var passwordConfirm = $('#passwordConfirm').val();
		var nickName = $('#nickName').val();
		
		var checkYn = true;
		
		if ( email == '' ) {
			MessageBox.warning('이메일을 입력하여 주세요.');
			checkYn = false;
		} else if ( emailFormatYn( email ) ) {
			MessageBox.warning('이메일 형식이 맞지 않습니다.');
			checkYn = false;
		} else if ( password == '' ) {
			MessageBox.warning('비밀번호를 입력하여 주세요.');
			checkYn = false;
		} else if ( passwordConfirm == '' ) {
			MessageBox.warning('비밀번호 확인을 입력하여 주세요.');
			checkYn = false;
		} else if ( password != passwordConfrim ) {
			MessageBox.warning('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
			checkYn = false;
		} else if ( nickName == '' ) {
			MessageBox.warning('닉네임을 입력하여 주세요.');
			checkYn = false;
		} else if ( !$('#userInfoCheckbox').is(':checked') ) {
			MessageBox.warning('개인정보 활용에 동의하여 주세요.');
			checkYn = false;
		}
		
		return checkYn;
	},
	
	login : function() {
		
		if ( service.loginValidation() ) {
			return false;
		}
		
		AjaxUtils.post({
			url : '',
			data : {
				
			},
			success : function( response ){
				
			},
			error : function( error ){
				
			}
		})
	}
}

$(document).on('click','#registerBtn',function(){
	service.login();
})