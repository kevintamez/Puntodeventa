/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ray
 */
public class Venta {
    int folio;
    int usuarioID;
    int productoID;
    String fechaVenta;
    double totalVenta;

    public Venta(int folio, int usuarioID, int productoID, String fechaVenta, double totalVenta) {
        this.folio = folio;
        this.usuarioID = usuarioID;
        this.productoID = productoID;
        this.fechaVenta = fechaVenta;
        this.totalVenta = totalVenta;
    }

    public Venta(int usuarioID, int productoID, String fechaVenta, double totalVenta) {
        this.usuarioID = usuarioID;
        this.productoID = productoID;
        this.fechaVenta = fechaVenta;
        this.totalVenta = totalVenta;
    }

    public int getFolio() {
        return folio;
    }

    public void setFolio(int folio) {
        this.folio = folio;
    }

    public int getUsuarioID() {
        return usuarioID;
    }

    public void setUsuarioID(int usuarioID) {
        this.usuarioID = usuarioID;
    }

    public int getProductoID() {
        return productoID;
    }

    public void setProductoID(int productoID) {
        this.productoID = productoID;
    }

    public String getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(String fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public double getTotalVenta() {
        return totalVenta;
    }

    public void setTotalVenta(double totalVenta) {
        this.totalVenta = totalVenta;
    }
    
    
}
