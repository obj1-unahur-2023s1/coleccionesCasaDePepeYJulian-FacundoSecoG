object cuentaCorriente {
	var saldo=0
	method saldo()=saldo
	method depositarDinero(cantDinero){
		saldo+=cantDinero
	}
	method extraer(cantDinero){
		const dineroAntes=saldo
		saldo=0.max(saldo-cantDinero)
		return dineroAntes.min(cantDinero)
	}
}
object cuentaConGastos{
	var saldo=0
	method saldo()=saldo
	method depositarDinero(cantDinero){
		if (cantDinero>200){
			saldo+=cantDinero-200	
		}
	}
	method extraer(cantDinero){
		if (cantDinero<=10000){
			saldo-=cantDinero+200
			return cantDinero
		}else{
			saldo-=(cantDinero+(cantDinero*0.02))
			return cantDinero
		}
		
	}
}
object cuentaCombinada{
	var saldo=cuentaCorriente.saldo()+cuentaConGastos.saldo()
	
	
	method saldo()=saldo
	method depositar(importe){
		cuentaCorriente.depositarDinero(importe)
		saldo+=importe
	}
	method extraer(importe){
		if (cuentaCorriente.saldo()>=importe){
			cuentaCorriente.extraer(importe)
			saldo-=importe
		}else{
			const resto = importe-cuentaCorriente.saldo()
			cuentaCorriente.extraer(cuentaCorriente.saldo())
			cuentaConGastos.extraer(resto)
			saldo-=importe
		}
	}
}