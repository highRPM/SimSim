<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
	body{
		background-image: url('resources/image/foodImage1blur.jpg');
		background-size: 100%;
	}
	.Email{
		color: white;
		text-shadow: black 0px 0px 10px; 
	}
	#emailCheck{
		color: white;
	}
	#passResult{
		color: white;
	}
</style>

</head>

<body>

 <article class="container bgBlur">
        <div class="page-header">
          <h1 class="Email">회원가입 <small class="Email">오늘은 뭐먹지? </small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form role="form" action="/hwan/signUp.do" method="post">
            <div class="form-group">
              <label class="Email" for="InputEmail">이메일 주소</label>
              <input type="email" id="email" class="form-control" name="email" placeholder="이메일 주소">
              <h4 id="emailCheck"></h4>
            </div>
            <div class="form-group">
              <label class="Email" for="InputPassword1">비밀번호</label>
              <input type="password" id="pass" class="form-control" name="pass" placeholder="비밀번호">
            </div>
            <div class="form-group">
              <label class="Email" for="InputPassword2">비밀번호 확인</label>
              <input type="password" id="passCon" class="form-control" name="passRe" placeholder="비밀번호 확인">
              <p id="passResult" class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
            </div>
            <div class="form-group">
              <label class="Email" for="username">이름</label>
              <input type="text" class="form-control" name="name" placeholder="이름을 입력해 주세요">
            </div>
            <div class="form-group">
              <label class="Email" for="username">휴대폰 인증</label>
              <div class="input-group">
                <input type="tel" class="form-control" name="tel" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label class="Email" for="username">인증번호 입력</label>
              <div class="input-group">
                <input type="text" class="form-control" id="username" placeholder="인증번호">
                <span class="input-group-btn">
                  <button class="btn btn-success">인증번호 입력<i class="fa fa-edit spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
                <label class="Email">약관 동의</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="#">이용약관</a>에 동의합니다.
              </div>
            </div>
            <div class="form-group text-center">
              <button type="button" id="insert" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
              <!-- <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button> -->
            </div>
          </form>
        </div>

</article>
<script type="text/javascript">
	$(document).ready(function(){
		duplication = 0;
		var count = 0;
		$('#email').on('keyup', function(){
	
			$.ajax({
				url : "/hwan/emailCheck.do",
				type : "post",
				data : {"email" : $('#email').val()},
				success : function(data){
				
					if(data==1){
						$('#emailCheck').text("이미 사용중인 email 입니다.");	
						$('#emailCheck').css('color', 'red');
						duplication = 1;
					}else{
						$('#emailCheck').text("사용할 수 있는 email 입니다.");
						duplication = 0;
					}
				}	
			});		
		});
		
		$('#passCon').on('keyup', function(){
			var pass1 = $('#pass').val();
			var pass2 = $('#passCon').val();
			if(pass1 != pass2){
				$('#passResult').text("비밀번호가 일치하지 않습니다.");
				$('#passResult').css('color','RED');
			}else{
				$('#passResult').text("비밀번호가 일치합니다.");
				$('#passResult').css('color','WHITE');
			}
		});
		$('#insert').on('click', function(){
			
				$.ajax({
					url : "/hwan/emailCheck.do",
					type : "post",
					data : {"email" : $('#email').val()},
					success : function(data){
					
						if(data==1){
							$('#emailCheck').text("이미 사용중인 email 입니다.");	
							$('#emailCheck').css('color', 'red');
							alert("이미 사용중인 email은 사용할 수 없습니다.");
							unique = 1;
						}else{
							$('#emailCheck').text("사용할 수 있는 email 입니다.");
							unique = 0;
						}
					}	
				});		
		
			
			if(unique==1){
				
			}else{
				$('form').submit();
			}
		});
	});
</script>
</body>
</html>