object pepe {
 
 //referencia que apunta a un objeto

 //guarda la categoria y se acuerda. colaboradores interna y con pepita era externa.
 
  var property  categoria = cadete
  var property tipobonoResultados =  bonoPorPorcentaje

  //method sueldo() = categoria.neto() 
	method sueldo() = self.neto() * self.bonoResultados() 

    method neto() = categoria.neto()
    //calculo un resultado para mi
    method bonoResultados() = tipobonoResultados.bono(self)
}


object gerente {
    method neto() = 15000
    
}


object cadete {
  method name() = 20000 
}

object bonoPorPorcentaje {
  method bono(empleado) = empleado.neto() * (10/100)
  
}


