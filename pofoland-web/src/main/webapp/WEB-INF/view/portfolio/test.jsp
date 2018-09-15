<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <h1>API 예시</h1>
    
    <h2>조회</h2>
    <p>
        GET 메소드 이용 페이지 : <input type="text" id="page" /> <button type="button" onclick="find();">조회</button>
        
        <div id="findResult"></div>
    </p>
    
    <hr>
    
    <script>
        $(function() {
            var portfolio = {
                    pofolNm: "포폴 제목",
                    pofolDesc: "포트폴리오 설명쓰"
            };
        });
        
        function find() {
            AjaxUtils.get("/api/portfolios?pageNo=" + $("#page").val(), {}, function (response) {
                var result = $("#findResult");
                var data = response.payloads;
                
                var template = _.template("<p>\\${portfolio.pofolNm} - \\${portfolio.pofolDesc}</p>");
                
                result.empty();
                
                _.forEach(data.list, function (e) {
                    result.append(template({portfolio: e}));
                });
            });
        }
        
        function createPortfolio() {
            AjaxUtils.post("/api/portfolios", portfolio, function (response) {
                MessageBox.success(" ㅋㅋ");
            });
        }
        
    </script>
</div>