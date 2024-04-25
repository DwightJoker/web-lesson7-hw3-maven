<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистрация</title>
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
            border-radius: 0px;
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
			color: #777;
		}
        .btn {
            padding: 10px 170px;
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

<div class="container mt-5">
    <h1>Регистрация нового <br />пользователя</h1>
    <form action="Controller" method="post">
        <input type="hidden" name="command" value="do_registration"/>
        <div class="form-group">
        	<input type="text" class="input-field" placeholder="Имя пользователя" id="name" name="name"required>
            <input type="email" class="input-field" placeholder="Введите email" id="loginUsername" name="email" required>
        </div>
        <div class="form-group">
            <input type="password" class="input-field" placeholder="Пароль" id="loginPassword" name="password" required>
            <input type="password" class="input-field" placeholder="Подтвердите пароль" id="loginPassword" name="password" required>
        </div>
        <div class="error-message" id="error-message"> 
			<c:if test="${not (param.regError eq null) }">
			     <c:out value="${param.regError}" />
			</c:if>
			</div>
        <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
    </form>
</div>   
      <div class="footer">
			<p>&copy; 2024 Изучаем Java. Все права защищены.</p>
		</div>
</body>
</html>