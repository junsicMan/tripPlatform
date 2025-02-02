<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">	
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
	;

* {
	margin: 0;
	font-family: "Noto Sans KR", sans-serif;
}

a {
	text-decoration: none;
}

img {
	display: block;
}

ul, li {
	padding: 0;
	list-style: none;
	margin: 0;
}

/*베이직 푸터*/
.other_footer {
	width: 100%;
	display: flex;
	justify-content: center;
	bottom: 0;
	margin-bottom: 80px;
}

.other_footer .other_footer_wrap {
	width: 100%;
	max-width: 57rem;
	height: 260px;
	padding: 0px 30px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #f2f2f2;
	box-sizing: border-box;
}
.footer_top {width:100%; display:flex; justify-content: space-between; align-items: center;}

.footer_top a {color: black;}
.foot_logo img {width:100%; max-width: 200px;}
.other_footer_box {width:100%; position: relative;}
.foot_nav ul {display:flex;}
.foot_nav ul li{margin-right: 15px;} 
.footer_mid h1 {font-size:18px; 
    margin-bottom: 5px;
    font-size: 22px;
}

.footer_mid {margin-bottom: 20px; margin-left:10px;}
.footer_bottom {margin-bottom: 20px; width:100%; max-width: 600px; margin-left:10px;}

.footer_bottom p {font-size : 14px;}

.style_cont {text-align : right;
    position: absolute;
    bottom: 10px;
    right: 0;
    
}

.style_cont p {font-size: 40px;
	color : #007bff;
    font-weight: bold;
    font-family: "Black Han Sans", sans-serif;
    letter-spacing : 2px;
    }
</style>
<script>
	function realtimeChat(){
		window.open('http://192.168.30.6:3000', 'chatWindow', 'width=350,height=620,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no,addressbar=no,noopener noreferrer');
	}
</script>
</head>


<body>

	<footer class="other_footer">
		<div class="other_footer_wrap">
			<div class="other_footer_box">
				<div class="footer_top">
					<div class="foot_logo">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/img/logo.png">
						</a>
					</div>
					<div class="foot_nav">
						<ul>
							<a href="/Uannouncement"><li>공지사항</li></a>
							<a href="/freeboard"><li>게시판</li></a>
							<a href="#"><li>개인정보처리방침</li></a>
							<a href="#"><li>이용약관</li></a>
							<li><button onclick="realtimeChat()" >실시간상담</button></li>
						</ul>
					</div>
				</div>
				<div class="footer_mid">
					<h1>PROJECT MEMBER</h1>
					<p><span>팀원 : </span><span> 고형석, 류영훈, 방준식, 이민웅, 정성훈, 신동철</span></p>
				</div>
				<div class="footer_bottom">
					<p>※ 본 프로젝트는 지역별, 테마별 여행지를 관리하고 리스트를 토대로 일반 유저들에게 여행 추천을 해주기 위한 온라인 플랫폼 서비스 구현을 목적으로 만들었습니다.</p>
				</div>
				<div class="style_cont">
					<p>TEAM</p>
					<P>PROJECT</P>
				</div>
			</div>
		</div>
	</footer>
   <%-- <jsp:include page="/session.jsp" />  --%>

</body>
</html>