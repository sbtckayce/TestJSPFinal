package vn.edu.hcmuaf.fit.dao;


import vn.edu.hcmuaf.fit.bean.AllProduct;
import vn.edu.hcmuaf.fit.bean.Product;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.db.JDBIConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class AllProductDAO {
    private static AllProductDAO instance;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public AllProductDAO() {

    }

    public static AllProductDAO getInstance() {
        if (instance == null) {
            instance = new AllProductDAO();
        }
        return instance;
    }



    public void deleteProduct(String sptid) {
        String query = "DELETE FROM allproduct WHERE id = ?";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sptid);

            ps.executeUpdate();


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    public List<AllProduct> getTop10() {
        List<AllProduct> list = new ArrayList<>();
        String query = "SELECT * FROM allproduct LIMIT 10;";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AllProduct(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getString(15)
                ));
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }return list;

    }

    public List<AllProduct> getNextTop10(int n) {
        List<AllProduct> list = new ArrayList<>();
        String query = "SELECT * FROM allproduct LIMIT ?,10;";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,n);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AllProduct(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getString(15)
                ));
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }return list;


    }

    public List<AllProduct> getProductByID(String cid) {
               List<AllProduct> list = new ArrayList<>();
        String query = "SELECT * FROM allproduct WHERE cid=?";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AllProduct(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getString(15)
                ));
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }return list;

    }

    public AllProduct detailProduct(String pid) {
        String query = "SELECT * FROM allproduct WHERE id=?";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AllProduct(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getString(15)
                );
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<AllProduct> searchProduct(String txtSeach) {
//        List<AllProduct>list = new ArrayList<>();
//        String query = "SELECT * FROM allproduct WHERE name LIKE ?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,"%"+txtSeach+"%");
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new AllProduct(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getInt(6),
//                        rs.getInt(7),
//                        rs.getInt(8),
//                        rs.getInt(9),
//                        rs.getString(10),
//                        rs.getString(11),
//                        rs.getString(12),
//                        rs.getInt(13),
//                        rs.getInt(14),
//                        rs.getString(15)
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;

        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE name LIKE ?").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public User login(String username, String password) {
        String query = "SELECT * FROM account WHERE username =? and password =?";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)

                );
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User checkUserName(String username) {
        String query = "SELECT * FROM account WHERE username =?";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);

            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)

                );
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void register(String username, String password) {
        String query = "INSERT INTO account(username,password,isSell,isAdmin) VALUES(?,?,0,0)";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void editSellProduct(String name, String decription, String newPrice, String img, String category, String id) {
        String query = "UPDATE allproduct set \n" +
                "name=?,\n" +
                "decription=?,\n" +
                "newprice=?,\n" +
                "img =?,\n" +
                "cid=?\n" +
                "where id=?";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, decription);
            ps.setString(3, newPrice);
            ps.setString(4, img);
            ps.setString(5, category);
            ps.setString(6, id);


            ps.executeUpdate();


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void addSellProduct(String name, String img, String newPrice, String decription, String sid) {
        String query = "INSERT INTO allproduct (name,img,newprice,decription,sid) VALUES(?,?,?,?,?)";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, img);
            ps.setString(3, newPrice);
            ps.setString(4, decription);
            ps.setString(5, sid);

            ps.executeUpdate();


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public List<AllProduct> sellProduct(String sid) {
        List<AllProduct> list = new ArrayList<>();
        String query = "SELECT * FROM allproduct where sid =?";
        try {
            conn = new JDBIConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AllProduct(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getString(15)
                ));
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

// product
    public List<AllProduct> getProTivi() {

        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='tivi'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;

    }


    public List<AllProduct> getProLoa() {

        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='loa'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;

    }

    public List<AllProduct> getProSale() {

        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='sale'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProMayLanh() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='maylanh'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProTuDong() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='tudong'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProTuLanh() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='tulanh'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProOnAp() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='onap'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProMayLocNuoc() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='maylocnuoc'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProGiaDinh() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='giadinh'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProGiaDung() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='giadung'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProDienThoai() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='dienthoai'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProLaptop() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='laptop'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProTablet() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='tablet'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProTaiNghe() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='tainghe'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProDHNam() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='dhnam'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProDHNu() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='dhnu'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<AllProduct> getProXeDap() {
        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct where categoryProduct='xedap'").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
//    detail

    public AllProduct detailProductTiviByID(String sid) {

        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='tivi'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }

    public AllProduct detailProductLoaByID(String sid) {

        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='loa'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductSaleByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='sale'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductMayLanhByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='maylanh'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductTuLanhByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='tulanh'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductTuDongByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='tudong'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductOnApByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='onap'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductMayLocNuocByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='maylocnuoc'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductGiaDinhByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='giadinh'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductGiaDungByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='giadung'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductDienThoaiByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='dienthoai'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductLaptopByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='laptop'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductTabletByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='tablet'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductTaiNgheByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='tainghe'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductDHNamByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='dhnam'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }
    public AllProduct detailProductDHNuByID(String sid){
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct WHERE id=? AND categoryProduct='dhnu'")
                    .bind(0, sid)
                    .mapToBean(AllProduct.class).first();
        });
    }

    //    all product
    public List<AllProduct> getAll() {

        List<AllProduct> list = JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM allproduct").mapToBean(AllProduct.class).stream().collect(Collectors.toList());
        });
        return list;
    }
// cảt
    public AllProduct getPrById(int id) {
        return JDBIConnect.get().withHandle(handle -> {
            return handle.createQuery("select  * from allproduct where id =?")
                    .bind(0, id)
                    .mapToBean(AllProduct.class).first();
        });
    }

    public static void main(String[] args) {

    }
}
