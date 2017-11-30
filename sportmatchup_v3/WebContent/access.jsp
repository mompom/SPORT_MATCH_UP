<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>wonZzang :: Access</title>
		<script>
			function accessOut() {
				document.accessout.submit();
			}
			function memberDrop(){
				document.memberdrop.submit();
			}
			function memberInfo(){
				document.memberinfo.submit();
			}
			function memberMatchInfo(){
				document.membermatchinfo.submit();
			}
			function memberMessage(){
				document.membermessage.submit();
				
			}
		</script>
	</head>
	
	<body>
		<h1>${mmid}님은정상적으로 로그인 하셨쥬~~</h1>
	
		<!-- 로그아웃 영역 -->
		<div>
			<form name="accessout" method=post action="AccessOut">
				<input type="hidden" name ="mmid" value="${mmid }" />
				<input type="button" value="로그아웃" onClick="accessOut()" />
			</form>
			
			<form name="memberdrop" method=post action="MemberDrop">
				<input type="hidden" name="mmid" value="${mmid }">
				<input type="button" value="회원탈퇴" onClick="memberDrop()" />
			</form>
		</div>
		<!-- 회원정보수정 -->
		<div>
			<form name = "memberinfo" method = post action = "MemberInfo">
				<input type="hidden" name="mmid" value="${mmid }">
				<input type="button" value="나의정보" onClick="memberInfo()" />
			</form>
		</div>
		
		<div>
			<form name = "membermatchinfo" method = post action = "MemberMatchInfo">
				<input type="hidden" name="mmid" value="${mmid }">
				<input type="button" value="나의 매치 정보" onClick="memberMatchInfo()" />
			</form>
		</div>
		<!-- 메시지 -->
		<div>
		<form name = "membermessage" method = post action = "MemberMessage">
				<input type="hidden" name="mmid" value="${mmid }">
				<input type="button" value="메세지" onClick="memberMessage()" />
			</form>
		</div>
	</body>
</html>