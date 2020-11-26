<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="/css/main/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
   <main>
     <div class="signup-box">
       <h1 style="color:white;">Sign Up</h1>
       <form class="signup-form" method="POST">
         <div class="user-box">
           <input type="text" class="sign-input" name="userId" placeholder="아이디." required>
           <input type="password" class="sign-input" name="pwd" placeholder="비밀번호." required>
           <input type="text" class="signup-input" name="name" placeholder="이름" required>
           <div class="gender">
             <label class="man" style="color: white;">
               <input type="radio" class="signup-input" name="gender" value="남성">남성
             </label>
             <label class="woman" style="color: white;">
               <input type="radio" class="signup-input" name="gender" value="여성">여성
             </label>
           </div>
           <input type="text" class="signup-input" name="phone" placeholder="전화번호를 입력하세요" required>
           <input type="text" class="signup-input" name="age" placeholder="나이를 입력하세요" required><br>
         </div>
         <input class="btn btn-primary"  type="submit" value="회원가입">
       </form>
     </div>
   </main>
</body>
</html>