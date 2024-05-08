/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.TruyenDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Chapter;
import model.Truyen;

/**
 *
 * @author admin
 */
@WebServlet(name = "DetailServlet", urlPatterns = {"/detail"})
public class DetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("pid");
        TruyenDAO u = new TruyenDAO();
        
        Truyen t = u.getTruyensByID(id);
        List<Truyen> ltr = u.getTruyens();
        List<Chapter> ltrchap = u.getChapterByProductID(id);
        
        request.setAttribute("detail", t);
        request.setAttribute("ltr", ltr);
        request.setAttribute("ltrchap", ltrchap);
        request.getRequestDispatcher("comics-detail.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }
}
