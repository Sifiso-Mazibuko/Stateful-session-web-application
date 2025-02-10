/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.ListSBLocal;

public class ControllerServlet extends HttpServlet {

    @EJB
    ListSBLocal lsl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String op = request.getParameter("op");
        String url = "index.html";
        
        if(op.equals("add")){
            String numStr = request.getParameter("num");
            Integer num = Integer.parseInt(numStr);
            
            lsl.add(num);
            request.setAttribute("numStr", numStr);
            url = "add_outcome.jsp";
        }
        else if(op.equals("get")){
            
            Integer size = lsl.getSize();
            request.setAttribute("size", size);
            url = "get_size_outcome.jsp";
        }
        else if(op.equals("get_list")){
        
            List<Integer> list = lsl.getList();
            request.setAttribute("list", list);
            url = "get_list_outcome.jsp";
        }
        
        RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);
    }

    
}
