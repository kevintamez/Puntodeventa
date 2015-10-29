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
public class Usuario {

    int idUsuario;
    String nombreUsuario;
    String apellidoMterno;
    String apellidoPaterno;
    String CURP;
    String colonia;
    String calle;
    String Estado;
    int nivelDeStudios;
    String contraseña;
    String email;
    String empresa;

    public Usuario(String email, String contraseña, String empresa, String nombre) {
        this.nombreUsuario = nombre;
        this.email = email;
        this.empresa = empresa;
    }

    public Usuario(String nombreUsuario, String apellidoMterno, String apellidoPaterno, String CURP, String colonia, String calle, String Estado, int nivelDeStudios, String contraseña, String email) {
        this.nombreUsuario = nombreUsuario;
        this.apellidoMterno = apellidoMterno;
        this.apellidoPaterno = apellidoPaterno;
        this.CURP = CURP;
        this.colonia = colonia;
        this.calle = calle;
        this.Estado = Estado;
        this.nivelDeStudios = nivelDeStudios;
        this.contraseña = contraseña;
        this.email = email;
    }

    public Usuario(String usuarioNombre, String mail, String password) {
        this.nombreUsuario=usuarioNombre;
        this.email=mail;
        this.contraseña=password;
    }

    public int getNivelDeStudios() {
        return nivelDeStudios;
    }

    public void setNivelDeStudios(int nivelDeStudios) {
        this.nivelDeStudios = nivelDeStudios;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getEmail() {
        return email;
    }

    public void setCorreo(String email) {
        this.email = email;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getApellidoMterno() {
        return apellidoMterno;
    }

    public void setApellidoMterno(String apellidoMterno) {
        this.apellidoMterno = apellidoMterno;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getCURP() {
        return CURP;
    }

    public void setCURP(String CURP) {
        this.CURP = CURP;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

}
