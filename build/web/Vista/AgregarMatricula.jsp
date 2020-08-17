<%-- 
    Document   : AgregarMatricula
    Created on : 16/08/2020, 10:50:18 AM
    Author     : Ori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Matricula</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form name="AgregarMatriculaForm" action="ControladorMatricula" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Agregar Matricula</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tbody>
                            <tr>
                            <td class="text-right">Estudiante</td>
                            <td><input class="form-control" type="text" name="f_idestudiante" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Semestre</td>
                            <td><input class="form-control" type="text" name="f_semestre" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Ciclo</td>
                            <td><input class="form-control" type="text" name="f_ciclo" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Curso</td>
                            <td><input class="form-control" type="text" name="f_idcurso" value="" maxlength="30" size="20" /></td>
                        </tr>
                        
                         <tr>
                            <td class="text-right">Carrera</td>
                            <td><input class="form-control" type="text" name="f_idcarrera" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-success" type="submit" value="Agregar Matricula" name="agregar" />
                                <input type="hidden" value="agregarmatricula02" name="f_accion"/>
                                <a class="btn btn-success"href="index.html"><FONT COLOR="white">REGRESAR</a>
                                    
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
                
            </form>
        </div>
    </body>
</html>
