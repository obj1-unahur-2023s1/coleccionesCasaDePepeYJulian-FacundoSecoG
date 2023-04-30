import cosas.*
import cuentaBancaria.*

object casaDePepeYJulian {
	const cosas = []
	var cuentaBancaria 
	var gastos=0
	
	method dineroDisponible()=cuentaBancaria.saldo()
	method cosas() = cosas
	method gastos()=gastos
	method cuentaBancaria(cuenta){
		cuentaBancaria=cuenta
	}
	method gastar(importe){
		gastos+=importe
		cuentaBancaria.extraer(importe)
	}
	method comprar(cosa){
		if (self.dineroDisponible()>=cosa.precio()){
			self.gastar(cosa.precio())
			cosas.add(cosa)
		}
	}
	method cantidadDeCosasCompradas()=self.cosas().size()
	method tieneComida()=cosas.any({cosa=>cosa.esComida()})
	method vieneDeEquiparse()=cosas.last().esElectrodomestico()
	method esDerrochona()=cosas.map({cosa=>cosa.precio()}).sum()>=90000
	method compraMasCara()=cosas.max({cosa=>cosa.precio()})
	method electrodomesticosComprados()=cosas.filter({cosa=>cosa.esElectrodomestico()})
	method malaEpoca()=cosas.all({cosa=>cosa.esComida()})
	method queFaltaComprar(lista)=lista.asSet().difference(cosas.asSet()).asList()
	method faltaComida()=cosas.filter({cosa=>cosa.esComida()}).size()<2
}
