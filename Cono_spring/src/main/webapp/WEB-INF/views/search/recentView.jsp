<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.recent_li {
	list-style: none;
}
.recent_Box {
    text-decoration: none;
    background-color: #1E2027;
    position: fixed;
	top: 100px;
    height: auto;
    padding: 10px;
    right: 20px;
    width: 134px;
    border-radius: 10px;
}
.recent_title_box {
	position: relative;
	color: #DDFFFF;
	background-color: #292C35;
	margin: auto;
	width: 140px;
	height: 25px;
	border-radius: 5px; 
	text-align: center;
}
.recent_ul {
 	margin: auto;
 	position: relative;
 	padding-left: 0px;
}
.recent_li {
	background-color: #292C35;
	position: relative;
	width: 130px;
	height: 150px;
	border-radius: 5px;
	margin: auto;
	margin-top: 10px; 
	text-align: center;

}
.recent_li_box{

}
.recent_img {
	position : relative;
	top: 5px;
	margin : auto;
	width : 120px;
	height: 120px;
}

.recent_item_title {
	line-height: -10px;
	color: #DDFFFF;
	overflow:hidden;
    text-overflow:ellipsis;
    white-space:nowrap;
}

</style>
<script type="text/javascript">
	function btnView() {
		var r_ul = document.getElementById("recent_ul");
		var r_btn = document.getElementById("r_btn");
		
       if(r_ul.style.display == "" || r_ul.style.display == "none") {
    	   r_ul.style.display = "block";
    	   r_btn.innerHtml="펼치기";
       } else {
    	   r_ul.style.display = "none";
    	   r_btn.innerHtml="접기";
       }
	}
</script>
</head>
<body>
	<div class="recent_Box">
		<div class="recent_title_box">
			<span>최근 조회</span>
			<input type="button" value="펼치기" id="r_btn" onclick="btnView()">
		</div>
			<ul class="recent_ul" id="recent_ul" style="display: none;">
<!-- 				<c:forEach var="img" items=""> -->
					
<!-- 				</c:forEach> -->
					<li class="recent_li" onclick="">
						<div class="recent_li_box">
							<input type="hidden" value="">
							<img class="recent_img" src="">
							<div class="recent_item_title">치즈냥이 좋아</div>
						</div>
					</li>
					<li class="recent_li" onclick="">
						<div class="recent_li_box">
							<input type="hidden" value="">
							<img class="recent_img" src="">
							<div class="recent_item_title">고양이귀여워</div>
						</div>
					</li>
					<li class="recent_li" onclick="">
						<div class="recent_li_box">
							<input type="hidden" value="">
							<img class="recent_img" src="">
							<div class="recent_item_title">귀여운게 젤 좋아</div>
						</div>
					</li>
					<li class="recent_li" onclick="">
						<div class="recent_li_box">
							<input type="hidden" value="">
							<img class="recent_img" src="">
							<div class="recent_item_title">공룡이 더 귀여워</div>
						</div>
					</li>
					<li class="recent_li" onclick="">
						<div class="recent_li_box">
							<input type="hidden" value="">
							<img class="recent_img" src="">
							<div class="recent_item_title">뱃살</div>
						</div>
					</li>
			</ul>
		
	</div>
</body>
</html>