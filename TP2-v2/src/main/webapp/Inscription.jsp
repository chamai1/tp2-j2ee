<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un client</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background:#f5f5f5;
        }
        .container{
            width: 520px;
            margin: 40px auto;
        }
        h2{
            text-align:center;
            color:#3b82c4;
            margin-bottom:20px;
        }
        .erreur{
            color:red;
            text-align:center;
            font-weight:bold;
            margin-bottom:15px;
        }
        .box{
            background:#fff;
            border:1px solid #ddd;
        }
        .box-header{
            padding:10px;
            background:#fafafa;
            border-bottom:1px solid #ddd;
        }
        .box-body{
            padding:15px;
        }
        label{
            display:block;
            font-weight:bold;
            margin-top:12px;
            margin-bottom:6px;
        }
        input{
            width:100%;
            padding:10px;
            border:1px solid #ccc;
            border-radius:3px;
            box-sizing:border-box;
        }
        .btn{
            margin-top:18px;
            width:100%;
            padding:12px;
            background:#5cb85c;
            color:white;
            border:none;
            border-radius:4px;
            font-size:16px;
            cursor:pointer;
        }
        .footer{
            text-align:center;
            color:#b85c5c;
            padding:15px;
            border-top:1px solid #eee;
            background:#fafafa;
        }
    </style>
</head>
<body>

<div class="container">

    <%
        String erreur = (String) request.getAttribute("erreur");
    %>

    <% if (erreur != null) { %>
        <div class="erreur"><%= erreur %></div>
    <% } %>

    <h2>Ajouter un client :</h2>

    <div class="box">
        <div class="box-header">Espace client</div>

        <div class="box-body">
            <form action="creerClient" method="post">

                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom"
                       value="<%= request.getAttribute("nom") != null ? request.getAttribute("nom") : "" %>">

                <label for="prenom">Prénom</label>
                <input type="text" id="prenom" name="prenom"
                       value="<%= request.getAttribute("prenom") != null ? request.getAttribute("prenom") : "" %>">

                <label for="telephone">Téléphone</label>
                <input type="text" id="telephone" name="telephone"
                       value="<%= request.getAttribute("telephone") != null ? request.getAttribute("telephone") : "" %>">

                <label for="email">E-mail</label>
                <input type="email" id="email" name="email"
                       value="<%= request.getAttribute("email") != null ? request.getAttribute("email") : "" %>">

                <button type="submit" class="btn">Ajouter Client</button>
            </form>
        </div>

        <div class="footer">
            Application de gestion des réservations © 2026
        </div>
    </div>
</div>

</body>
</html>