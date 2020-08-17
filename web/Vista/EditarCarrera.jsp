<%-- 
    Document   : EditarCarrera
    Created on : 14/08/2020, 11:08:04 PM
    Author     : Ori
--%>

<%@page import="Modelo.Carrera"%>
<%@page import="ModeloDAO.CarreraDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Carrera</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                CarreraDAO carreraDAO = new CarreraDAO();
                int s_idcarrera = Integer.valueOf(request.getParameter("f_idcarrera"));
                Carrera carrera = (Carrera)carreraDAO.buscarcarrera(s_idcarrera);
            %>
            <form name="EditarCrreraForm" action="ControladorCarrera" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Carrera</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="<% out.println(carrera.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        
                      
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(carrera.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-success" type="submit" value="Editar Carrera" name="editar" />
                                <input type="hidden" value="editarcarrera02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(carrera.getIdcarrera()); %>" name="f_idcarrera">
                                <a class="btn btn-success"href="index.html"><FONT COLOR="white">REGRESAR</a>
                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
