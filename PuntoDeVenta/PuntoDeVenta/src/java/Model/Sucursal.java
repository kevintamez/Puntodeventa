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
public class Sucursal {
<<<<<<< HEAD
    int idSucursal;
    String nombreSucursal;
    int numeroExtSucursal;
    String calleSucursal;
    String coloniaSucursal;
    int codigoPostalSucursal;
    int idMunicipio;
    int numeroSucursal;
    int idEmpresa;

    public Sucursal(int idSucursal, String nombreSucursal, int numeroExtSucursal, String calleSucursal, String coloniaSucursal, int codigoPostalSucursal, int idMunicipio, int numeroSucursal, int idEmpresa) {
        this.idSucursal = idSucursal;
        this.nombreSucursal = nombreSucursal;
        this.numeroExtSucursal = numeroExtSucursal;
        this.calleSucursal = calleSucursal;
        this.coloniaSucursal = coloniaSucursal;
        this.codigoPostalSucursal = codigoPostalSucursal;
        this.idMunicipio = idMunicipio;
        this.numeroSucursal = numeroSucursal;
        this.idEmpresa = idEmpresa;
    }

    public Sucursal(String nombreSucursal, int numeroExtSucursal, String calleSucursal, String coloniaSucursal, int codigoPostalSucursal, int idMunicipio, int numeroSucursal, int idEmpresa) {
        this.nombreSucursal = nombreSucursal;
        this.numeroExtSucursal = numeroExtSucursal;
        this.calleSucursal = calleSucursal;
        this.coloniaSucursal = coloniaSucursal;
        this.codigoPostalSucursal = codigoPostalSucursal;
        this.idMunicipio = idMunicipio;
        this.numeroSucursal = numeroSucursal;
        this.idEmpresa = idEmpresa;
    }

    public int getIdSucursal() {
        return idSucursal;
    }

    public void setIdSucursal(int idSucursal) {
        this.idSucursal = idSucursal;
    }

    public String getNombreSucursal() {
        return nombreSucursal;
    }

    public void setNombreSucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }

    public int getNumeroExtSucursal() {
        return numeroExtSucursal;
    }

    public void setNumeroExtSucursal(int numeroExtSucursal) {
        this.numeroExtSucursal = numeroExtSucursal;
    }

    public String getCalleSucursal() {
        return calleSucursal;
    }

    public void setCalleSucursal(String calleSucursal) {
        this.calleSucursal = calleSucursal;
    }

    public String getColoniaSucursal() {
        return coloniaSucursal;
    }

    public void setColoniaSucursal(String coloniaSucursal) {
        this.coloniaSucursal = coloniaSucursal;
    }

    public int getCodigoPostalSucursal() {
        return codigoPostalSucursal;
    }

    public void setCodigoPostalSucursal(int codigoPostalSucursal) {
        this.codigoPostalSucursal = codigoPostalSucursal;
    }

    public int getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(int idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public int getNumeroSucursal() {
        return numeroSucursal;
    }

    public void setNumeroSucursal(int numeroSucursal) {
        this.numeroSucursal = numeroSucursal;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }
=======
    String nombreSucursal;
    String direccionSucursal;
    String calleSucursal;
    int numeroSucursal;
    int idEmpresa;

    public Sucursal(String nombreSucursal, String direccionSucursal, String calleSucursal, int numeroSucursal, int idEmpresa) {
        this.nombreSucursal = nombreSucursal;
        this.direccionSucursal = direccionSucursal;
        this.calleSucursal = calleSucursal;
        this.numeroSucursal = numeroSucursal;
        this.idEmpresa = idEmpresa;
    }
>>>>>>> master
    
    
}
