//trabajo con polimosrfismo


//categorias 
object cadete { 
  method neto() = 20000  

}
object gerente {
  method neto() = 15000 
}

//Empleados
object pepe {

  var property  faltas = 0 
  var  categoria = cadete// si le saco el property me genera un warrion porque?
  var  tipoDeBonoResultado = bonoPorMontoFijo
  var  tipoBonoPresentismo = bonoPorPresentismoNormal

//  var bonoNulo = bonoPorNulo 

method categoria() = categoria 

method categoria(_categoria){categoria = _categoria}

method tipoDeBonoResultado() = tipoDeBonoResultado

method tipoDeBonoResultado (_tipoDeBonoResultado){tipoDeBonoResultado = _tipoDeBonoResultado}

method tipoBonoPresentismo() = tipoBonoPresentismo 

method tipoBonoPresentismo(_tipoBonoPresentismo) {tipoBonoPresentismo = _tipoBonoPresentismo}

//agregarFaltas
  method faltas(_faltas){
  faltas +=_faltas
  } 

//  method sueldo() = neto() + bonoResultados.calcularPara(self) + bonoPresentismo.calcularPara(self)
   method sueldo() = categoria.neto() + tipoDeBonoResultado.bono(self) + tipoBonoPresentismo.calcularPara(self)
  
  
   
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



  method bonoResultado() = tipoDeBonoResultado.bono(self)
  */
}


//obejetos bonos

object bonoPorPorcentaje{
  method bono(empleado) = empleado.neto() * (10/100)
}
object bonoPorMontoFijo{
 method bono(empleado) = 800  
}
object bonoPorNulo{
 method bono(empleado) = 0 
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

object calcularPara{
  method calcularPara(empleado) {
      if(empleado.faltas()== 0){return 100}
      else{return 0}  
    }

}// fin object 

object bonoPorPresentismoDemagogico{

  method calcularPara(empleado) {
    
     if(empleado.neto() < 18000 ){ return 500}

     else {return 300}
    
  }

}//fin object

object bonoPresentismoNulo{

method calcularPara(empleado) = 0

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



// extencion del ejercicio

//objeto sofia

object sofia {

  var categoria = cadete
  var faltas = 0
  
  var tipoDeBonoResultado = bonoPorNulo

//metodos setter/getter
  method categoria(_categoria){categoria = _categoria}

  method categoria() = categoria

  method faltas(_faltas){faltas += _faltas}

  method tipoDeBonoResultado() =  tipoDeBonoResultado

  method tipoDeBonoResultado(_tipoDeBonoResultado){tipoDeBonoResultado = _tipoDeBonoResultado }

  //method sueldo() 

  method sueldo() = (categoria.neto() * 1.3) + tipoDeBonoResultado.bono(self)

  method neto() = categoria.neto()
    

}//fin objeto sofia

//nueva categoria

object vendedor{

    var muchasVentas = false

    method ActivarPorMuchasVentas(){muchasVentas = true} 
    method DesactiPorMuchasVentas(){muchasVentas = false}


    method neto(){
    if(muchasVentas) return 16000*1.25
    else return 16000
  }    
  
  

}//objeto vendedor
