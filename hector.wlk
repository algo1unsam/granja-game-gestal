import wollok.game.*
import cultivos.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	const cultivos = []

	method sembrarMaiz(){
		self.sembrar(new Maiz(position = position))
	}
	method sembrarTrigo(){
		self.sembrar(new Trigo(position = position))
	}
	method sembrarTomaco(){
		self.sembrar(new Tomaco(position=position))
	}

	method sembrar(cultivo){
		game.addVisual(cultivo)
		cultivos.add(cultivo)
	}

	method regar(){
		const cultivosARegar = game.getObjectsIn(position)
	
		if (cultivosARegar.isEmpty())
			game.say(self,  "No hay nada que regar!")
			
		cultivosARegar.forEach{cultivo => cultivo.crece()}
	}
}
