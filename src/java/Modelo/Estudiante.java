package Modelo;

public class Estudiante {
    public int idestudiante;
    public String nombre;
    public String apellidos;
    public String dni;
    public String codigo;
    public String direccion;
    public String estado;

    public int getIdestudiante() {
        return idestudiante;
    }

    public void setIdestudiante(int idestudiante) {
        this.idestudiante = idestudiante;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
    
    public Estudiante() {
    }

    public Estudiante(int idestudiante, String nombre, String apellidos, String dni, String codigo, String estado) {
        this.idestudiante = idestudiante;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.dni = dni;
        this.codigo = codigo;
        this.estado = estado;
        
        
        
    }

    public Estudiante(int idestudiante, String nombre, String apellidos, String dni, String codigo, String direccion, String estado) {
        this.idestudiante = idestudiante;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.dni = dni;
        this.codigo = codigo;
        this.direccion = direccion;
        this.estado = estado;
    }
}



   