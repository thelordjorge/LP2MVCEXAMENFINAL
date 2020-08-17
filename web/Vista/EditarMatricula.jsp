<%-- 
    Document   : EditarMatricula
    Created on : 16/08/2020, 10:50:36 AM
    Author     : Ori
--%>

<%@page import="Modelo.Matricula"%>
<%@page import="ModeloDAO.MatriculaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Matricula</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                MatriculaDAO matriculaDAO = new MatriculaDAO();
                int s_idmatricula = Integer.valueOf(request.getParameter("f_idmatricula"));
                Matricula matricula = (Matricula)matriculaDAO.buscarmatricula(s_idmatricula);
            %>
            <form name="EditarMatriculaForm" action="ControladorMatricula" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Matricula</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Estudiante</td>
                            <td><input class="form-control" type="text" name="f_idestudiante" value="<% out.println(matricula.getIdestudiante()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Semestre</td>
                            <td><input class="form-control" type="text" name="f_semestre" value="<% out.println(matricula.getSemestre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Ciclo</td>
                            <td><input class="form-control" type="text" name="f_ciclo" value="<% out.println(matricula.getCiclo()); %>" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Curso</td>
                            <td><input class="form-control" type="text" name="f_idcurso" value="<% out.println(matricula.getIdcurso()); %>" maxlength="8" size="8" /></td>
                        </tr>
                         <tr>
                            <td class="text-right">Carrera</td>
                            <td><input class="form-control" type="text" name="f_idcarrera" value="<% out.println(matricula.getIdcarrera()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(matricula.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-success" type="submit" value="Editar Matricula" name="editar" />
                                <input type="hidden" value="editarmatricula02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(matricula.getIdmatricula()); %>" name="f_idmatricula">
                                <a class="btn btn-success"href="index.html"><FONT COLOR="white">REGRESAR</a>
                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
