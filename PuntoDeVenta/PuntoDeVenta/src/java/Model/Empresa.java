/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.InputStream;

/**
 *
 * @author ray
 */
public class Empresa {
    int idEmpresa;
    String nombreEmpresa;
    String sloganEmpresa;
    InputStream logoEmpresa;
    InputStream imagenEmpresa;

    public Empresa(int idEmpresa, String nombreEmpresa, InputStream logoEmpresa, InputStream imagenEmpresa) {
        this.idEmpresa = idEmpresa;
        this.nombreEmpresa = nombreEmpresa;
        this.logoEmpresa = logoEmpresa;
        this.imagenEmpresa = imagenEmpresa;
    }
    public Empresa(String nombre){
        this.nombreEmpresa=nombre;
    }
    public Empresa(String nombreEmpresa, InputStream logoEmpresa, InputStream imagenEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
        this.logoEmpresa = logoEmpresa;
        this.imagenEmpresa = imagenEmpresa;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }
    
    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }
    public String getsloganEmpresa(){
        return sloganEmpresa;
    }
    public void setsloganEmpresa(String sloganEmpresa){
        this.sloganEmpresa=sloganEmpresa;
    }

    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    public InputStream getLogoEmpresa() {
        return logoEmpresa;
    }

    public void setLogoEmpresa(InputStream logoEmpresa) {
        this.logoEmpresa = logoEmpresa;
    }

    public InputStream getImagenEmpresa() {
        return imagenEmpresa;
    }

    public void setImagenEmpresa(InputStream imagenEmpresa) {
        this.imagenEmpresa = imagenEmpresa;
    }
}
