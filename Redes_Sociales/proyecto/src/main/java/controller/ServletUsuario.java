package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UsuarioVo;
import model.UsuarioDao;


public class ServletUsuario extends HttpServlet {
      
      UsuarioVo usuarioVo = new UsuarioVo();
    UsuarioDao usuarioDao=new UsuarioDao();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String pagina=req.getParameter("accion");
      switch (pagina) {
          case "formUser":
                System.out.println(pagina);
                req.getRequestDispatcher("views/components/formUser.jsp").forward(req, resp);
          break;
          case "listUser":
                System.out.println("Entro a listar");
                mostrar(req,resp);
          break;
          case "VolverP":
                System.out.println(pagina);
                req.getRequestDispatcher("index.jsp").forward(req, resp);
          break;
          default:
          System.out.println("VOLVER");
              break;
      }
    }
      private void mostrar(HttpServletRequest req, HttpServletResponse resp) {
            UsuarioVo usuarioVo=new UsuarioVo();
            UsuarioDao usuarioDao=new UsuarioDao();
            try {
                  List<UsuarioVo> arrayUsuarios =usuarioDao.Listar();
                  req.setAttribute("usuarios", arrayUsuarios);
                  req.getRequestDispatcher("views/components/listUser.jsp").forward(req, resp);
                  System.out.println("Datos listados correctamente");
                  
              } catch (Exception e) {
                  System.out.println("Hay problemas al listar los datos"+e.getMessage().toString());
              }
      }


protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("Entro al Dopost");
      String accion=req.getParameter("accionForm");
      switch (accion) {
          case "agregar":
            agregar(req,resp);  
          break;
          case "eliminar":
            eliminar(req, resp);
          break;
          case "Actualizar":
            actualizar(req, resp);
          break;
          default:
              break;
      }
    }

     
      private void actualizar(HttpServletRequest req, HttpServletResponse resp) {
            if (req.getParameter("iduser")!=null) {
                  usuarioVo.setIduser(Integer.parseInt(req.getParameter("iduser")));
            }
            if (req.getParameter("nameuser")!=null) {
                  usuarioVo.setNameuser(req.getParameter("nameuser"));
            }
            if (req.getParameter("lastnameuser")!=null) {
                  usuarioVo.setLastnameuser(req.getParameter("lastnameuser"));
            } 
            if (req.getParameter("mailuser")!=null) {
                  usuarioVo.setMailuser(req.getParameter("mailuser"));
            } 
            if (req.getParameter("numuser")!=null) {
                  usuarioVo.setNumuser(req.getParameter("numuser"));
            } 
            if (req.getParameter("useru")!=null) {
                  usuarioVo.setUseru(req.getParameter("useru"));
            } 
            if (req.getParameter("passworduser")!=null) {
                  usuarioVo.setPassworduser(req.getParameter("passworduser"));
            } 
            try {
                  usuarioDao.actualizar(usuarioVo.getIduser() , usuarioVo.getNameuser() , usuarioVo.getLastnameuser() , usuarioVo.getMailuser() , usuarioVo.getNumuser() , usuarioVo.getUseru() , usuarioVo.getPassworduser());
                  req.setAttribute("proceso",true);
                  resp.sendRedirect("usuario?accion=listUser");
                  System.out.println("Información actualiada exitosamente");
            } catch (Exception e) {
                  req.setAttribute("msg","No se puede actualizar el registro "+e.getMessage());
                 System.out.println("No se puede actualizar el registro"+e.getMessage());
            }
      }
      
      private void agregar(HttpServletRequest req, HttpServletResponse resp) {
            if (req.getParameter("nameuser")!=null ) {
                  usuarioVo.setNameuser((req.getParameter("nameuser"))); ;
            }
            if (req.getParameter("lastnameuser")!=null ) {
                  usuarioVo.setLastnameuser((req.getParameter("lastnameuser"))); ;
            }
            if (req.getParameter("mailuser")!=null ) {
                  usuarioVo.setMailuser((req.getParameter("mailuser"))); ;
            }
            if (req.getParameter("numuser")!=null ) {
                  usuarioVo.setNumuser((req.getParameter("numuser"))); ;
            }
            if (req.getParameter("useru")!=null ) {
                  usuarioVo.setUseru((req.getParameter("useru"))); ;
            }
            
              try {
                  usuarioDao.Registrar(usuarioVo);
                  System.out.println("El registro fue exitoso");
                  resp.sendRedirect("usuario?accion=formUser");
              } catch (Exception e) {
                  System.out.println("Error en la inserción del registro");
              }
      }
      private void eliminar(HttpServletRequest req, HttpServletResponse resp) {
            
            if (req.getParameter("idusereliminar")!= null ) {
                  usuarioVo.setIduser(Integer.parseInt(req.getParameter("idusereliminar")));
            }
            try {
                  usuarioDao.Eliminar(usuarioVo.getIduser());
                  req.setAttribute("proceso",true);
                  resp.sendRedirect("usuario?accion=listUser");
                  System.out.println("Usuario eliminado");
            } catch (Exception e) {
                  req.setAttribute("msg","No se puede eliminar el registro "+e.getMessage());
                 System.out.println("No se puede eliminar el registro"+e.getMessage());
            }
      }
}
