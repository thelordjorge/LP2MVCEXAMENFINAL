package Interfaces;

import Modelo.Estudiante;
import java.util.List;

public interface CRUDEstudiante {
    public List listarestudiante(); // listar
    public Estudiante buscarestudiante(int idestudiante); // buscar
    public boolean agregarestudiante(Estudiante estudiante); // agregar
    public boolean editarestudiante(Estudiante estudiante); // editar
    public boolean eliminarestudiante(int idestudiante); // eliminar
}

