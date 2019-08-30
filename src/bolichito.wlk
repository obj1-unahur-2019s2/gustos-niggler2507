import objetos.*
import personas.* 

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		//const elDeMostradorBrilla = true
		//const elDeVidrieraBrilla = true
		//return elDeMostradorBrilla and elDeVidrieraBrilla
		return objetoEnMostrador.material().brilla() and
			objetoEnVidriera.material().brilla()
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
		return objetoEnMostrador.material(color) or objetoEnVidriera.material(color)
	}


	method puedeMejorar() {
		return self.esMonocromatico() or self.estaDesequilibrado()
	}

	method puedeOfrecerleAlgoA(persona) {
		return persona.leGusta(objetoEnMostrador) or persona.leGusta(objetoEnVidriera)		
	}

}
