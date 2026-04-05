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

    method cambioDeSueldo (nuevoSueldo){
        sueldo = nuevoSueldo
    }

    method sueldoActual(){
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
    var sueldo = 0
    var totalCobrado = 0

    method venderEmpanadas(ventas){
        empanadasVendidas = empanadasVendidas + ventas
        sueldo = sueldo + (ventas * 15)
    }

    method sueldoActual(){
        return sueldo
    }

    method cobrarSueldo(){
        totalCobrado = totalCobrado + sueldo
        empanadasVendidas = 0
        sueldo = 0
    }

}

object gimenez {
    var fondoDeSueldos = 300000

    method pagarSueldoA(empleado){
        
        fondoDeSueldos = fondoDeSueldos - empleado.sueldoActual()
        empleado.cobrarSueldo()

    }

    method fondoActual(){
        return fondoDeSueldos
    }
}
