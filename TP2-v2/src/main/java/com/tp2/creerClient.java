package com.tp2;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/creerClient")
public class creerClient extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");

        if (nom == null || nom.trim().isEmpty() ||
            prenom == null || prenom.trim().isEmpty() ||
            telephone == null || telephone.trim().isEmpty() ||
            email == null || email.trim().isEmpty()) {

            request.setAttribute("erreur", "Ooops, erreur !!! Vous devez remplir tous les champs");
            request.setAttribute("nom", nom);
            request.setAttribute("prenom", prenom);
            request.setAttribute("telephone", telephone);
            request.setAttribute("email", email);

            request.getRequestDispatcher("Inscription.jsp").forward(request, response);
            return;
        }

        Client client = new Client(nom, prenom, telephone, email);

        request.setAttribute("message", "Client ajouté avec succès");
        request.setAttribute("client", client);

        request.getRequestDispatcher("infoClient.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Inscription.jsp");
    }
}