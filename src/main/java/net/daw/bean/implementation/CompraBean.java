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
import net.daw.dao.implementation.FacturaDao;
import net.daw.dao.implementation.ProductoDao;
import net.daw.dao.implementation.UsuarioDao;
import net.daw.helper.statics.EncodingUtilHelper;

/**
 *
 * @author yanda
 */
public class CompraBean implements GenericBean{
    @Expose
    private Integer id;
    @Expose
    private Integer cantidad;
//    @Expose
//    private String descripcion;
    @Expose(serialize = false)
    private Integer id_usuario = 0;
    @Expose(deserialize = false)
    private UsuarioBean obj_usuario = null;
    @Expose(serialize = false)
    private Integer id_producto = 0;
    @Expose(deserialize = false)
    private ProductoBean obj_producto = null;
//    @Expose(serialize = false)
//    private Integer id_factura = 0;
//    @Expose(deserialize = false)
//    private FacturaBean obj_factura = null;
    
    public CompraBean() {
        this.id = 0;
    }

    public CompraBean(Integer id) {
        this.id = id;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

//    public String getDescripcion() {
//        return descripcion;
//    }
//
//    public void setDescripcion(String descripcion) {
//        this.descripcion = descripcion;
//    }

    public Integer getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Integer id_usuario) {
        this.id_usuario = id_usuario;
    }

    public UsuarioBean getObj_usuario() {
        return obj_usuario;
    }

    public void setObj_usuario(UsuarioBean obj_usuario) {
        this.obj_usuario = obj_usuario;
    }

    public Integer getId_producto() {
        return id_producto;
    }

    public void setId_producto(Integer id_producto) {
        this.id_producto = id_producto;
    }

    public ProductoBean getObj_producto() {
        return obj_producto;
    }

    public void setObj_producto(ProductoBean obj_producto) {
        this.obj_producto = obj_producto;
    }

//    public Integer getId_factura() {
//        return id_factura;
//    }
//
//    public void setId_factura(Integer id_factura) {
//        this.id_factura = id_factura;
//    }
//
//    public FacturaBean getObj_factura() {
//        return obj_factura;
//    }
//
//    public void setObj_factura(FacturaBean obj_factura) {
//        this.obj_factura = obj_factura;
//    }

    @Override
    public String getColumns() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strColumns = "";
        strColumns += "id,";
        strColumns += "cantidad,";
        strColumns += "id_usuario,";
        strColumns += "id_producto,";
//        strColumns += "id_factura";
        
        return strColumns;
    }

    @Override
    public String getValues() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strColumns = "";
        strColumns += id + ",";
        strColumns += cantidad + ",";
//        strColumns += EncodingUtilHelper.quotate(descripcion) + ",";
        strColumns += id_usuario + ",";
        strColumns += id_producto;
//        strColumns += id_factura;
        
        return strColumns;
    }

    @Override
    public String toPairs() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strPairs = "";
        strPairs += "id=" + id + ",";
        strPairs += "cantidad=" + cantidad + ",";
//        strPairs += "descripcion=" + EncodingUtilHelper.quotate(descripcion) + ",";
        strPairs += "id_usuario=" + id_usuario + ",";
        strPairs += "id_producto=" + id_producto;
//        strPairs += "id_factura=" + id_factura;
        
        return strPairs;
    }

    @Override
    public CompraBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.setId(oResultSet.getInt("id"));
        this.setCantidad(oResultSet.getInt("cantidad"));
//        this.setDescripcion(oResultSet.getString("descripcion"));
        if (expand > 0) {
            UsuarioBean oUsuarioBean = new UsuarioBean();
            UsuarioDao oUsuarioDao = new UsuarioDao(pooledConnection);
            oUsuarioBean.setId(oResultSet.getInt("id_usuario"));
            oUsuarioBean = oUsuarioDao.get(oUsuarioBean, expand - 1);
            this.setObj_usuario(oUsuarioBean);
        } else {
            this.setId_usuario(oResultSet.getInt("id_usuario"));
        }
        if (expand > 0) {
            ProductoBean oProductoBean = new ProductoBean();
            ProductoDao oProductoDao = new ProductoDao(pooledConnection);
            oProductoBean.setId(oResultSet.getInt("id_producto"));
            oProductoBean = oProductoDao.get(oProductoBean, expand - 1);
            this.setObj_producto(oProductoBean);
        } else {
            this.setId_producto(oResultSet.getInt("id_producto"));
        }
//        if (expand > 0) {
//            FacturaBean oFacturaBean = new FacturaBean();
//            FacturaDao oFacturaDao = new FacturaDao(pooledConnection);
//            oFacturaBean.setId(oResultSet.getInt("id_factura"));
//            oFacturaBean = oFacturaDao.get(oFacturaBean, expand - 1);
//            this.setObj_factura(oFacturaBean);
//        } else {
//            this.setId_factura(oResultSet.getInt("id_factura"));
//        }
        
        return this;
    }
    
    
}
