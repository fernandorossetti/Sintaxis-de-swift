import UIKit
import XCPlayground
/*:
# Trabajo Final
Hemos implementado un Carro en el Playground, deseamos que lo muevas por la pista y hagas por lo menos una vuelta, este carro solo gira a la izquierda y va hacia el frente, piensa bien cómo vas a dar una vuelta a la pista.

Después de dar una vuelta con el carro, queremos que implementes, tu versión de este (haz uso de la herencia para poderlo animar). Tu versión debe contener los métodos que permitan encender el carro, apagar el carro, conocer si este está encendido o apagado. Teniendo esto ya implementado, da otra vuelta a la pista (¡Recuerda encender y apagar tu carro!)

Con la misma clase que creaste en el paso anterior. Implementa un contador de gasolina en el coche, así como un método que permita echar gasolina y saber cuanta gasolina tiene el vehículo, este debe ser en porcentaje siendo 0.0 tanque vacío. 0.5 medio tanque y 1.0 tanque lleno.

Luego queremos que hagas que tu carro de 5 vueltas, ¡ten en cuenta no repitas código!.

Para finalizar el proyecto, queremos que tu carro de tantas vueltas como la gasolina lo permite… Haz que este vehículo recorra la pista hasta que se quede sin gasolina, cuando esto pase, llénalo de nuevo y da otra vuelta. en este punto habrás terminado con el ejercicio final. ¡Felicidades!.

## Para tener en cuenta:

Actualmente tenemos 2 objetos creados que puedes usar:
### ```Car```:
Es tu carro rojo, el carro que debes poner a correr por toda la pista, este cuenta con un inicializador especial y requiere de ```Circuit```.
Ademas cuenta con dos métodos los cuales son:
 + ```moveLeft()```: Que gira el carro hacia la izquierda.
 + ```moveStraight()```: Mueve una casilla el carro hacia su frente, recuerda que nosotros definimos una casilla como una de las rayas blancas pintadas en la pista.

### ```Circuit```:
Esta es la pista como tal, ella ya se encuentra pre-declarada en tu codigo como un opcional, implementa su construcción que no requiere de parámetros especiales y pasala al inicializador de ```Car```.

## Como ejecutar:
El proyecto por defecto está configurado para no auto-ejecutar el código, en la parte inferior izquierda veras el boton de play para que lo pongas a correr, además ten en cuenta que deberás abrir en xcode la vista lateral  (Assistant Editor) donde se despliega la animación.

## Para entregar:
Para entregar la solución del problema implementa funciones con el código de cada uno de los puntos que pedimos hacer, de este modo solo llamas a la función del punto en que estas trabajando en el momento. Asi evitas esperar todas las animaciones anteriores para ver tu resultado.
*/

var circuit:Circuit?

// Tu codigo acá
public class Vehicle:Car{
    
    var powerOn = false
    
    func tank(){
        var fuel:Double = 1.0
        turnOn()
        while fuel <= 0.5{
            for index in 1...3{
                self.moveStraight()
                fuel -= 0.05
            }
            self.moveLeft()
            
            for index in 1...3{
                self.moveStraight()
                fuel -= 0.05
            }
            self.moveLeft()
            
            for index in 1...7{
                self.moveStraight()
                fuel -= 0.10
            }
            self.moveLeft()
            
            for index in 1...6{
                self.moveStraight()
                fuel -= 0.08
            }
            self.moveLeft()
            
            for index in 1...4{
                self.moveStraight()
                fuel -= 0.06
            }
            self.moveLeft()
            
            for index in 1...3{
                self.moveStraight()
                fuel -= 0.05
            }
            for index in 1...3{
                self.moveLeft()
                fuel -= 0.05
            }
            
            
        }
        print("the vehicle ran out of fuel")
        stop()
        
    }
    func turnOn() {
        if !powerOn {
            powerOn = true
        }
    }
    
    func putOut() {
        if powerOn {
            powerOn = false
        }
    }
    
    func walk() {
        if powerOn {
            self.turnOn()
        }
    }
    func stop() {
        if !powerOn {
            self.putOut()
            
        }
    }
    
    func oneRound(){
        
        for _ in 1...3{
            self.moveStraight()
        }
        self.moveLeft()
        for _ in 1...3{
            self.moveStraight()
        }
        self.moveLeft()
        for _ in 1...7{
            self.moveStraight()
        }
        self.moveLeft()
        for _ in 1...6{
            self.moveStraight()
        }
        self.moveLeft()
        for _ in 1...4{
            self.moveStraight()
        }
        self.moveLeft()
        for _ in 1...3{
            self.moveStraight()
        }
        for _ in 1...3{
            self.moveLeft()
        }
       
        }}
    
    circuit = Circuit()
    let car = Car(circuit: circuit!)
    let vehicle = Vehicle(circuit: circuit!)
    vehicle.oneRound()
    vehicle.oneRound()
    vehicle.oneRound()
    vehicle.oneRound()
    vehicle.oneRound()
    vehicle.tank()
    

    for index in 1...3{
    car.moveStraight()
    }
    car.moveLeft()

for index in 1...3{
    car.moveStraight()
}
car.moveLeft()

for index in 1...7{
    car.moveStraight()
}
car.moveLeft()

for index in 1...6{
    car.moveStraight()
}
car.moveLeft()

for index in 1...4{
    car.moveStraight()
}
car.moveLeft()

for index in 1...3{
    car.moveStraight()
}
for index in 1...3{
    car.moveLeft()
}


/*:
 ### El siguiente codigo es parte de la parte visual
 Favor no manipular el codigo ```XCPShowView``` este es el encargado de mostrar los graficos en la pantalla. Cualquier cambio en este podria dañar tu proyecto.
 */
if let c = circuit {
    XCPShowView("Container View", view: c)
}




