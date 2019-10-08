import wollok.game.*

object oso {
	var property position = new Position(x = 3, y = 7)
	
	method image() = "oso.jpg"
	method moverEnDireccion(dir){
		self.position(dir.siguientePosicion(self.position()))
		
		
	}
	
	
}