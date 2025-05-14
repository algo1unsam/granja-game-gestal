import hector.*
import wollok.game.*
class Cultivo {
	method image()

	method cosechar(){
		game.removeVisual(self)
	}
	method regar()
	}
class Maiz inherits Cultivo {
	var estado = "bebé"
	var property position 
	
	override method image() = if (estado == "bebé") "corn_baby.png" else "corn_adult.png"
	

	override method regar() {
		if (estado == "bebé") {
			estado = "adulto"
		}
		else {
			game.say(Maiz, "Ya no puedo crecer más")
		}
	}

}
class Trigo inherits Cultivo{
	var property etapa = 0
	var property oro = 0
	var property position = hector.position()
	override method image() {
	  return "wheat_" + etapa + ".png"
	}
	override method regar(){
		if (etapa<4){
			etapa += 1
		}else{
			etapa = 0
		}
	}
	override method cosechar() {
		oro = (etapa-1) * 100
		super()
	}
	
} 



class Tomaco inherits Cultivo{
	var estado = "bebé"
	var property position 

	override method image() = if (estado == "bebé") "tomaco_baby.png" else  "tomaco.png"
	

	override method regar() {
		if (estado == "bebé") {
			estado = "adulto"
		}
		else {
			game.say(Tomaco, "Ya no puedo crecer más")
		}
	}

}

//object aspersor{
//	const property position = game.center()
//	const property cultivos = game.getObjectsIn(self.position() + 2)

//	method regar(){
//		game.onTick(5000, "regar", {cultivos.forEach{cultivo => cultivo.regar()}})
//	}
//}

