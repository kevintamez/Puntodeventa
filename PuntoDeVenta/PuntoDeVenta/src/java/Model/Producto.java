/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author kevin
 */
public class Producto {
    int idProducto;
    String nombreProducto;
    String descripcionLarga;
    String descripcionCorta;

    public Producto(String nombreProducto, String descripcionLarga, String descripcionCorta) {
        this.nombreProducto = nombreProducto;
        this.descripcionLarga = descripcionLarga;
        this.descripcionCorta = descripcionCorta;
    }

    public Producto(int idProducto, String nombreProducto, String descripcionLarga, String descripcionCorta) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.descripcionLarga = descripcionLarga;
        this.descripcionCorta = descripcionCorta;
    }
    
    

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getDescripcionLarga() {
        return descripcionLarga;
    }

    public void setDescripcionLarga(String descripcionLarga) {
        this.descripcionLarga = descripcionLarga;
    }

    public String getDescripcionCorta() {
        return descripcionCorta;
    }

    public void setDescripcionCorta(String descripcionCorta) {
        this.descripcionCorta = descripcionCorta;
    }
}
