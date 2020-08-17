<%-- 
    Document   : AgregarCurso
    Created on : 15/08/2020, 12:45:18 AM
    Author     : Ori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Curso</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form name="AgregarCursoForm" action="ControladorCurso" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Agregar Curso</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Horas</td>
                            <td><input class="form-control" type="text" name="f_horas" value="" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Creditos</td>
                            <td><input class="form-control" type="text" name="f_creditos" value="" maxlength="8" size="8" /></td>
                        </tr>
                        
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-success" type="submit" value="Agregar Curso" name="agregar" />
                                <input type="hidden" value="agregarcurso02" name="f_accion"/>
                                <a class="btn btn-success"href="index.html"><FONT COLOR="white">REGRESAR</a>    
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
                
            </form>
        </div>
    </body>
</html>
