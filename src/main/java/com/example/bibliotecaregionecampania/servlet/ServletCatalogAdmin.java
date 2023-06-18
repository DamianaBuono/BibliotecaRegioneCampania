package com.example.bibliotecaregionecampania.servlet;

import com.example.bibliotecaregionecampania.bean.BibliotecaBean;
import com.example.bibliotecaregionecampania.operationDB.Operation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletCatalogAdmin", value = "/ServletCatalogAdmin")
public class ServletCatalogAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");
        ArrayList<BibliotecaBean>  myArrayProvincia= new ArrayList<BibliotecaBean>();
        ArrayList<BibliotecaBean> arrayBiblioteca ;
        Operation op= new Operation();

        if(isAdmin == null ? false : isAdmin.booleanValue())
        {
            try {
                arrayBiblioteca = op.retrieve();
                String provincia= request.getParameter("provincia");
                if(provincia.equals("a")){
                    for(int i=0;i<arrayBiblioteca.size();i++){
                        if(arrayBiblioteca.get(i).getProvincia().equals("Avellino")){
                            myArrayProvincia.add(arrayBiblioteca.get(i));
                        }
                    }
                }
                if(provincia.equals("b")){
                    for(int i=0;i<arrayBiblioteca.size();i++){
                        if(arrayBiblioteca.get(i).getProvincia().equals("Benevento")){
                            myArrayProvincia.add(arrayBiblioteca.get(i));
                        }
                    }
                }
                if(provincia.equals("c")){
                    for(int i=0;i<arrayBiblioteca.size();i++){
                        if(arrayBiblioteca.get(i).getProvincia().equals("Caserta")){
                            myArrayProvincia.add(arrayBiblioteca.get(i));
                        }
                    }
                }
                if(provincia.equals("n")){
                    for(int i=0;i<arrayBiblioteca.size();i++){
                        if(arrayBiblioteca.get(i).getProvincia().equals("Napoli")){
                            myArrayProvincia.add(arrayBiblioteca.get(i));
                        }
                    }
                }
                if(provincia.equals("s")){
                    for(int i=0;i<arrayBiblioteca.size();i++){
                        if(arrayBiblioteca.get(i).getProvincia().equals("Salerno")){
                            myArrayProvincia.add(arrayBiblioteca.get(i));
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
            response.setContentType("text/html");
            request.setAttribute("arrayBiblioteca", myArrayProvincia);
            request.getRequestDispatcher(response.encodeURL("/catalogoadmin.jsp")).forward(request, response);
        }
        else{
            response.sendRedirect("login.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
