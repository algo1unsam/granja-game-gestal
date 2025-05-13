import hector.*
import wollok.game.*
class Cultivo {
	method image()
	method sembrar()
	method cosechar(){
		game.removeVisual(self)
	}
	method regar()
	}

class Maiz inherits Cultivo {
	override method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		// return 
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

object aspersor{
	const property position = game.center()
	const property cultivos = game.getObjectsIn(self.position() + 2)

	method regar(){
		game.onTick(5000, "regar", {cultivos.forEach{cultivo => cultivo.regar()}})
	}
}