package com.example.bibliotecaregionecampania.servlet;

import com.example.bibliotecaregionecampania.operationDB.Operation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;


    public Login() {
        super();
    }

    // This method is called by the servlet container to process a 'post' request
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        System.out.println("Sono nel login ");
        HttpSession session = req.getSession();
        String  param1 = req.getParameter("uname");
        String param2 = req.getParameter("psw");
        System.out.println("Sono nel login 2");
        Operation op= new Operation();
        System.out.println("Sono nel login 3 ");
        boolean flag= op.isUserDb(param1, param2);
        System.out.println("Sono nel login 4" +flag);

        if(flag){
            session.setAttribute("isAdmin", true);
            resp.setContentType("text/html");
            req.getRequestDispatcher(resp.encodeURL("/homeAdmin.jsp")).forward(req, resp);
        }
        else{
            resp.setContentType("text/html");
            req.getRequestDispatcher(resp.encodeURL("/errorLogin.jsp")).forward(req, resp);
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req, resp);
        // Reading post parameters from the request
    }

}