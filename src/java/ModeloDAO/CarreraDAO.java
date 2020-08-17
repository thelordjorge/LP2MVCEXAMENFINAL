/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.bd.ConectaBd;
import Interfaces.CRUDCarrera;
import Modelo.Carrera;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ori
 */
public class CarreraDAO implements CRUDCarrera{
    ConectaBd cn = new ConectaBd();
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Carrera c = new Carrera();

    @Override
    public List listarcarrera() {
        ArrayList<Carrera> carreras = new ArrayList<>();
        String consulta = " select* "
                        + "from carrera ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                Carrera carrera = new Carrera();
                carrera.setIdcarrera(rs.getInt("idcarrera"));
                 carrera.setNombre(rs.getString("nombre"));
                carrera.setEstado(rs.getString("estado"));
                carreras.add(carrera);
            }
        } catch (Exception c) {
            
        }
        return carreras;
    }
 

    @Override
    public Carrera buscarcarrera(int idcarrera) {
        String consulta = " select *  "
                        + " from carrera  "
                        + " where idcarrera = " + idcarrera + " ;";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                c.setIdcarrera(rs.getInt("idcarrera"));
                c.setNombre(rs.getString("nombre"));
                c.setEstado(rs.getString("estado"));
            }
        } catch (Exception c) {
        }
        
        return c;
    }

    @Override
    public boolean agregarcarrera(Carrera carrera) {
        String consulta = " insert into carrera(nombre , estado)  "
                        + " values( "
                        + "'"+ carrera.getNombre() +"', "
                        + "'"+ carrera.getEstado() +"') ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception c) {
        }
        return false;
    }

    @Override
    public boolean editarcarrera(Carrera carrera) {
        String consulta = " update carrera "
                        + " set "
                        + " nombre = '"+ carrera.getNombre() +"', "
                        + " estado = '"+ carrera.getEstado() +"' "
                        + " where "
                        + " idcarrera = " + carrera.getIdcarrera() + "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception c) {
        }
        return false;
    }

    @Override
    public boolean eliminarcarrera(int idcarrera) {
       String consulta = " delete from carrera "
                        + " where "
                        + " idcarrera = " + idcarrera + "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception c) {
        }
        return false;
    }

}