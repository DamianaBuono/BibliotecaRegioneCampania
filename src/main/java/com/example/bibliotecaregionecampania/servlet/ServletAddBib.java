package com.example.bibliotecaregionecampania.servlet;

import com.example.bibliotecaregionecampania.operationDB.Operation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletAddBib", value = "/ServletAddBib")
public class ServletAddBib extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");
        Operation op= new Operation();
        try {
            if (isAdmin == null ? false : isAdmin) {
                op.insert(Integer.parseInt(request.getParameter("cap")), request.getParameter("provincia"), request.getParameter("telefono"), request.getParameter("url"), request.getParameter("comune"), request.getParameter("denominazione"), request.getParameter("email"), request.getParameter("codiceIsil"), request.getParameter("indirizzo"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.setContentType("text/html");
        request.getRequestDispatcher(response.encodeURL("/addok.jsp")).forward(request, response);
        }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
