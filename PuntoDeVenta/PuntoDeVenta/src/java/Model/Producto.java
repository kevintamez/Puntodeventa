/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.InputStream;

/**
 *
 * @author kevin
 */
public class Producto {
    int idProducto;
    String nombreProducto;
    String descripcionLarga;
    String descripcionCorta;
    double precio; 
    int cantidad;
    InputStream imagenProducto;
    Departamento departamento;    

    public Producto(String nombreProducto, String descripcionLarga, String descripcionCorta, double precio, int cantidad, InputStream imagenProducto, Departamento departamento) {
        this.nombreProducto = nombreProducto;
        this.descripcionLarga = descripcionLarga;
        this.descripcionCorta = descripcionCorta;
        this.precio = precio;
        this.cantidad = cantidad;
        this.imagenProducto = imagenProducto;
        this.departamento = departamento;
    }

    public Producto(int idProducto, String nombreProducto, String descripcionLarga, String descripcionCorta, double precio, int cantidad, InputStream imagenProducto, Departamento departamento) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.descripcionLarga = descripcionLarga;
        this.descripcionCorta = descripcionCorta;
        this.precio = precio;
        this.cantidad = cantidad;
        this.imagenProducto = imagenProducto;
        this.departamento = departamento;
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

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public InputStream getImagenProducto() {
        return imagenProducto;
    }

    public void setImagenProducto(InputStream imagenProducto) {
        this.imagenProducto = imagenProducto;
    }
    
    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }
}
