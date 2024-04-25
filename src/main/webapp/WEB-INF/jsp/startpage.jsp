<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java</title>
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
            background-color: rgba(255, 255, 255, 0);
            padding: 20px;
            border-radius: 10px;
        }
        .text-java {
			color: #800080; 
		}
        
        .footer {
			text-align: center;
			padding: 20px 0;
			margin-top: 20px;
			color: #777;
		}
        .btn {
            padding: 10px 20px;
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
        <h1 class="text-java">Добро пожаловать на курс Java!</h1>
        <h3>Здесь вы найдете всё, что нужно для изучения Java от начального до продвинутого уровня.</h3><br />
        <a href="Controller?command=go_to_auth_page" class="btn">Войти/Зарегистрироваться</a>
    </div><br /><br />
       <div class="footer">
			<p>&copy; 2024 Изучаем Java. Все права защищены.</p>
				<h2>NEWS</h2>
		<c:out value="${requestScope.mainNews.title}" />
		<br/>
		<c:out value="${requestScope.mainNews.brief}" />
	</div>
   
</body>
</html>