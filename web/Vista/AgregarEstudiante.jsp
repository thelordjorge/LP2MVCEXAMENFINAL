<%-- 
    Document   : AgregarEstudiante
    Created on : 10/08/2020, 11:20:46 PM
    Author     : Ori
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Estudiante</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form name="AgregarEstudianteForm" action="Controlador" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Agregar Estudiante</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Apellido</td>
                            <td><input class="form-control" type="text" name="f_apellidos" value="" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">DNI</td>
                            <td><input class="form-control" type="text" name="f_dni" value="" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Codigo</td>
                            <td><input class="form-control" type="text" name="f_codigo" value="" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Direccion</td>
                            <td><input class="form-control" type="text" name="f_direccion" value="" maxlength="50" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-success" type="submit" value="Agregar Estudiante" name="agregar" />
                                  <input type="hidden" value="agregarestudiante02" name="f_accion"/> 
                                  <a class="btn btn-success"href="index.html"><FONT COLOR="white">REGRESAR</a>
                            </td>
                           
                        </tr>
                        
                    </tbody>
                </table>
                
            </form>
        </div>
    </body>
</html>
