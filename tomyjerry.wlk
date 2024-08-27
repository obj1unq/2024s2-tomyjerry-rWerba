object tom {
	
	var energia = 50 

	method comer(raton) {
		energia = energia + 12 + raton.peso()
	}
	
	method correr(distancia){
		energia = energia - distancia / 2
	}
	
	method velocidadMaxima()  {
		return 5 + energia / 10
	}
	
	method puedeComer(distancia) {
		return energia > self.gastoEnergia(distancia)
	}

	method gastoEnergia(distancia) {
		return distancia / 2
	}

	method energiaAlComer(raton) {
		return raton.peso() + 12
	}
	
	method quiereComer(raton, distancia) {
	  return self.puedeComer(distancia) and self.gastoEnergia(distancia) < self.energiaAlComer(raton)
	}
}

object jerry {
	
	var edad = 2

	method peso() {
		return edad * 20	  
	}

	method cumplir() {
		edad = edad +1
	}

}

object nibbles {

	method peso() {
		return 35
	}
}


