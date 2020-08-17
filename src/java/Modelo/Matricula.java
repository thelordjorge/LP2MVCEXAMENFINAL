/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


public class Matricula {
    private int idmatricula;
    private String idestudiante;
    private String semestre;
    private int ciclo;
    private String estado;
   private  String idcurso;
     private String idcarrera;

    public Matricula() {
    }

    public Matricula(int idmatricula, String idestudiante, String semestre, int ciclo, String estado, String idcurso, String idcarrera) {
        this.idmatricula = idmatricula;
        this.idestudiante = idestudiante;
        this.semestre = semestre;
        this.ciclo = ciclo;
        this.estado = estado;
        this.idcurso = idcurso;
        this.idcarrera = idcarrera;
    }

    public int getIdmatricula() {
        return idmatricula;
    }

    public void setIdmatricula(int idmatricula) {
        this.idmatricula = idmatricula;
    }

    public String getIdestudiante() {
        return idestudiante;
    }

    public void setIdestudiante(String idestudiante) {
        this.idestudiante = idestudiante;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getIdcurso() {
        return idcurso;
    }

    public void setIdcurso(String idcurso) {
        this.idcurso = idcurso;
    }

    public String getIdcarrera() {
        return idcarrera;
    }

    public void setIdcarrera(String idcarrera) {
        this.idcarrera = idcarrera;
    }
     
     
}



