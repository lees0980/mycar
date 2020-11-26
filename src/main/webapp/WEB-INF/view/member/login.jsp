<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
<link rel="stylesheet" href="/css/main/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<main class="login">
            <div class="login-box">
                <h2>Login</h2>
                <form class="login-form" method="POST">
                  <div class="user-box">
                    <input type="text" class="login-input" name="username" placeholder="아이디를 입력하세요." required>
                  </div>
                  <div class="user-box">
                    <input type="password" class="login-input" name="password" placeholder="비밀번호를 입력하세요." required>
                  </div>
                 <input class="btn btn-primary" type="submit" name="login" value="로그인">
                </form>
                <div>
                  <span style="color: white;">아직 저희 회원이 아니시라면..</span><a href="signup">회원가입</a>
              </div>
              </div>
              
        </main>
</body>
</html>