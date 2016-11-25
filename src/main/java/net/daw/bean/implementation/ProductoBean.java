/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.daw.bean.implementation;

import com.google.gson.annotations.Expose;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import net.daw.bean.publicinterface.GenericBean;
import net.daw.helper.statics.EncodingUtilHelper;

/**
 *
 * @author yanda
 */
public class ProductoBean implements GenericBean {

    @Expose
    private Integer id;
    @Expose
    private String nombre = "";
    @Expose
    private Integer cantidad;
    
    public ProductoBean() {
        this.id = 0;
    }

    public ProductoBean(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String getColumns() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strColumns = "";
        strColumns += "id,";
        strColumns += "nombre,";
        strColumns += "cantidad";

        return strColumns;
    }

    @Override
    public String getValues() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strColumns = "";
        strColumns += id + ",";
        strColumns += EncodingUtilHelper.quotate(nombre) + ",";
        strColumns += cantidad;

        return strColumns;
    }

    @Override
    public String toPairs() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strPairs = "";
        strPairs += "id=" + id + ",";
        strPairs += "nombre=" + EncodingUtilHelper.quotate(nombre) + ",";
        strPairs += "cantidad=" + cantidad;

        return strPairs;
    }

    @Override
    public ProductoBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.setId(oResultSet.getInt("id"));
        this.setNombre(oResultSet.getString("nombre"));
        this.setCantidad(oResultSet.getInt("cantidad"));
        return this;
    }

}
