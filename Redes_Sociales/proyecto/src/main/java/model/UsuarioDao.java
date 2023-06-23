package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.Conexion;

public class UsuarioDao {
     //Atributos para realizar operaciones sobre la base de datos
     Connection con; //Objeto de conexión
     PreparedStatement ps; //Preparar las sentencias
     ResultSet rs; //objeto para almacenar consultas
     String sql=null; //variable para guardar sentencias
     int r;//cantidad de filas que devuelve una sentencia
    // 
    public int Registrar(UsuarioVo v) throws SQLException {
        //consulta preparada
        sql="INSERT INTO user ( `nameuser`, `lastnameuser`,`mailuser`,`numuser`,`useru`,`passworduser`) values (?,?,?,?,?,?)";
        try {
            con=Conexion.conectar();//abrir conexion
            //preparar sentencia
            ps=con.prepareStatement(sql);
            ps.setString(1, v.getNameuser());
            ps.setString(2, v.getLastnameuser());
            ps.setString(3, v.getMailuser());
            ps.setString(4, v.getNumuser());
            ps.setString(5, v.getUseru());
            ps.setString(6, v.getPassworduser());
            System.out.println(sql);
            ps.executeUpdate();

            ps.close(); //cerrar sentencia
            System.out.println("Se registro el usuario en la base de datos");
        } catch (Exception e) {//definicion de objeto
            System.out.println("Error en el registro "+e.getMessage().toString());
        }
        finally{
            con.close();//cerrando conexion
        }
        return r;
    }
    // Lista un arreglo
    public List<UsuarioVo> Listar() throws SQLException {
        // arraylist-almacena datos en memoria-guardar de manera diferente,forma dinamica
        List<UsuarioVo> ListaUsuarios= new ArrayList<>();
        sql="SELECT * FROM user";
        try {
            con=Conexion.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery(sql);
            while (rs.next()) {
               UsuarioVo row = new UsuarioVo();
               //Escribir en el setter de cada valor encontrado
               row.setIduser(rs.getInt("iduser")); 
               row.setNameuser(rs.getString("nameuser")); 
               row.setLastnameuser(rs.getString("lastnameuser")); 
               row.setMailuser(rs.getString("mailuser"));
               row.setNumuser(rs.getString("numuser"));  
               row.setUseru(rs.getString("useru")); 
               row.setPassworduser(rs.getString("passworduser")); 
               
               ListaUsuarios.add(row);
            }
            ps.close();
            System.out.println("Consulta Exitosa");
        } catch (Exception e) {
            System.out.println("La consulta no pudo ser ejecutada"+e.getMessage().toString());
        } finally{
            con.close();
        }
        return ListaUsuarios;
    }
    public void Eliminar(int iduser) throws SQLException {
        sql="DELETE FROM user WHERE iduser="+iduser;
        try {
            con=Conexion.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            ps.close();
            System.out.print("Se elimino el rol exitosamente");

        } catch (Exception e) {
            System.out.println("Error al eliminar registro "+e.getMessage().toString());
        }finally{
            con.close();
        }
    
    
    }
    public void actualizar(int iduser, String nameuser, String lastnameuser, String mailuser, String string, String useru, String passworduser) throws SQLException {
        sql="UPDATE `user` SET `nameuser`='"+nameuser+"',`lastnameuser`='"+lastnameuser+"',`mailuser`='"+mailuser+", `numuser`='"+string+"', `useru`='"+useru+"', `passworduser`='"+passworduser+"',' WHERE iduser="+iduser;
        try {
            con=Conexion.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            ps.close();
            System.out.print("Se actualizo el usuario exitosamente");

        } catch (Exception e) {
            System.out.println("Error al inactivar registro "+e.getMessage().toString());
        }finally{
            con.close();
        }
    }
}
