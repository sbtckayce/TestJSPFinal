package vn.edu.hcmuaf.fit.bean;

import java.util.Date;

public class OrderDetails {
    private String maHD;
    private String maSP;
    private int soLuong;
    private float tongTien;
    private String tenKH;
    private String diaChi;
    private String sdt;
    private String hinhThucMuaHang;
    private String trangThai;
    private Date ngayTao;
    private Date ngayCapNhat;

    public OrderDetails(String maHD, String maSP, int soLuong, float tongTien, String tenKH, String diaChi, String sdt, String hinhThucMuaHang, String trangThai, Date ngayTao, Date ngayCapNhat) {
        this.maHD = maHD;
        this.maSP = maSP;
        this.soLuong = soLuong;
        this.tongTien = tongTien;
        this.tenKH = tenKH;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.hinhThucMuaHang = hinhThucMuaHang;
        this.trangThai = trangThai;
        this.ngayTao = ngayTao;
        this.ngayCapNhat = ngayCapNhat;
    }

    public String getMaHD() {
        return maHD;
    }

    public void setMaHD(String maHD) {
        this.maHD = maHD;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getHinhThucMuaHang() {
        return hinhThucMuaHang;
    }

    public void setHinhThucMuaHang(String hinhThucMuaHang) {
        this.hinhThucMuaHang = hinhThucMuaHang;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public Date getNgayCapNhat() {
        return ngayCapNhat;
    }

    public void setNgayCapNhat(Date ngayCapNhat) {
        this.ngayCapNhat = ngayCapNhat;
    }
}
