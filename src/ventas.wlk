import wollok.game.*
import cultivos.*


object ventas {
	var property oro 
	
	var cosechadas = []
	
	method venderPlantas(){
		cosechadas.filter({})
	}
	method totalDeOro(){
		cosechadas.sum({planta => planta.monedas()})
	}
	
	
	
}
