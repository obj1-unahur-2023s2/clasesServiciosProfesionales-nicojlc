import profesionales.*

class Persona{
	var property provinciaDondeVive
	
	method puedeSerAtendido(unProfesional){
		return unProfesional.provinciasDondePuedeTrabajar().contains(provinciaDondeVive) // buscar en a¿las provincias que puede trabajar si contiene la provincia donde vive el solicitante
	}
}

class Institucion{
	const universidadesQueReconoce = #{}
	
	method agregarUniversidad(unaUniversidad){universidadesQueReconoce.add(unaUniversidad)}
	method puedeSerAtendido(unProfesional){
		return universidadesQueReconoce.contains(unProfesional.universidad()) // puede ser atendida si la universidad donde estudio el profesional esta en las que reconoce la institución
	}
}

class Club{
	const provincias = #{}
	
	method agregarProvincia(unaProvincia){provincias.add(unaProvincia)}
	method quitarProvincia(unaProvincia){provincias.remove(unaProvincia)}
	method puedeSerAtendidoPor(unProfesional){
		return not provincias.intersection(unProfesional.provinciasDondePuedeTrabajar()).isEmpty()
	}
}