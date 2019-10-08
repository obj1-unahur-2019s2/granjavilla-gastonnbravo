import wollok.game.*
object este {
	method siguientePosicion(pos){
		if(pos.x() == game.width()-1){
			return pos
		}else{
			return pos.right(1)
		}
	}
	
}
object oeste{
	method siguientePosicion(pos){
		if(pos.x() == 0){
			return pos
		}else{
			return pos.left(1)
		}
	}
	
	
}

object norte{
	method siguientePosicion(pos){
		if(pos.y() == 0){
			return pos
		}else{
			return pos.up(1)
		}
	}
	
}
object sur{
	method siguientePosicion(pos){
		if(pos.y() == 0){
			return pos
		}else{
			return pos.down(1)
		}
	}
	
	
	
}


