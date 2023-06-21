package com.example.bibliotecaregionecampania.servlet;


import com.example.bibliotecaregionecampania.operationDB.Operation;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import org.bson.types.ObjectId;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletControlAdmin", value = "/ServletControlAdmin")
public class ServletControlAdmin extends HttpServlet {
    private static final long serialVersionUID = 1000L;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");
       String action = request.getParameter("act");
       Operation op= new Operation();

        try {
            if (action != null && (isAdmin == null ? false : isAdmin))
            {
                 if (action.equalsIgnoreCase("delete")) {
                    ObjectId id = new ObjectId(request.getParameter("id"));
                    op.remove(id);

                } else if (action.equalsIgnoreCase("modify")) {

                     ObjectId id = new ObjectId(request.getParameter("id"));
                     String indirizzo = request.getParameter("indirizzo");

                    op.update(id, indirizzo);

                    if (request.getHeader("x-requested-with")!= null){
                        response.setContentType("application/json");
                        JsonObject obj = new JsonObject ();
                        obj.addProperty("newIndirizzo", indirizzo);

                        System.out.println(obj);
                        response.getWriter().write(new Gson().toJson(obj));
                    }
                }
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
