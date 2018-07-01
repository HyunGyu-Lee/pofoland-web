
// document ready
$(function () {
    $("#btnLogin").on("click", processLogin);
    
    $("#userPwd").on("keypress", function (e) {
        if (e.keyCode == 13) {
            processLogin();
        }
    });
});

function processLogin() {
    AjaxUtils.post(
        '/api/login/login-process',
        '#loginRequest',
        function (response) {
            var loginResult = response.data;
            
            if (loginResult.statusCode == "SUCCESS") {
                location.href = ctxUrl("/main");
            } else {
                MessageBox.danger(loginResult.message);
            }
        }
    );
}