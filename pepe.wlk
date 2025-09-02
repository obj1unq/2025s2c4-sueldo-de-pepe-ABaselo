//trabajo con polimosrfismo


//categorias 
object cadete { 
  method neto() = 20000  

}
object gerente {
  method neto() = 150000 
}

//Empleados
object pepe {
  var faltas = 0 
  var property  categoria = cadete// si le saco el property me genera un warrion porque?
  var property  tipoDeBonoResultado = bonoPorPorcentaje
  var property tipoBonoPresentismo = bonoPorPresentismoNormal

//  var bonoNulo = bonoPorNulo 

//  method sueldo() = neto() + bonoResultados.calcularPara(self) + bonoPresentismo.calcularPara(self)
  method sueldo() = cadete.neto() + self.bonoResultado()
  
  //agregarFaltas
  method faltas(_faltas){
  faltas +=_faltas
  } 
   
  method neto() {
    return  categoria.neto()
 }

/*
method neto(){
const neto = categoria.neto()
return neto
}
Nota:
Como limpia la referencia y como trabaja en el momento, todo ocurre en el methodo. 
se crea en el momento y se elimina cuando termina su ejecucion.

*/

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

  method calcularPara(empleado) {
    if (empleado.faltas() == 0) {
      return 2000
    }
    else  if (empleado.faltas() == 1) {
      return 1000
    }
    else {
      return 0  
    }
 } //fin method 

}//fin objeto bono por presentismo normal

object bonoPorPresentismoAjuste{
  method calcularAjustePresentismo(empleado) {
      if(empleado.faltas()== 0){return 100}
      else{return 0}  
    }

}// fin object 

object bonoPorPresentismoDemagogico{

  method calcularPresentismoDemagogico(empleado) {
    
     if(empleado.neto() < 18000 ){ return 500}

     else {return 300}
    
  }

}//fin object

object bonoPresentismoNulo{

method calcularPresentismoNulo() = 0
  
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



