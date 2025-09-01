//categorias 
object cadete { 
  method neto() = 20000  

}
object gerente {
  method neto() = 150000 
}

//Empleados
object pepe {

  var property categoria = cadete
  var faltas = 0 
  var property tipoDeBonoResultado = bonoPorPorcentaje
  var property bonoNulo = bonoPorNulo 



//  method sueldo() = neto() + bonoResultados.calcularPara(self) + bonoPresentismo.calcularPara(self)
  method sueldo() = cadete.neto() + self.bonoResultado()

  method faltar() { faltas += 1 }
  method bonoResultado() = tipoDeBonoResultado.bono(self)
  
}
//obejetos bonos

object bonoPorPorcentaje{
  method bono(empleado) = empleado.neto() * 0.1  
}
object bonoPorMontoFijo{
 method bonoFijo(empleado) = 800  
}
object bonoPorNulo{
 method nulo(empleado) = 0 
}

//objetos bonos presentismos

object  bonoPorPresentismoNormal{


}




















/* ********hecho en clases**** 
object pepe {
 
 //referencia que apunta a un objeto

 //guarda la categoria y se acuerda. colaboradores interna y con pepita era externa.
 
  var property  categoria = cadete
  var property tipobonoResultados =  bonoPorPorcentaje

  //method sueldo() = categoria.neto() 

  //revisar esto paara mañana sobre el self que es y para que sirve
  
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

*/



