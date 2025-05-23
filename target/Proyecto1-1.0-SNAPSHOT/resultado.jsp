<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #f5f7fa;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .container {
                background: white;
                padding: 30px 40px;
                border-radius: 10px;
                box-shadow: 0 8px 16px rgba(0,0,0,0.15);
                width: 320px;
                text-align: center;
            }
            h1 {
                color: #333;
                margin-bottom: 20px;
            }
            h2 {
                color: #007BFF;
                margin-bottom: 30px;
                font-weight: bold;
            }
            a {
                text-decoration: none;
                background-color: #007BFF;
                color: white;
                padding: 10px 20px;
                border-radius: 6px;
                font-weight: bold;
                transition: background-color 0.3s ease;
                display: inline-block;
            }
            a:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Hello World!</h1>
            <h2>La nota final estimada es: ${resultado}</h2>
            <a href="index.jsp">Volver</a>
        </div>
    </body>
</html>
