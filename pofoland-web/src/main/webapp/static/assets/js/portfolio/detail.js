$(function (){
    $(document).on('click', '#btnEditPortfolio', function () {
        location.href = '/portfolio/' + pofolNo + '/edit';
    });
    
    $(document).on('click', '#btnDelPortfolio', function () {
        AjaxUtils.delete('/api/portfolio/' + pofolNo, undefined, function (response) {
            MessageBox.success('포트폴리오가 삭제되었습니다.', function () {
                location.href = '/portfolio';
            });
        });
    });
});