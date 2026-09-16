object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumblebee {

    const estaEnAuto = true
    method peso() = 800

    method peligrosidad() {//es calculable, depende de la transformacion
       return 
        if (estaEnAuto) {
             15
        } else   
            30  
    }
}

object paqueteDeLadrillos {
    var cantLadrillos = 0

    method cambiarCantLadrillos(num) {
        cantLadrillos = num
    }

    method peso() = cantLadrillos * 2
    method cantidadLadrillos() = cantLadrillos
    method peligrosidad() = 2
}

object arenaAGranel {
    var pesoArena = 0
    method peso() = pesoArena
    method cambiarPeso(num) {
        pesoArena = num
    }
    method peligrosidad() = 1
}

object bateriaAntiaerea{
    var peso = 0
    var tieneMisiles = true
    method peso(){
        if (tieneMisiles){
            peso = 300
        } else{
            peso = 200
        }
        return peso
    }
    var peligrosidad  = 0

    method peligrosidad(){
        if (tieneMisiles){
            peligrosidad = 100
        } else {
            peligrosidad = 0
        }
        return peligrosidad
    }
    method armar(){
        tieneMisiles = true
    }

    method desarmar(){
        tieneMisiles = false
    }
}

object contenedorPortuario {
    const objetoContenido = []
    method objetoContenido() =objetoContenido

    method peso(){
        return 100 + objetoContenido.sum({o=>o.peso()})
    }
    method agregarObjeto(obj){
        objetoContenido.add(obj)
    }
    method quitarObjeto(obj){
        objetoContenido.remove(obj)
    }
    
    method peligrosidad(){
        if (objetoContenido == []){//(objetoContenido.isEmpty())
            return 0
        }
        else{
            return objetoContenido.max({p => p.peligrosidad()}).peligrosidad()
        }
    }
}



object residuosRadiactivos{
    method peligrosidad() = 200
    var peso = 200
    method peso() = peso
    method cambiarPeso(nuevoPeso){
        peso = nuevoPeso
    }

}

object embalajeDeSeguridad{
    method peso() {
        return objetoEmbalable.peso()
    } 
    var objetoEmbalable = residuosRadiactivos
    method cambiarObjEmbalado (nuevoObj){
        objetoEmbalable = nuevoObj
    }
    method peligrosidad(){
        return objetoEmbalable.peligrosidad() / 2
    }
    
}