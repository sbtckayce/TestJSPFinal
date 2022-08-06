package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.bean.*;
import vn.edu.hcmuaf.fit.db.JDBIConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {
    private static ProductDAO instance;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    private ProductDAO() {

    }

    public static ProductDAO getInstance() {
        if (instance == null) {
            instance = new ProductDAO();
        }
        return instance;
    }



        public List<Product> getAll() {
            List<Product> list = new ArrayList<>();
            String query = "SELECT * FROM allproduct";
            try {
                conn = new JDBIConnect().getConnection();
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getString(8),
                            rs.getString(9),
                            rs.getString(10),
                            rs.getString(11)

                    ));
                }

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }return list;
        }


//
//    public List<Product> getProZone() {
//
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM zone";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }


//
//    public List<Product> getProDienLanh() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM dienlanh";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProMayLanh() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM maylanh";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProTuLanh() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM tulanh";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }
//
//    public List<Product> getProTuDong() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM tudong";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProMayGiat() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM maygiat";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProOnAp() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM onap";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProMayBom() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM maybom";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProMayKhoan() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM maykhoan";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProSuaChua() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM suachua";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }
//
//    public List<Product> getProMayLocNuoc() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM maylocnuoc";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProLocNuoc() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM locnuoc";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProLoiLoc() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM loiloc";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProNongLanh() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM nonglanh";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProXeDap() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM xedap";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProXDDiaHinh() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM xddiahinh";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }
//
//    public List<Product> getProXeTreEm() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM xdtreem";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProPhuKienXD() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM phukienxd";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProGiaDung() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM giadung";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }
//
//    public List<Product> getProGiaDinh() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM giadinh";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProDienThoai() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM dienthoai";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }
//
//    public List<Product> getProLaptop() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM laptop";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProTablet() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM tablet";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProTaiNghe() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM tainghe";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProPin() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM pin";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProSac() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM sac";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }
//
//    public List<Product> getProDHThongMinh() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM dhthongminh";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }
//
//    public List<Product> getProDHNu() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM dhnu";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProDHNam() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM dhnam";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//
//    }
//
//    public List<Product> getProDHTreEm() {
//
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM dhtreem";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                ));
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return list;
//    }

//    public Product detailProductSaleByID(String sid){
//        String query="SELECT * FROM sale WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }

//    public Product detailProductLoaByID(String sid){
//        String query="SELECT * FROM loa WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//
//    public Product detailProductZoneByID(String sid){
//        String query="SELECT * FROM zone WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductDienLanhByID(String sid){
//        String query="SELECT * FROM dienlanh WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductMayLanhByID(String sid){
//        String query="SELECT * FROM maylanh WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductTuLanhByID(String sid){
//        String query="SELECT * FROM tulanh WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductTuDongByID(String sid){
//        String query="SELECT * FROM tudong WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductMayGiatByID(String sid){
//        String query="SELECT * FROM maygiat WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductOnApByID(String sid){
//        String query="SELECT * FROM onap WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductMayBomByID(String sid){
//        String query="SELECT * FROM maybom WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductMayKhoanByID(String sid){
//        String query="SELECT * FROM maykhoan WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductSuaChuaByID(String sid){
//        String query="SELECT * FROM suachua WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductMayLocNuocByID(String sid){
//        String query="SELECT * FROM maylocnuoc WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductLocNuocByID(String sid){
//        String query="SELECT * FROM locnuoc WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductLoiLocByID(String sid){
//        String query="SELECT * FROM loiloc WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductNongLanhByID(String sid){
//        String query="SELECT * FROM nonglanh WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductXDDiaHinhByID(String sid){
//        String query="SELECT * FROM xddiahinh WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductXeDapByID(String sid){
//        String query="SELECT * FROM xedap WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductXDTreEmByID(String sid){
//        String query="SELECT * FROM xdtreem WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductPhuKienXDByID(String sid){
//        String query="SELECT * FROM phukienxd WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductGiaDinhByID(String sid){
//        String query="SELECT * FROM giadinh WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductGiaDungByID(String sid){
//        String query="SELECT * FROM giadung WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductDienThoaiByID(String sid){
//        String query="SELECT * FROM dienthoai WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductLaptopByID(String sid){
//        String query="SELECT * FROM laptop WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductTabletByID(String sid){
//        String query="SELECT * FROM tablet WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductTaiNgheByID(String sid){
//        String query="SELECT * FROM tainghe WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductPinByID(String sid){
//        String query="SELECT * FROM pin WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductSacByID(String sid){
//        String query="SELECT * FROM sac WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductDHThongMinhByID(String sid){
//        String query="SELECT * FROM dhthongminh WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductDHNamByID(String sid){
//        String query="SELECT * FROM dhnam WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductDHNuByID(String sid){
//        String query="SELECT * FROM dhnu WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
//    public Product detailProductDHTreEmByID(String sid){
//        String query="SELECT * FROM dhtreem WHERE id=?";
//        try {
//            conn = new JDBIConnect().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1,sid);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Product(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10),
//                        rs.getString(11)
//
//                );
//            }
//
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }return null;
//    }
}
