//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{

    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
    
        self = .Apagado
    
    }

}


class Auto{

    var velocidad : Velocidades
    
    init(velocidadInicial:Velocidades){
        
        self.velocidad = velocidadInicial
        
    }
    
    
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
       
        switch  velocidad{
        
        case Velocidades.Apagado:
            
            return (20,"Velocidad Baja")
            
        case Velocidades.VelocidadBaja:
            
            return (50,"Velocidad Media")
            
        case Velocidades.VelocidadMedia:
            
            return (120,"Velocidad Alta")
            
        case Velocidades.VelocidadAlta:
            
            return (50,"Velocidad Media")
        
        
        }
        
        
}
    
    
    
    func cambio(valor : Auto) {
        
        
        switch  velocidad{
            
        case Velocidades.Apagado:
            
            valor.velocidad = Velocidades.VelocidadBaja
            
            
        case Velocidades.VelocidadBaja:
            
            valor.velocidad = Velocidades.VelocidadMedia
            
        case Velocidades.VelocidadMedia:
            
            valor.velocidad = Velocidades.VelocidadAlta
            
        case Velocidades.VelocidadAlta:
            
            valor.velocidad = Velocidades.VelocidadMedia
            
        }
        
        
        
    }



}
var pruebaFinal = Auto(velocidadInicial: Velocidades.VelocidadAlta)




/*pruebaFinal.velocidad = Velocidades.VelocidadBaja

pruebaFinal.velocidad = Velocidades.VelocidadAlta

pruebaFinal.velocidad*/



for index in 1...20 {
    
    pruebaFinal.cambio(pruebaFinal)
    print(pruebaFinal.cambioDeVelocidad())
    
    
}


