/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AddressDAO;
import dao.ContractDAO;
import dao.CustomerDAO;
import dao.RoomDAO;
import dao.ServiceDAO;
import dto.Address.City;
import dto.Address.District;
import dto.Address.Ward;
import dto.ContractDTO;
import dto.CustomerDTO;
import dto.HostelDTO;
import dto.RoomDTO;
import dto.ServiceDetailDTO;
import dto.ServiceTypeDTO;
import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author avillX
 */
@WebServlet(name = "CustomerPageController", urlPatterns = {"/CustomerPageController"})
public class CustomerPageController extends HttpServlet {

    private static final String ERROR = "View/editCus.jsp";
    private static final String SUCCESS = "CustomerPageController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession ss = request.getSession();
            UserDTO us = (UserDTO) ss.getAttribute("LOGIN_USER");
            RoomDAO dao = new RoomDAO();
            CustomerDAO Cusdao = new CustomerDAO();
            ContractDAO Cdao = new ContractDAO();
            ServiceDAO SerDAO = new ServiceDAO();
            AddressDAO ad = new AddressDAO();

            String CusID = request.getParameter("CusID");
            RoomDTO room = dao.GetARoom(request.getParameter("roomID"));

            List<ServiceTypeDTO> ServiceTypeList = SerDAO.GetListService();
            List<RoomDTO> Room = new ArrayList<>();
            Room.add(room);

            ContractDTO Contract = Cdao.GetAContract(CusID);
            HostelDTO Hostel = dao.GetAHostel(room.getHostelID());
            List<ContractDTO> ContractList = Cdao.GetListContract(Room);
            List<CustomerDTO> RoomMate = Cusdao.GetListRoomMate(ContractList);
            CustomerDTO Customer = Cusdao.GetACustomer(CusID);
            List<HostelDTO> HostelList = dao.GetListHostel(us.getUserID());
            List<ServiceDetailDTO> ServiceDetailList = SerDAO.GetListServiceDetail(HostelList);
            int length = RoomMate.size();

            Ward wardID = ad.GetAWard(Customer.getWardID());
            District DistrictID = ad.GetADistrict(wardID.getDistrictID());
            City CityID = ad.GetACity(DistrictID.getCityID());
            Customer.setAddress(Customer.getAddress() + ", " + wardID.getWardname() + ", " + DistrictID.getDistrictname() + ", " + CityID.getCityname());

            request.setAttribute("ServiceTypeList", ServiceTypeList);
            request.setAttribute("Contract", Contract);
            request.setAttribute("Hostel", Hostel);
            request.setAttribute("Customer", Customer);
            request.setAttribute("Room", room);
            request.setAttribute("RoomMate", RoomMate);
            request.setAttribute("ServiceDetailList", ServiceDetailList);
            request.setAttribute("length", length);

        } catch (Exception e) {
            log("Error at CustomerPageController(doGet):" + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
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
