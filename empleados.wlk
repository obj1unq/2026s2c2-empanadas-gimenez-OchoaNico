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
    var sueldo = 0
    var totalCobrado = 0

    method vender(ventas){
        empanadasVendidas = empanadasVendidas + ventas
        sueldo = sueldo + (ventas * 15)
    }

    method sueldo(){
        return sueldo
    }

    method totalCobrado(){
        return totalCobrado
    }

    method cobrarSueldo(){
        totalCobrado = totalCobrado + sueldo
        empanadasVendidas = 0
        sueldo = 0
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
