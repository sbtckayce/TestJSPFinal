package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password =request.getParameter("password");
        String confirm =request.getParameter("confirm");
        if(!password.equals(confirm)){
            request.setAttribute("nameuser",username);
            request.setAttribute("same","Re-enter the password and the password does not match");
            request.getRequestDispatcher("signup.jsp").forward(request,response);
        }else{
            User user = AllProductDAO.getInstance().checkUserName(username);
            if(user==null){
                AllProductDAO.getInstance().register(username,password);
                request.getRequestDispatcher("signin.jsp").forward(request,response);
            }else{
                request.setAttribute("nameuser",username);
                request.setAttribute("same","Username is exist");
                request.getRequestDispatcher("signup.jsp").forward(request,response);
            }
        }
    }
}
