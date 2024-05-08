package controller;

import dal.TruyenDAO;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.*;
import java.util.*;

public class ChapterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String IDChapter = request.getParameter("chapterid");
        TruyenDAO u = new TruyenDAO();
        
        Chapter t = u.getChapterByIDChapter(IDChapter);
        List<Chapter> ltrchap = u.getChapterByProductID(IDChapter);
        
        request.setAttribute("chapter", t);
        request.setAttribute("ltrchap", ltrchap);
        request.getRequestDispatcher("chapter.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }
}

