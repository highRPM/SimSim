<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ȸ������</title>
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
          <h1 class="Email">ȸ������ <small class="Email">������ ������? </small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form role="form" action="/hwan/signUp.do" method="post">
            <div class="form-group">
              <label class="Email" for="InputEmail">�̸��� �ּ�</label>
              <input type="email" id="email" class="form-control" name="email" placeholder="�̸��� �ּ�">
              <h4 id="emailCheck"></h4>
            </div>
            <div class="form-group">
              <label class="Email" for="InputPassword1">��й�ȣ</label>
              <input type="password" id="pass" class="form-control" name="pass" placeholder="��й�ȣ">
            </div>
            <div class="form-group">
              <label class="Email" for="InputPassword2">��й�ȣ Ȯ��</label>
              <input type="password" id="passCon" class="form-control" name="passRe" placeholder="��й�ȣ Ȯ��">
              <p id="passResult" class="help-block">��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է� �� �ּ���</p>
            </div>
            <div class="form-group">
              <label class="Email" for="username">�̸�</label>
              <input type="text" class="form-control" name="name" placeholder="�̸��� �Է��� �ּ���">
            </div>
            <div class="form-group">
              <label class="Email" for="username">�޴��� ����</label>
              <div class="input-group">
                <input type="tel" class="form-control" name="tel" placeholder="- ���� �Է��� �ּ���">
                <span class="input-group-btn">
                  <button class="btn btn-success">������ȣ ����<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label class="Email" for="username">������ȣ �Է�</label>
              <div class="input-group">
                <input type="text" class="form-control" id="username" placeholder="������ȣ">
                <span class="input-group-btn">
                  <button class="btn btn-success">������ȣ �Է�<i class="fa fa-edit spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
                <label class="Email">��� ����</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="#">�̿���</a>�� �����մϴ�.
              </div>
            </div>
            <div class="form-group text-center">
              <button type="button" id="insert" class="btn btn-info">ȸ������<i class="fa fa-check spaceLeft"></i></button>
              <!-- <button type="submit" class="btn btn-warning">�������<i class="fa fa-times spaceLeft"></i></button> -->
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
						$('#emailCheck').text("�̹� ������� email �Դϴ�.");	
						$('#emailCheck').css('color', 'red');
						duplication = 1;
					}else{
						$('#emailCheck').text("����� �� �ִ� email �Դϴ�.");
						duplication = 0;
					}
				}	
			});		
		});
		
		$('#passCon').on('keyup', function(){
			var pass1 = $('#pass').val();
			var pass2 = $('#passCon').val();
			if(pass1 != pass2){
				$('#passResult').text("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				$('#passResult').css('color','RED');
			}else{
				$('#passResult').text("��й�ȣ�� ��ġ�մϴ�.");
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
							$('#emailCheck').text("�̹� ������� email �Դϴ�.");	
							$('#emailCheck').css('color', 'red');
							alert("�̹� ������� email�� ����� �� �����ϴ�.");
							unique = 1;
						}else{
							$('#emailCheck').text("����� �� �ִ� email �Դϴ�.");
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