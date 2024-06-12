package ejbs;
import java.util.Date;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;

@Stateless
@LocalBean
public class Libro implements LibroRemote {
	
	public int id, Edad, Paginas;
	public String Titulo, Autor, Seccion, Genero;
	public Date Prestamo, Entrega;
	
		
	public void setLibro(int id, String Titulo, String Autor, int Paginas, String Seccion, String Genero, int Edad,
				String Prestamo, String Entrega) {
		
		this.id = id;
		this.Titulo = Titulo;
		this.Autor = Autor;
		this.Paginas = Paginas;
		this.Seccion = Seccion;
		this.Genero = Genero;
		this.Edad = Edad;
		this.Prestamo =new Date(Prestamo);
		this.Entrega =new Date(Entrega);
		
		
		}

	
    
}
