object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0


    method dinero (){
        return dinero
    }

    method deuda (){
        return deuda
    }

    method gastar(cuanto){
        if (dinero < cuanto){
            deuda = deuda - (dinero - cuanto)
            dinero = 0
        } else {
            dinero = dinero - cuanto
        }
    }

    method sueldo (nuevoSueldo){
        sueldo = nuevoSueldo
    }

    method sueldo(){
        return sueldo
    }

    method cobrarSueldo(){
        if (deuda > sueldo){
            deuda = deuda - sueldo
        } else {
            dinero = dinero + (sueldo - deuda)
            deuda = 0
        }
        
    }

}

object baigorria {
    var empanadasVendidas = 0
    const comisionPorEmpanada = 15
    var totalCobrado = 0

    method vender(ventas){
        empanadasVendidas = empanadasVendidas + ventas
  
    }

    method sueldo(){
        return (empanadasVendidas * comisionPorEmpanada)
    }

    method totalCobrado(){
        return totalCobrado
    }

    method cobrarSueldo(){
        totalCobrado = totalCobrado + self.sueldo()
        empanadasVendidas = 0
    }

}

object gimenez {
    var fondoDeSueldos = 300000

    method pagarSueldo(empleado){
        
        fondoDeSueldos = fondoDeSueldos - empleado.sueldo()
        empleado.cobrarSueldo()

    }

    method fondo(){
        return fondoDeSueldos
    }
}
