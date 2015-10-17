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
public class Inventario {
    int idInventario;
    int idProducto;
    int idSucursal;
    int existencia;

    public Inventario(int idInventario, int idProducto, int idSucursal, int existencia) {
        this.idInventario = idInventario;
        this.idProducto = idProducto;
        this.idSucursal = idSucursal;
        this.existencia = existencia;
    }

    public Inventario(int idProducto, int idSucursal, int existencia) {
        this.idProducto = idProducto;
        this.idSucursal = idSucursal;
        this.existencia = existencia;
    }

    public int getIdInventario() {
        return idInventario;
    }

    public void setIdInventario(int idInventario) {
        this.idInventario = idInventario;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdSucursal() {
        return idSucursal;
    }

    public void setIdSucursal(int idSucursal) {
        this.idSucursal = idSucursal;
    }

    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }
}
