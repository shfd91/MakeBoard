<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- Daum 지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 자바스크립트 -->
<script type="text/javascript">

</script>

<style type="text/css">
	
	.joinAgree {
		text-align: left;
		margin: auto;
	}
	
	table {
		text-align: left;
		margin: auto;
	}
	
	input {
		border: 1px solid #ccc;
		color: black;
		height: 30px;
	}
	
	.modal {
	        text-align: center;
	        color: white;
	}
	
	.modal-backdrop {
			background-color: rgb(0,0,0); /* Fallback color */
	        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	
	@media screen and (min-width: 768px) { 
	        .modal:before {
	                display: inline-block;
	                vertical-align: middle;
	                content: " ";
	                height: 100%;
	        }
	}
	
	.modal-body {
		text-align: center;
	
		vertical-align: middle;
		
		margin: 30px 30px 30px 30px;
		border: 1px solid #ccc;
		border-radius: 15px;
	}
	
	.modal-dialog {
	    display: inline-block;
		vertical-align: middle;
	}
	
	.modal-content  {
	    -webkit-border-radius: 15px !important;
	    -moz-border-radius: 15px !important;
	    border-radius: 15px !important; 
	}
	
	.barBandJoinTable {
		vertical-align: middle;
		text-align: center;
		margin: auto;
	}
	
	.loginBtn {
		height:16px;
		color:#f1f1f1;
		font-family:arial;
		font-size:20px;
		padding: 0 10px 0 10px;
		text-decoration:none;
		height: 28px;
		
		border: none;
		background-color: rgba(0,0,0,0);
	}
	
	.loginBtn:hover {
	/* 	color:#D4F4FA; */
		color: gold;
		height: 28px;
	/* 	메뉴 밑줄 색상 */
		border-bottom:3px solid #ffffff;
	}
	
	.close {
		margin-right: 15px;
		margin-top: 10px;
	}
	
	.backBtn {
		float: left;
		margin-left: 5px;
		margin-top: 10px;
		border: none;
		outline: none;
		background-color: white;
		color: #BDBDBD;
	}
	
	.barJoinImg, .bandJoinImg {
		width: 150px;
		height: 150px;
		border-radius: 20px;
	}
	
	#previewBandPic, #previewBarPic {
		height: 100px;
		width: 100px;
		border-radius: 50px;
	}
	
	#btnLogin, .btnBarJoin, .btnBandJoin, .findIdBtn, .findPwBtn, .deleteMember,
			.findIdConfirmBtn, .findPwConfirmBtn {
		border: none;
		outline: none;
		color: gold;
		background-color: #181818;
		
		height: 40px;
		width: 80%;
	}
	
	.nextBtn {
		border: 1px solid white;
		outline: none;
		background-color: white;
		
		font-weight: bold;
		
		height: 40px;
	}
	
	.headerTitle {
		padding:10px;
		color:#ffffff;
		cursor:pointer;
	}
	
	#headerMenu {
	 	float:right; 
		text-align:right;
		margin:0px 5px 3px 5px;
		padding:0 100px 3px 10px;
		box-shadow: 0px 0px 15px rgba(0,0,0,.3);
		-moz-box-shadow: 0px 0px 15px rgba(0,0,0,.3);
		-webkit-box-shadow: 0px 0px 15px rgba(0,0,0,.3);
		-o-box-shadow: 0px 0px 15px rgba(0,0,0,.3);
		-moz-border-radius: 3px;
		-khtml-border-radius: 3px;
		-webkit-border-radius: 3px;
		border-radius: 3px;
	/* 	background-color:#5c5c5c; */
	}
	
	#headerMenu ul li{
		float:left;
		list-style-type:none;
	}
	
	#headerMenu a {
		height:16px;
		color:#f1f1f1;
		font-family:arial;
		font-size:20px;
		padding:0 10px 0 10px;
		text-decoration:none;
	}
	
	#headerMenu a:hover {
	/* 	color:#D4F4FA; */
		color: gold;
	/* 	메뉴 밑줄 색상 */
		border-bottom:3px solid #ffffff;
	}
	
	#headerMenu ul ul {
		display:none;
		position:absolute;
		background-color:#000000;
	}
	
	#headerMenu ul li:hover ul {
		display: block;
	}
	
	#headerMenu ul ul li {
		float:none;
		text-align:left; /* 글 왼쪽 정렬 */
	}
	
	.mainImage {
		width:300px;
		height:150px;
		cursor:pointer;
	}
	
	.searchBtn {
		color: black;
		font-weight: bold;
		background: gold;
		border-radius:10px;
		border-color: gold;
	}
	
	.acceptBtnBlue {
		color: white;
		font-weight: bold;
		background: MidnightBlue ;
		border-radius:10px;
		border-color: MidnightBlue ;
	}
	
	.acceptBtnRed {
		color: white;
		font-weight: bold;
		background: IndianRed  ;
		border-radius:10px;
		border-color: IndianRed  ;
	}
	
	table.type10 tr th {
		text-align: center;
		color:#000;
		background-color: gold;
	}
	
	table.type10 tr td {
		text-align: center;
/* 		border-left: 1px solid white; */
/* 		border-right: 1px solid white; */
		color:#fff;
		background-color: black;
	}
	
	table.type10 {
	    border-collapse: collapse;
	    text-align: left;
	    line-height: 1.5;
/* 	    border-top: 1px solid #ccc; */
/* 	    border-bottom: 1px solid #ccc; */
/* 	    margin: 20px 10px; */
	    width: 700px;
	}
	
	table.type10 thead th {
/*  	    width: 700px; */
 	    padding: 10px;
	    font-weight: bold;
	    vertical-align: top;
	    color: black;
	    background: gold;
	    margin: 20px 10px;
	    border-radius:200px;
	}
	table.type10 tbody th {
 	    width: 150px; 
	    padding: 10px;
	}
	
	table.type10 tbody tr:hover {
	    width: 150px;
/* 	    padding: 10px; */
	    background:gold;
	}
	
	table.type10 td {
 	    width: 700px;
	    padding: 10px;
	}
	table.type10 .even {
	    background: #222 ;
	}
	
</style>
<!-- 헤더 타이틀 -->

<!-- 헤더 메뉴 -->
<div id="headerMenu">
	<ul>
	<li><a href="/bar/barlist">Bar</a></li>
	
	<li><a href="/band/bandList">Band</a>
		<ul>
			<li><a href="#">Bebob</a></li>
			<li><a href="#">Swing</a></li>
			<li><a href="#">Punk</a></li>
			<li><a href="#">Modern</a></li>
			<li><a href="#">Bosa Nova</a></li>
			<li><a href="#">Boogie Woogie</a></li>
		</ul>
	</li>
	
	<li><a href="/advertise/list">Advertise</a>
		<ul>
			<li><a href="/advertise/list">ALL List</a></li>
			<li><a href="/advertise/adscate">MemBer</a></li>
			<li><a href="/advertise/adscateCol">Collaboration</a></li>
		</ul>
	</li>
	
	<li><a href="/notice/list">Board</a>
		<ul>
			<li><a href="/notice/list">Notice</a></li>
			<li><a href="/faq/list">FAQ</a></li>		
		</ul>
	</li>
	
	<c:if test="${not login }">
	<li><button class="loginBtn" data-target="#loginModal" data-backdrop="false" data-toggle="modal">Login</button>
	</li>
	</c:if>
	
	<c:if test="${login }">
	<li><a>${loginInfo.userName }</a>님
		<ul>
			<li><a href="/mypage/info">계정관리</a></li>
			<li><a href="/member/logout">로그아웃</a></li>
			<li><a data-toggle="modal" href="/main#deleteMemberModal" class="deleteMemberBtn" style="cursor: pointer;">계정탈퇴</a></li>
		</ul>
	</li>
	</c:if>
	
	</ul>
</div><br>

<hr>