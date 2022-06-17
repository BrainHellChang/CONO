<%@page import="com.itwillbs.cono.vo.ShopDTO"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.mysql.cj.x.protobuf.MysqlxDatatypes.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>상점</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/my_page.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/sass/my_page.scss">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
<script src="${path}/resources/js/jquery-3.6.0.js"></script>
<%-- <script defer src="${pageContext.request.contextPath}/resources/js/store.js"></script> --%>
<!-- <script defer src="../js/reviews.js"></script>상점 상품후기 수 -->
<script type="text/javascript">
	$(function() {
		$("#product").on("click", function() {
			$.ajax({
				type: "GET",
				url: "shopProduct",
				dataType: "text",
				data: {
					shop_idx : ${shopInfo.get('shop_idx') }
				}
			})
			.done(function(data) {
				$("#shop_resultArea").html(data);
			})
			.fail(function() {
				$("#shop_resultArea").html("요청 실패");
			})
		});
		$("#review").on("click", function() {
			$.ajax({
				type: "GET",
				url: "shopReview",
				dataType: "text",
				data: {
					shop_idx : ${shopInfo.get('shop_idx') }
				}
			})
			.done(function(data) {
				$("#shop_resultArea").html(data);
			})
			.fail(function() {
				$("#shop_resultArea").html("요청 실패");
			})
		});
		$("#follower").on("click", function() {
			$.ajax({
				type: "GET",
				url: "shopFollower",
				dataType: "text",
				data: {
					shop_idx : ${shopInfo.get('shop_idx') }
				}
			})
			.done(function(data) {
				$("#shop_resultArea").html(data);
			})
			.fail(function() {
				$("#shop_resultArea").html("요청 실패");
			})
		});
		$("#following").on("click", function() {
			$.ajax({
				type: "GET",
				url: "shopFollowing",
				dataType: "text",
				data: {
					shop_idx : ${shopInfo.get('shop_idx') }
				}
			})
			.done(function(data) {
				$("#shop_resultArea").html(data);
			})
			.fail(function() {
				$("#shop_resultArea").html("요청 실패");
			})
		});
	});
</script>
<style type="text/css">
	#under_nav_bar {
		width: 1040px;
		height: 50px;
		text-align: center;
		margin-bottom: 30px;
		margin-left: 505px;
		margin-right: 505px;
	}
	#under_nav_bar li {
		width: 260px;
		list-style-type: none;
		float: left;
		text-align: center;
	}
	#shop_resultArea {
		margin-bottom: 50px;
		width: 100%;
		height: 500px;
	}
</style>
</head>
<body>
	<div>
		<!-- 상단 부분 -->
			<jsp:include page="../../header_footer/header.jsp"/>
	</div>
	
	<div id="shopInfo">
		<div id="storeBody" style="
		    width: 2050px;
		    height: 750px;" > 
			<div id="storeWrap"> <h2 style="font-family: Cafe24Ohsquare;">
								${shopInfo.get('shop_name') }의 상점 [${shopInfo.get('member_date') }]</h2> 
				<hr class="hr-13">
				
				<div id="storeTop">
					<div id="profileLeftWrap">
						<div id="profileLeft">
								<div class="background1">
							<div class="backgroundImg"></div>
								</div> <!-- // (1) background -->
							<div class="background2">
								<div class="profileLink"> 
									<!-- 프로필 기본 이미지 -> 프로필 사진 변경 -->
									<div id="preview">
										<img width="50" height="50" alt="상점 프로필 이미지" class="profileImage" src="">
										<c:choose>
										<c:when test="${shopInfo.get('shop_img') eq null }">
											<img alt="상점 이미지" src="<spring:url value='/resources/default_img.png'/>">
										</c:when>
										<c:when test="${shopInfo.get('shop_img') ne null }">
											<img alt="상점 이미지" src="<spring:url value='/resources/upload/shopImg/${shopInfo.get("shop_img") }'/>">
										</c:when>
										</c:choose>
									</div>
								</div>
							</div>
							
							<ul role="list">
								  <li data-icon="🦄"> 판매자 ID :${shopInfo.get('member_id') }</li>
								  <li data-icon="🌈"> 상점소개 :  ${shopInfo.get('shop_content') }</li>
								  <li data-icon="😎"> 팔로워 : ${followerCnt }명 </li>
							</ul>
								
							<div id="middleWrap">
								<div class="rigthIndi">
									<div class="storeIndication">
										<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAAAXNSR0IArs4c6QAAAQBJREFUSA1jZCASNOz/z3L34Z1aBkaGZLCW/wxzleVVmhscGf8QYwQLMYpAakCW/GdgqGMAElBQBxQDMethAvhoJnySKHIwnyALYhNDlkdiE28RkiZymMRbBIwTDAuwiWEogggQHUegiAfHCSy4oIkBh7kjQJgxdtHtUIZ/jJP+M/yXoIV/GRkYXzAw/c9joqUlIIeDPQD0CPGpjkLvMoG8BfYehQbh0g4LOkZcCkDiMQtuIwocfAqhcksSVHGaR8egI8Kl1FAy6iOyQ5HoQhVkA3qqIiVVjsYR2XE0woIOubBFZsPCD1kMmQ2TR6bxBx20ZAcbAmQjawSzCckjaQAAJL9HBV3GwxoAAAAASUVORK5CYII=" width="14" height="15" alt="상점방문수 아이콘">판매횟수 <div class="reviewIndicateNum"></div>
									</div>
									<!-- (3) 상품 갯수  -->
									
									<div class="storeIndication">
										<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAAAXNSR0IArs4c6QAAAl1JREFUSA21Vc9PE1EQnnktW2yIFy9GiCduSki4QjSGwA3qj248q/HCwQtnwg//CxKrMd4WMO2RQrxwkbQmBI0XExMxqQk3TTAt7Q4zu91l231btrq85KWz33wz39v3vn0F6HOYO7nHMvssA+ynwPxgXrebjc9So9LGbeue9StuvYpLFJ592lgHomsynbiP4thC+XLuCQDN8Rb8limxi8VTi7V1Ztm8SVQ/JICriPhUWhNRwRHFzJg1Y/24SO7CN+KGSNAotEVKGzPF1zJZsCSYk2POfwvld+8vsNg0dzq+klXPvYYSCyY54Xh41G/PlbDLRu3T+gEXZ1UKH1rTxffBRuZu7oHdoi3GTtRAZpxd+C2YD8aRW7dCK4pF3jA5y9v0tltEmggmOeEIV2oE143IxJedT4tcMAmARwjGC12xYG4Oj4TbrtFSMV+e/0kEw9psYiDWFBDuJ9YvohEiVWXrPkbkk4QrSim69DcCTFXV0CBUENBOcvndvQYNrKrCVOkPXyhfu5OhZ4SmAlxWqcyIMzlmyzVDvBCAtXd3tmppB0c2BNGtECcAKMKX1mxxLQCtmds5sIFWA1goFCMI6H5HGMMQKeNVqIsOC5Gg4gvxfXV5hmAj+EJj6YlDvkr+hhcTQFqNZ4EnN9RhXSQxgkD+pfpoe36Pn/nKiRhiBj4n8LaLRWykJSBwz1lbhrXN2eINSfkkfqN93sJoIW7oHHyrfn74/IfUa3hGEI5/qWIcQ/Tqqs85RugQggEjeUO0jdAhZN21vvOBHesX9m+oZ4QOIaeVfLiJDfdG8NqdARu11RN7gt5lAAAAAElFTkSuQmCC" width="14" height="15" alt="상품판매 아이콘">상품갯수<div class="sellIndicateNum"></div>
									</div>
								
	<!-- 								<div class="storeStar">  -->
	<!-- 									<img width="20" height="23" class="star1" alt="별 " src="resources/img/star.png" > -->
	<!-- 									<div class="starIndicateNum"> 별점 0 / 5 </div> -->
	<!-- 								</div> -->
								</div>
							</div>
						</div>
					</div><!-- middleWrap -->
				</div>
			</div>
		</div><!-- //storeTop -->
		<div id="under_nav_bar">
			<ul>
				<li id="product">상품</li>
				<li id="review">후기</li>
				<li id="follower">팔로워</li>
				<li id="following">팔로잉</li>
			</ul>
		<div id="shop_resultArea"></div>
		</div>
	</div>
	
	<div>
		<!-- 하단 부분 -->
		<footer style="position: relative; top:800px;" 
			<jsp:include page="../../header_footer/footer.jsp"/>
		></footer>
	</div>
</body>
</html>