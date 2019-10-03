class Maiz {
	var property position
	var property esAdulta = false
	
	
//el methodo imagen si tiene que retormar otra imagen
	method image() {
		if(esAdulta){
			return "corn_adult.png"
		}else{
			
		return "corn_baby.png"
		}
	}
	method regate(){
		
		if(not esAdulta){
			esAdulta = true
		}
	}
}

class Trigo{
	var property position
//	
	
	method regate(){	}
	
	
	method image() {
		if(){
			return "corn_adult.png"
		}else{
			
		return "corn_baby.png"
		}
	}
}
	
	//tiene que tener posiition,image,regate
	
	





