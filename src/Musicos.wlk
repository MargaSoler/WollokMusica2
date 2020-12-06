import Lugar.*
import Cancion.* 

class Musico {
	var property grupo 
	
	method habilidad (){
		return -1 
	}
	method cantarBien (cancion) {
		return false 
	}
	method costoPresentacion (unlugar) {
		return -1 
	}
}

object joaquin inherits Musico {
	
	override method habilidad (){
		if (grupo == null) {return 20}  
		else {return 25} 
			
	}

	override method cantarBien (cancion) {
		return cancion.largo() > 300 
	}
	
	override method costoPresentacion (unlugar) {
		if (grupo == null) {return 100} 
		else {return 50}
	}
}

object lucia inherits Musico {
	
	override method habilidad () {
		if (grupo == null) { return 70} 
		else {return 50}
	}
	
	override method cantarBien (unacancion) {
		return unacancion.letra().cotains('Familia') or unacancion.letra().cotains('familia') 
	}
	
	override method costoPresentacion (unlugar) {
		if (unlugar.concurrido()) {return 500} 
		else {return 400}
	}
}
