<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 네이게이션 function 모음    -->
<script>

//내 정보 
function memberInfo() {
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "memberinfo";
	f.action = "MemberInfo";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.memberinfo.submit();
}

//내 메세지함 
function messageReceiveInfo(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "messagereceiveinfo";
	f.action = "MessageReceiveInfo";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.messagereceiveinfo.submit();

}


// 메인 페이지로 이동  위치: 홈으로 + 로고 
function goToMain() {
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "gotomain";
	f.action = "GoToMain";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.gotomain.submit();
}

//로그아웃 	 	위치: 우측 끝 
function accessOut() {
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "accessout";
	f.action = "AccessOut";
	f.method = "get";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.accessout.submit();
}


//회원탈퇴

function memberDrop(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "memberdrop";
	f.action = "MemberDrop";
	f.method = "get";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.memberdrop.submit();
}
//내정보 --> 패스워드 재입력 페이지
function pwCheckPage(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "pwcheckpage";
	f.action = "PwCheckPage";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.pwcheckpage.submit();

}


//??? 메세지 인포
function messageInfo(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "messageinfo";
	f.action = "MessageInfo";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.messageinfo.submit();

}



function browser_close() {

	accessOut();
	return "이 페이지 나가기를 누르시면 로그아웃이 됩니다.";
}


//message 페이지 전용 


//메세지 쓰기 페이지 이동
function messageSendPage(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "messagesendpage";
	f.action = "MessageSendPage";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);

	document.messagesendpage.submit();
}

//내게 메세지 쓰기
function messageToMeSendPage(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "messagesendpage";
	f.action = "MessageSendPage";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	i.type = "hidden";
	i.name = "remmid";
	i.value = "${mmid}";
	f.appendChild(i);

	document.messagetomesendpage.submit();
}

//보낸 메세지 보기
function messageSent(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "messagesent";
	f.action = "MessageSent";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);

	document.messagesent.submit();
}

//회원 지역 수정 
function memberLcUpdatePage(){

	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "memberlcupdatepage";
	f.action = "MemberLcUpdatePage";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	document.memberlcupdatepage.submit();
}



//프로필 수정 
function memberInfoProfile(){
	var f = document.createElement("form");
	var i = document.createElement("input");
	f.name = "memberinfoprofile";
	f.action = "MemberInfoProfile";
	f.method = "post";
	document.body.appendChild(f);

	i.type = "hidden";
	i.name = "mmid";
	i.value = "${mmid}";
	f.appendChild(i);
	/* i.style.display="none"; */
	document.memberinfoprofile.submit();
}

</script>
<!-- 네이게이션 function 모음    -->
</head>
<body>

<!-- navigator 시작 -->
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" onClick="goToMain()">Match Now</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a onClick="goToMain()">HOME</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">마이페이지 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a onClick="pwCheckPage()">내 정보</a></li>
							<li><a href="#">매치 정보</a></li>
							<li><a href="#">매치 신청 정보</a></li>
							<li><a onClick="messageReceiveInfo()">메세지함</a></li>
							<li><a onClick="accessOut()">로그아웃</a></li>
						</ul></li>


					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">매치보드 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">매치보드</a></li>
							<li><a href="#">매치신청</a></li>
							<li><a href="#">매치 신청 관리</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">커뮤니티 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">국내축구소식</a></li>
							<li><a href="#">해외축구소식</a></li>
							<li><a href="#">축구동영상</a></li>
							<li><a href="#">축구갤러리</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">경기장 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">경기장 안내</a></li>
						</ul></li>
					<li><a href="launch/commingsoon.html">SHOP</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a onClick= "accessOut()"><span
							class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- navigator 끝 -->
<h1> 관리자 전용 페이지</h1>
	${mmid } 
	
	
</body>
</html>