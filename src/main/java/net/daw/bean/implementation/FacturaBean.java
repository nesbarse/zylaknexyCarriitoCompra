/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.daw.bean.implementation;

import com.google.gson.annotations.Expose;
import java.sql.Connection;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import net.daw.bean.publicinterface.GenericBean;
import net.daw.dao.implementation.CompraDao;
import net.daw.helper.statics.EncodingUtilHelper;

/**
 *
 * @author yanda
 */
public class FacturaBean implements GenericBean{
    @Expose
    private Integer id;
    @Expose
    private Date fecha;
    @Expose(serialize = false)
    private Integer id_compra = 0;
    @Expose(deserialize = false)
    private CompraBean obj_compra = null;
    
    public FacturaBean() {
        this.id = 0;
    }

    public FacturaBean(Integer id) {
        this.id = id;
    }

    public Integer getId_compra() {
        return id_compra;
    }

    public void setId_compra(Integer id_compra) {
        this.id_compra = id_compra;
    }

    public CompraBean getObj_compra() {
        return obj_compra;
    }

    public void setObj_compra(CompraBean obj_compra) {
        this.obj_compra = obj_compra;
    }
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @Override
    public String getColumns() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strColumns = "";
        strColumns += "id,";
        strColumns += "fecha,";
        strColumns += "compra";
        
        return strColumns;
    }

    @Override
    public String getValues() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String strColumns = "";
        strColumns += id + ",";
        strColumns += EncodingUtilHelper.stringifyAndQuotate(fecha);
        strColumns += id_compra;
        
        return strColumns;
    }

    @Override
    public String toPairs() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String strPairs = "";
        strPairs += "id=" + id + ",";
        strPairs += "fecha=" + EncodingUtilHelper.quotate(format.format(fecha));
        strPairs += "id_compra=" + id_compra;
        
        return strPairs;
    }

    @Override
    public FacturaBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.setId(oResultSet.getInt("id"));
        this.setFecha(oResultSet.getDate("fecha"));
        if (expand > 0) {
            CompraBean oCompraBean = new CompraBean();
            CompraDao oCompraDao = new CompraDao(pooledConnection);
            oCompraBean.setId(oResultSet.getInt("id_compra"));
            oCompraBean = oCompraDao.get(oCompraBean, expand - 1);
            this.setObj_compra(oCompraBean);
        } else {
            this.setId_compra(oResultSet.getInt("id_compra"));
        }
        
        return this;
    }
    
    
}
