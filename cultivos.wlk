import hector.*
import wollok.game.*
class Cultivo {
	method image()
	method sembrar()
	method cosechar()
	method regar()
	}

class Maiz inherits Cultivo {
	var estado = "bebé"
	override method image() {
		// TODO: hacer que devuelva la imagen que corresponde
	 return if (estado == "bebé") "corn_baby.png" else  "corn_adult.png"
	}

	override method regar() {
		if (estado == "bebé") {
			estado = "adulto"
		}
		else {
			game.say(Maiz, "Ya no puedo crecer más")
		}
	}
}	