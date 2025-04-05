import personas.*
import objetos.*

object bolichito {
  var objetoEnVidriera = pelota
  var objetoEnMostrador = remera

  method objetoEnMostrador(objetoAPoner) {
    objetoEnMostrador = objetoAPoner
  }
  method objetoEnMostrador() {
     return objetoEnMostrador
  }

 method objetoEnVidriera(objetoAPoner) {
    objetoEnVidriera = objetoAPoner
  }

  method objetoEnVidriera() {
   return objetoEnVidriera
  }

  method esBrillante() {
    return objetoEnMostrador.material().brilla() && objetoEnVidriera.material().brilla()
  }

  method esMonocromatico() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }

  method estaEquilibrado() {
    return objetoEnMostrador.peso()  > objetoEnVidriera.peso()
  }
  
  method tieneAlgoDeColor(unColor){
    return objetoEnVidriera.color() == unColor || objetoEnMostrador.color() == unColor
  }

 method puedeMejorar(){
    return !self.estaEquilibrado() || self.esMonocromatico()
 }

 method puedoOfrecerAlgo(persona){
   return persona.leGusta(objetoEnMostrador) || persona.leGusta(objetoEnVidriera)
 }
 method intercambiarObjetos(){
    const aux = objetoEnMostrador
    objetoEnMostrador = objetoEnVidriera
   //self.objetoEnMostrador(objetoEnVidriera)
    objetoEnVidriera = aux 
    //self.objetoEnVidriera(aux)
 }
 method intercambiarPlus(){
    self.intercambiar(objetoEnVidriera, objetoEnMostrador)
 }

 method intercambiar(objeto, otroObjeto){
    objetoEnVidriera = objeto
    objetoEnMostrador = otroObjeto
 }
}