import wollok.game.*
import cultivos.*

object hector {
	
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property plantasCosechadas = []
	
	method plantarMaiz(){
		game.addVisual(new Maiz(position = self.position()))
	}
	method regarPlanta(){
		//colliders que esta en el mismo lugar te devuelve lista[] con una planta si no hay nada una lista vaica
		game.colliders(self).forEach({planta => planta.regate()})
	}
	
	method cosecharPlanta(){
		game.colliders(self).forEach({planta => 
			game.removeVisual(planta)
			plantasCosechadas.add(planta)
		})
		
	}
	method cantidadDePlantasCosechadas(){return plantasCosechadas.size()}
	method plantarTrigo(){
		game.addVisual(new Trigo(position = self.position()))
	}
	
	
}