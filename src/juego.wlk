import wollok.game.*
import hector.*
import oso.*
import cultivos.*
import direccion.*

object juegoGranja {
	var personajeActual = hector
	
	method configurarTeclado(){
		//ACCIONES
 	keyboard.s().onPressDo({game.say(hector, "hola gente")})
	keyboard.o().onPressDo({hector.position(new Position(x = 0, y = 0))})
	keyboard.m().onPressDo({ hector.plantarMaiz() })
	keyboard.t().onPressDo({ hector.plantarTrigo() })
	keyboard.r().onPressDo({ hector.regarPlanta() })
	keyboard.c().onPressDo({ hector.cosecharPlanta() })
	keyboard.p().onPressDo({ 
		game.say(hector, 
		"tengo cosechadas " + hector.cantidadDePlantasCosechadas() + " plantas"
		)
	})
//	keyboard.v().onPressDo({ventas.venderPlantas() })
//	keyboard.space().onPressDo({hector.cantidadDePlantasCosechadas()+"plantas"+totalDeOro()+"oro :"})
	
	
	self.configurarMovimientos()	
		
	}
	method configurarMovimientos(){
		//flecha arriba
		keyboard.up().onPressDo({
			if(personajeActual.position().y() < game.height()-1){
				personajeActual.position(personajeActual.position().up(1))
			}
		})
		//flecha abajo
		keyboard.down().onPressDo({
			if(personajeActual.position().y() > 0 ){
				personajeActual.position(personajeActual.position().down(1))
			}
		})
		//flecha derecha
		keyboard.right().onPressDo({
			if(personajeActual.position().x() < game.width()-1){
				personajeActual.position(personajeActual.position().right(1))
			}
		})
		//flecha izq
		keyboard.left().onPressDo({
			if(personajeActual.position().x() > 0){
				personajeActual.position(personajeActual.position().left(1))
			}
		})
		
		
	}
	method configurarPersonaje(){
		game.addVisualCharacter(hector)
 //		game.addVisualIn(new Maiz(), game.at(1, 1))
 		game.addVisualCharacter(oso)
		
	}
	method configurarColisiones(){
	//game.whenCollideDo(oso,{})
 //	game.whenCollideDo(oso, { objeto => objeto.teChocoElOso() })
 	
		
	}
//	method configurarAcciones(){
//		//onTick numero,"nombre",{cosa.metodo(direcc)}
//		game.onTick(1000, "movimientoOso",{oso.moverEnDireccion(sur)})
//	}
	method configurarAcciones(){
		
		game.onTick(1000,"movientoOso",{
			var dado = (1..1).map({n => 0.randomUpTo(4).truncate(0)})
			
			
			if (dado == 0 and oso.position().y() < game.height() -1 ){
				oso.position(oso.position().up(1))
			}else if (dado == 1 and oso.position().y()>0){
				oso.position(oso.position().down(1))	
			}else if (dado== 2  and oso.position().x()>0){
				oso.position(oso.position().left(1))
			}else if (dado == 3 and oso.position().x()< game.width() -1 ){
				oso.position(oso.position().right(1))
			}
			
		})
	}
	
	
	
	
}


//en wollok el random es randomUpTo y para sacar los detras de la coma truncate()0
//en otro lenguajes /round/floor

