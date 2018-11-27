$(document).ready(function() {
	let selector = $("div#paginationInfo");
	let pagination = "${pageInfo}";
	let url = "${ctx}/community/${boardSeNm}";
	paginationInfo(selector, pagination, url);
});