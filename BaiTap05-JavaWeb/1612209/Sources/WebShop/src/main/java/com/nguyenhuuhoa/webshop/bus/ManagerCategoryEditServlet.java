/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nguyenhuuhoa.webshop.bus;

import com.nguyenhuuhoa.webshop.dao.LoaiSanPhamDAO;
import com.nguyenhuuhoa.webshop.dto.LoaiSanPham;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nguyenhuuhoa
 */

@WebServlet("/chinhsualoaisanpham")
public class ManagerCategoryEditServlet extends HttpServlet{
    private LoaiSanPhamDAO lspDAO=new LoaiSanPhamDAO();
    
     @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            int id=Integer.parseInt(request.getParameter("id"));
            LoaiSanPham item=lspDAO.read(id);
            request.setAttribute("item",item);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/managercategoryedit.jsp");
            rd.forward(request,response);
        }
        catch (Exception ex)
        {
            Logger.getLogger(ManagerCategoryCreateServlet.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
    {
        try
        {
            int id=Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("txtName");
            LoaiSanPham lsp = new LoaiSanPham(id,name);
            lspDAO.update(lsp);
            response.sendRedirect(request.getContextPath() + "/qlloaisanpham");
        }
        catch (Exception ex)
        {
            Logger.getLogger(ManagerCategoryCreateServlet.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
}
