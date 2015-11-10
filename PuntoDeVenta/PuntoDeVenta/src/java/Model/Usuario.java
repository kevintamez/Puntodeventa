/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.InputStream;
import java.sql.Date;

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
    String RFC;
    Municipio municipio;
    String calle;
    String Estado;
    String nivelDeStudios;
    String contraseña;
    String email;
    String empresa;
    String tipoUsuario;
    String sexo;
    String colonia;
    int codigoPostal;
    String telefono;
    Date fecha;
    InputStream foto;
    int sucursal;

    public Usuario(String email, String contraseña, String empresa, String nombre) {
        this.nombreUsuario = nombre;
        this.email = email;
        this.empresa = empresa;
    }
    public Usuario(int id,String email,String tipo){
        this.idUsuario=id;
        this.email=email;
        this.tipoUsuario=tipo;
    }
    public Usuario(String nombre, String mail , String password){
        this.nombreUsuario=nombre;
        this.contraseña=password;
        this.email=mail;
    }
    public Usuario(String nombreUsuario, String apellidoMterno, String apellidoPaterno, 
            String CURP, Municipio municipio, String calle, String Estado, String nivelDeStudios, 
            String contraseña, String email, String sexo) {
        this.nombreUsuario = nombreUsuario;
        this.apellidoMterno = apellidoMterno;
        this.apellidoPaterno = apellidoPaterno;
        this.CURP = CURP;
        this.municipio = municipio;
        this.calle = calle;
        this.Estado = Estado;
        this.nivelDeStudios = nivelDeStudios;
        this.contraseña = contraseña;
        this.email = email;
        this.sexo=sexo;
    }

    public Usuario(String mail, String password) {
        
        this.email=mail;
        this.contraseña=password;
    }

    public Usuario(String nombre, String email, String contraseña, String apeMa, String apePa,
            String tipo, String curp, String rfc, String nivelEstudio, int municipio, String colonia, 
            int codigo, String calle, String telefono, Date fecha, InputStream foto, int suc, String sexo) {
        this.nombreUsuario=nombre;
        this.email=email;
        this.contraseña=contraseña;
        this.apellidoPaterno=apePa;
        this.apellidoMterno=apeMa;
        this.tipoUsuario=tipo;
        this.CURP=curp;
        this.RFC=rfc;
        this.nivelDeStudios=nivelEstudio;
        //this.municipio=municipio;
        this.colonia=colonia;
        this.codigoPostal=codigo;
        this.calle=calle;
        this.telefono=telefono;
        this.fecha=fecha;
        this.foto=foto;
        this.sucursal=suc;
        this.sexo=sexo;
    }

    public String getNivelDeStudios() {
        return nivelDeStudios;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public void setNivelDeStudios(String nivelDeStudios) {
        this.nivelDeStudios = nivelDeStudios;
    }

    public String getContraseña() {
        return contraseña;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
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

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(int codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
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

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getCURP() {
        return CURP;
    }

    public void setCURP(String CURP) {
        this.CURP = CURP;
    }

    public Municipio getMunicipio() {
        return municipio;
    }

    public void setMunicipio(Municipio municipio) {
        this.municipio = municipio;
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
