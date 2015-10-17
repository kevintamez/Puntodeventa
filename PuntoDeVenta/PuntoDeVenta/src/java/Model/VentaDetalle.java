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
public class VentaDetalle {
    int idVentaDetalle;
    int venta;
    int idProducto;

    public VentaDetalle(int idVentaDetalle, int venta, int idProducto) {
        this.idVentaDetalle = idVentaDetalle;
        this.venta = venta;
        this.idProducto = idProducto;
    }

    public VentaDetalle(int venta, int idProducto) {
        this.venta = venta;
        this.idProducto = idProducto;
    }

    public int getIdVentaDetalle() {
        return idVentaDetalle;
    }

    public void setIdVentaDetalle(int idVentaDetalle) {
        this.idVentaDetalle = idVentaDetalle;
    }

    public int getVenta() {
        return venta;
    }

    public void setVenta(int venta) {
        this.venta = venta;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }
}
