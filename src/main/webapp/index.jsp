<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                margin-bottom: 25px;
            }
            form {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }
            label {
                font-weight: bold;
                margin-bottom: 5px;
                text-align: left;
                display: block;
                color: #555;
            }
            input[type="number"] {
                padding: 8px 12px;
                border: 1.5px solid #ddd;
                border-radius: 5px;
                font-size: 1rem;
                transition: border-color 0.3s ease;
            }
            input[type="number"]:focus {
                border-color: #007BFF;
                outline: none;
            }
            input[type="submit"] {
                background-color: #007BFF;
                border: none;
                padding: 10px;
                color: white;
                font-weight: bold;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                font-size: 1.1rem;
            }
            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Nota Predictor</h1>
            <form action="predictor" method="post">
                <label for="asistencia">Asistencia (%):</label>
                <input type="number" id="asistencia" name="asistencia" step="0.1" required>

                <label for="parcial">Nota Parcial:</label>
                <input type="number" id="parcial" name="parcial" step="0.1" required>

                <label for="tarea">Nota Tarea:</label>
                <input type="number" id="tarea" name="tarea" step="0.1" required>

                <input type="submit" value="Predecir">
            </form>
        </div>
    </body>
</html>
