class Universidad {
	var property provincia
	var property honorariosRecomendados
	var donaciones = 0
	
	method recibirDonacion(unValor){donaciones += unValor}
}

object asociacionProfesionalesDelLitoral{
	var donaciones = 0
	
	method recibirDonacion(unValor){donaciones += unValor}
}