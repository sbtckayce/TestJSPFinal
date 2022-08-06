package vn.edu.hcmuaf.fit.dao;

import org.jdbi.v3.core.result.ResultBearing;
import vn.edu.hcmuaf.fit.bean.*;
import vn.edu.hcmuaf.fit.db.JDBIConnect;
import vn.edu.hcmuaf.fit.services.OrderService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class OrderDao {
    private static OrderDao instance;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    private OrderDao() {

    }

    public static OrderDao getInstance() {
        if (instance == null) {
            instance = new OrderDao();
        }
        return instance;
    }

    public boolean create(User user, Cart cart, String name, int phone, String country, String district,String address) {

        int orderId = JDBIConnect.get().withHandle(handle -> {
            ResultBearing resultBearing = handle.createUpdate("INSERT  INTO orders(user_id,status) VALUES (?,?)")
                    .bind(0, user.getId())
                    .bind(1, 0)
                    .executeAndReturnGeneratedKeys();

            return resultBearing.mapTo(Integer.class).findFirst().get();
        });
        int total = JDBIConnect.get().withHandle(h -> {
            int sum = 0;
            for (AllProduct p : cart.getMap()) {
                sum += h.createUpdate("INSERT INTO orders_detail (order_id,allproduct_id,price,quantity,note,name,phone,country, district,address) VALUES (?,?,?,?,?,?,?,?,?,?)")
                        .bind(0, orderId)
                        .bind(1, p.getId())
                        .bind(2, p.getNewPrice())
                        .bind(3, p.getSellQuantity())
                        .bind(4, "success")
                        .bind(5, name)
                        .bind(6, phone)
                        .bind(7, country)
                        .bind(8, district)
                        .bind(9,address).execute();

            }
            return sum;
        });

        return total == cart.getMap().size();
    }
    public List<OrderDetail> allOrderDetail() {
        List<OrderDetail> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM orders_detail").mapToBean(OrderDetail.class).stream().collect(Collectors.toList());
        });
        return list;
    }
}
