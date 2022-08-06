package vn.edu.hcmuaf.fit;

import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "AjaxAllProductController", value = "/AjaxAllProductController")
public class AjaxAllProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String numberpr =request.getParameter("numberpr");
        int n=Integer.parseInt(numberpr);
        request.setCharacterEncoding("utf-8");
        List<AllProduct> allProducts = AllProductDAO.getInstance().getNextTop10(n);
        PrintWriter out = response.getWriter();
        for(AllProduct a:allProducts){
            out.println(" <div class=\"item wow zoomIn producttop10\">\n" +
                    "                        <div class=\"product-menu-slide-decription\">\n" +
                    "                            <div class=\"installment-menu\">\n" +
                    "                                <span>Trả góp 0%</span>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"product-item-menu\">\n" +
                    "\n" +
                    "                                <div class=\"product-img-menu\">\n" +
                    "                                    <img src=\""+a.getImg()+"\"\n" +
                    "                                         alt=\"\">\n" +
                    "                                </div>\n" +
                    "                                <div class=\"monopoly-menu\">\n" +
                    "                                    <img src=\"https://cdn.tgdd.vn/ValueIcons/Label_01-05.png\" alt=\"\">\n" +
                    "                                </div>\n" +
                    "\n" +
                    "                                <!-- </div> -->\n" +
                    "                                <div class=\"discount-menu\">\n" +
                    "                                    <img class=\"discount-img\" src=\"./assets/img/discount.png\" alt=\"\">\n" +
                    "                                    <span>Giảm sốc</span>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"product-name-menu\">\n" +
                    "                                    <a href=\"detail?pid=${allpro.id}\">"+a.getName()+"</a>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"product-status-menu\">\n" +
                    "                                <p class=\"item-txt-online\">"+a.getDecription()+"</p>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"product-price-sale-menu\">\n" +
                    "                                <p class=\"price-old\">"+a.getOldPrice()+"</p>\n" +
                    "                                <span class=\"percent\">"+a.getPercent()+"</span>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"product-price-new-menu\">\n" +
                    "                                <p class=\"price-new\">"+a.getNewPrice()+"</p>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"product-vote-menu\">\n" +
                    "                                <p>\n" +
                    "                                    <i class=\"fas fa-star\"></i>\n" +
                    "                                    <i class=\"fas fa-star\"></i>\n" +
                    "                                    <i class=\"fas fa-star\"></i>\n" +
                    "                                    <i class=\"fas fa-star\"></i>\n" +
                    "                                    <i class=\"fas fa-star\"></i>\n" +
                    "                                </p>\n" +
                    "                                <p>"+a.getQuantity()+"</p>\n" +
                    "                            </div>\n" +
                    "\n" +
                    "\n" +
                    "                        </div>\n" +
                    "                    </div>");
        }
    }
}
