<%-- 
    Document   : EditarCurso
    Created on : 15/08/2020, 12:45:42 AM
    Author     : Ori
--%>

<%@page import="Modelo.Curso"%>
<%@page import="ModeloDAO.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Curso</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                CursoDAO cursoDAO = new CursoDAO();
                int s_idcurso = Integer.valueOf(request.getParameter("f_idcurso"));
                Curso curso = (Curso)cursoDAO.buscarcurso(s_idcurso);
            %>
            <form name="EditarCursoForm" action="ControladorCurso" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Curso</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="<% out.println(curso.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">horas</td>
                            <td><input class="form-control" type="text" name="f_horas" value="<% out.println(curso.getHoras()); %>" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">creditos</td>
                            <td><input class="form-control" type="text" name="f_creditos" value="<% out.println(curso.getCreditos()); %>" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(curso.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-success" type="submit" value="Editar Curso" name="editar" />
                                <input type="hidden" value="editarcurso02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(curso.getIdcurso()); %>" name="f_idcurso">
                                <a class="btn btn-success"href="index.html"><FONT COLOR="white">REGRESAR</a>
                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
