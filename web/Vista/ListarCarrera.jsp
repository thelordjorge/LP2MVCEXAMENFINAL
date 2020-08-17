<%-- 
    Document   : ListarCarrera
    Created on : 14/08/2020, 11:07:12 PM
    Author     : Ori
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Carrera"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CarreraDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Carrera</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Listado de Carrera</h1>
            <a class="btn btn-success" href="ControladorCarrera?f_accion=agregarcarrera01">Agregar Nueva Carrera</a>
           
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Estado</th>
                        
                    </tr>
                </thead>
                <tbody>

                    <%
                        CarreraDAO carreraDAO = new CarreraDAO();
                        List<Carrera> carreras = carreraDAO.listarcarrera();
                        Iterator<Carrera> iterator = carreras.iterator();
                       Carrera carrera = null;
                        while (iterator.hasNext()) {
                            carrera = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(carrera.getIdcarrera()); %></td>
                        <td><% out.print(carrera.getNombre()); %></td>
                        <td><% out.print(carrera.getEstado()); %></td>
                        <td>
                            <a class="btn btn-warning" href="ControladorCarrera?f_accion=editarcarrera01&f_idcarrera=<% out.print(carrera.getIdcarrera()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="ControladorCarrera?f_accion=eliminarcarrera&f_idcarrera=<% out.print(carrera.getIdcarrera()); %>">
                                Eliminar
                            </a>
                        </td>
                    </tr>
                    <%    }
                    %>                    
                </tbody>
            </table>
                <table border="0" cellspacing="0" cellpagging="0" align="center">

                
                    <tr>
                        <td> </td>
                        <td colspan="2"><a class="btn btn-success"href="index.html"><FONT COLOR="white">REGRESAR</a></td>
                    </tr>
                    
            </table>
                
        </div>
    </body>
</html>

