<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>

    <style>
        body {
            font-family: Arial;
            text-align: center;
            background-color: #f2f2f2;
        }

        .container {
            margin-top: 100px;
        }

        h1 {
            margin-bottom: 40px;
        }

        .btn {
            display: block;
            width: 250px;
            margin: 20px auto;
            padding: 15px;
            font-size: 18px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .client {
            background-color: #2f6fad;
        }

        .reservation {
            background-color: #4CAF50;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Bienvenue dans l'application de gestion</h1>

        <a href="Inscription.jsp" class="btn client">
            Ajouter un Client
        </a>

        <a href="Reservation.jsp" class="btn reservation">
            Ajouter une Réservation
        </a>
    </div>

</body>
</html>