package com.tp2;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/creerReservation")
public class creerReservation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String prix = request.getParameter("prix");
        String vue = request.getParameter("vue");

        if (nom == null || nom.trim().isEmpty() ||
            prenom == null || prenom.trim().isEmpty() ||
            telephone == null || telephone.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            type == null || type.trim().isEmpty() ||
            prix == null || prix.trim().isEmpty() ||
            vue == null || vue.trim().isEmpty()) {

            request.setAttribute("erreur", "Ooops, erreur !!! Vous devez remplir tous les champs");

            request.setAttribute("nom", nom);
            request.setAttribute("prenom", prenom);
            request.setAttribute("telephone", telephone);
            request.setAttribute("email", email);
            request.setAttribute("type", type);
            request.setAttribute("prix", prix);
            request.setAttribute("vue", vue);

            request.getRequestDispatcher("Reservation.jsp").forward(request, response);
            return;
        }

        Reservation reservation = new Reservation(nom, prenom, telephone, email, type, prix, vue);

        request.setAttribute("message", "Réservation ajoutée avec succès");
        request.setAttribute("reservation", reservation);

        request.getRequestDispatcher("infoReservation.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Reservation.jsp");
    }
}