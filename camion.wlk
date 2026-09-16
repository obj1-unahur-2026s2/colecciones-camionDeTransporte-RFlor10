import cosas.*

object camion {
    method tara()= 1000
    method peso() = self.tara() + cargas.sum({c=> c.peso()})
    //method esPar{
    //    cosa.peso()
    //}

    
    const cargas = []
    method cargar(unObj){
        cargas.add(unObj)
    }
    method descargar(unObj){
        cargas.remove(unObj)
    }
    
}