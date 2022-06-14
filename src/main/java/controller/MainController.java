/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author avillX
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String LOGOUT_CONTROLLER = "LogoutController";

    private static final String ADMIN_PAGE = "AdminPageController";
    private static final String USER_PAGE = "UserPageController";
    private static final String ROOM_PAGE = "RoomPageController";

    private static final String ADD_ROOM = "AddRoomController";
    private static final String ADD_HOSTEL = "AddHostelController";
    private static final String UPDATE_ROOM = "UpdateRoomController";
    private static final String UPDATE_HOSTEL = "UpdateHostelController";
    private static final String DELETE_ROOM = "DeleteRoomController";
    private static final String DELETE_HOSTEL = "DelelteHostelController";


    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            switch (action) {
                case "Login":
                    url = LOGIN_CONTROLLER;
                    break;
                case "Logout":
                    url = LOGOUT_CONTROLLER;
                    break;
                case "AdminPage":
                    url = ADMIN_PAGE;
                    break;
                case "UserPage":
                    url = USER_PAGE;
                    break;
                case "RoomPage":
                    url = ROOM_PAGE;
                    break;
                case "AddRoom":
                    url = ADD_ROOM;
                    break;
                case "AddHostel":
                    url = ADD_HOSTEL;
                    break;
                case "UpdateRoom":
                    url = UPDATE_ROOM;
                    break;
                case "UpdateHostel":
                    url = UPDATE_HOSTEL;
                    break;
                case "DeleteRoom":
                    url = DELETE_ROOM;
                    break;
                case "DeleteHostel":
                    url = DELETE_HOSTEL;
                    break;
                default:
                    break;
            }
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
