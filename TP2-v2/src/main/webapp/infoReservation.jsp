<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.tp2.Reservation" %>
<%
    String message = (String) request.getAttribute("message");
    Reservation reservation = (Reservation) request.getAttribute("reservation");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Informations de la réservation</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background:#f5f5f5;
            margin:0;
            padding:0;
        }

        .container{
            width: 1000px;
            margin: 40px auto;
            text-align:center;
        }

        .message{
            color:green;
            font-weight:bold;
            font-size:18px;
            margin-bottom:25px;
        }

        h2{
            color:#9c7411;
            font-size:32px;
            margin-bottom:30px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            background:#fff;
            margin-bottom:30px;
        }

        th, td{
            border:1px solid #ddd;
            padding:14px;
            text-align:center;
            font-size:18px;
        }

        th{
            background:#f2f2f2;
            font-weight:bold;
        }

        .btns{
            margin-top:20px;
        }

        .btn{
            display:inline-block;
            margin:10px;
            padding:14px 24px;
            background:#337ab7;
            color:#fff;
            text-decoration:none;
            border-radius:6px;
            font-size:18px;
        }

        .btn:hover{
            background:#286090;
        }

        .home{
            background:#5cb85c;
        }

        .home:hover{
            background:#449d44;
        }
    </style>
</head>
<body>

<div class="container">
    <p class="message"><%= message != null ? message : "" %></p>

    <h2>Affichage des données de la réservation :</h2>

    <table>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Téléphone</th>
            <th>E-mail</th>
            <th>Type</th>
            <th>Prix</th>
            <th>Vue</th>
        </tr>
        <tr>
            <td><%= reservation != null ? reservation.getNom() : "" %></td>
            <td><%= reservation != null ? reservation.getPrenom() : "" %></td>
            <td><%= reservation != null ? reservation.getTelephone() : "" %></td>
            <td><%= reservation != null ? reservation.getEmail() : "" %></td>
            <td><%= reservation != null ? reservation.getType() : "" %></td>
            <td><%= reservation != null ? reservation.getPrix() : "" %></td>
            <td><%= reservation != null ? reservation.getVue() : "" %></td>
        </tr>
    </table>

    <div class="btns">
        <a href="Reservation.jsp" class="btn">Retourne au formulaire d'ajout</a>
        <a href="index.jsp" class="btn home">Retour à la page d'accueil</a>
    </div>
</div>

</body>
</html>