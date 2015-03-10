/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package log;

import database.db_Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sayed Mahmud Raihan
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
        
        boolean isLoggedIn=false;
        HttpSession userSession=request.getSession();
        String message = null;
        String dbuser;
        
        String dbpass;
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        String userId=request.getParameter("email");
        String userPassword=request.getParameter("pass");
        try {
            db_Connection db = new db_Connection();
            Connection con=db.getConnection();
            String sql = "select email, password from user";
            PreparedStatement st=con.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                dbuser=rs.getString("email");
                dbpass=rs.getString("password");
                if(dbuser.equals(userId)){
                    if(dbpass.equals(userPassword)){
                    isLoggedIn=true;
                    userSession.setAttribute("userName", userId);
                    response.sendRedirect("index.jsp");
                }
                else{
                    isLoggedIn=false;
                    message="wrong password";
                    break;
                }
            }
            else{
                isLoggedIn=false;
                message="wrong username";
               }
            }
            if(isLoggedIn==false){
                out.print("wrong login again");
                rd.include(request, response);
//                request.setAttribute("message", message);
//                out.print("wrong !!!");
//                //response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
        }  
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
