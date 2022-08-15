package vn.edu.hcmuaf.fit.bean;

import java.util.Date;

public class Product {
    private String maSP;
    private String tenSP;
    private String maLoai;
    private String maThuongHieu;
    private String anhGoc;
    private String anhMoTa1;
    private String anhMoTa2;
    private String anhMoTa3;
    private String anhMoTa4;
    private Float giaBan;
    private Float giaSale;
    private int soLuongDaBan;
    private int soLuongTrongKho;
    private double khoiLuong;
    private Date namSX;
    private String moTa;
    private String note;

    public Product(String maSP, String tenSP, String maLoai, String maThuongHieu, String anhGoc, String anhMoTa1, String anhMoTa2, String anhMoTa3, String anhMoTa4, Float giaBan, Float giaSale, int soLuongDaBan, int soLuongTrongKho, double khoiLuong, Date namSX, String moTa, String note) {
        this.maSP = maSP;
        this.tenSP = tenSP;
        this.maLoai = maLoai;
        this.maThuongHieu = maThuongHieu;
        this.anhGoc = anhGoc;
        this.anhMoTa1 = anhMoTa1;
        this.anhMoTa2 = anhMoTa2;
        this.anhMoTa3 = anhMoTa3;
        this.anhMoTa4 = anhMoTa4;
        this.giaBan = giaBan;
        this.giaSale = giaSale;
        this.soLuongDaBan = soLuongDaBan;
        this.soLuongTrongKho = soLuongTrongKho;
        this.khoiLuong = khoiLuong;
        this.namSX = namSX;
        this.moTa = moTa;
        this.note = note;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getMaLoai() {
        return maLoai;
    }

    public void setMaLoai(String maLoai) {
        this.maLoai = maLoai;
    }

    public String getMaThuongHieu() {
        return maThuongHieu;
    }

    public void setMaThuongHieu(String maThuongHieu) {
        this.maThuongHieu = maThuongHieu;
    }

    public String getAnhGoc() {
        return anhGoc;
    }

    public void setAnhGoc(String anhGoc) {
        this.anhGoc = anhGoc;
    }

    public String getAnhMoTa1() {
        return anhMoTa1;
    }

    public void setAnhMoTa1(String anhMoTa1) {
        this.anhMoTa1 = anhMoTa1;
    }

    public String getAnhMoTa2() {
        return anhMoTa2;
    }

    public void setAnhMoTa2(String anhMoTa2) {
        this.anhMoTa2 = anhMoTa2;
    }

    public String getAnhMoTa3() {
        return anhMoTa3;
    }

    public void setAnhMoTa3(String anhMoTa3) {
        this.anhMoTa3 = anhMoTa3;
    }

    public String getAnhMoTa4() {
        return anhMoTa4;
    }

    public void setAnhMoTa4(String anhMoTa4) {
        this.anhMoTa4 = anhMoTa4;
    }

    public Float getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(Float giaBan) {
        this.giaBan = giaBan;
    }

    public Float getGiaSale() {
        return giaSale;
    }

    public void setGiaSale(Float giaSale) {
        this.giaSale = giaSale;
    }

    public int getSoLuongDaBan() {
        return soLuongDaBan;
    }

    public void setSoLuongDaBan(int soLuongDaBan) {
        this.soLuongDaBan = soLuongDaBan;
    }

    public int getSoLuongTrongKho() {
        return soLuongTrongKho;
    }

    public void setSoLuongTrongKho(int soLuongTrongKho) {
        this.soLuongTrongKho = soLuongTrongKho;
    }

    public double getKhoiLuong() {
        return khoiLuong;
    }

    public void setKhoiLuong(double khoiLuong) {
        this.khoiLuong = khoiLuong;
    }

    public Date getNamSX() {
        return namSX;
    }

    public void setNamSX(Date namSX) {
        this.namSX = namSX;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
