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
    
    
}
