<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизация</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            background-image: url('https://upload.wikimedia.org/wikipedia/commons/9/99/Sea.jpg');
            background-size: cover;
            background-position: center;
        }
        .container {
            text-align: center;
            max-width: 600px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.5);
            padding: 20px;
            border-radius: 10px;
        }
        .input-field {
            width: 100%;
            padding: 15px;
            margin-top: 0px;
            margin-bottom:0px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            line-height: 1.5; 
        }
        .input-field::placeholder {
            color: #aaa;
        }
        .checkbox-label {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            margin-top: 10px;
            text-align: left;
        }
        .checkbox-input {
            margin-right: 5px;
        }
        .footer {
			text-align: center;
			padding: 20px 0;
			margin-top: 20px;
			border-top: 1px solid #e5e5e5;
			color: #777;
		}
        .btn {
            padding: 10px 100px;
            background-color: green;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: red;
        }
    </style>
</head>
<body>

	<div class="container">
		<form class="form-signin" action="Controller" method="post">
		    <input type="hidden" name="command" value="do_auth"/>
			<h2 class="form-signin-heading text-java text-center">Пожалуйста,
				войдите</h2>
            <div class="error-message" id="error-message"> 
			<c:if test="${not (param.authError eq null) }">
			     <c:out value="${param.authError}" />
			</c:if>
			</div>
        <div class="form-group">
            <input type="email" class="input-field" placeholder="Введите email" id="loginUsername" name="login" required>
        </div>
        <div class="form-group">
            <input type="password" class="input-field" placeholder="Введите пароль" id="loginPassword" name="password" required>
        </div>
        <label class="checkbox-label">
        <input type="checkbox" class="checkbox-input">
            Запомнить меня
        </label><br />
       <button class="btn btn-lg btn-success btn-block" type="submit">Войти</button>
    </form>
    <p><a href="Controller?command=go_to_registration_page">Регистрация нового аккаунта</a></p>
</div><br /><br />
      <div class="footer">
			<p>&copy; 2024 Изучаем Java. Все права защищены.</p>
		</div>
</body>
</html>