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
public class Estado {
    int idEstado;
    String nombreEstado;
    int idPais;

    public Estado(int idEstado, String nombreEstado) {
        this.idEstado = idEstado;
        this.nombreEstado = nombreEstado;
    }

    public Estado(String nombreEstado, int idPais) {
        this.nombreEstado = nombreEstado;
        this.idPais = idPais;
    }

    public int getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }

    public String getNombreEstado() {
        return nombreEstado;
    }

    public void setNombreEstado(String nombreEstado) {
        this.nombreEstado = nombreEstado;
    }

    public int getIdPais() {
        return idPais;
    }

    public void setIdPais(int idPais) {
        this.idPais = idPais;
    }
}
