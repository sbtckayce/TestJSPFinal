package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.bean.Cart;
import vn.edu.hcmuaf.fit.bean.OrderDetail;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.dao.AllProductDAO;
import vn.edu.hcmuaf.fit.dao.OrderDao;

import java.util.List;

public class OrderService {
    private static OrderService instance;

    private OrderService(){

    }
    public static OrderService getInstance(){
        if(instance == null){
            instance = new OrderService();
        }
        return instance;
    }
    public boolean createOrder(User user, Cart cart,String name,int phone,String country,String district,String address){
        OrderDao orderDao = OrderDao.getInstance();
        return orderDao.create(user,cart,name,phone,country,district,address);
    }
    public List<OrderDetail> allOrderDetail(){

        return OrderDao.getInstance().allOrderDetail();
    }
}
