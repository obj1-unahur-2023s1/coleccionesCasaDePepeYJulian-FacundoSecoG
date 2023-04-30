object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object milanesa{
	method precio()=2600
	method esComida()=true
	method esElectrodomestico()=false
}
object salsaDeTomate{
	method precio()=900
	method esComida()=true
	method esElectrodomestico()=false
}
object microondas{
	method precio()=42000
	method esComida()=false
	method esElectrodomestico()=true
}
object cebolla{
	method precio()=250
	method esComida()=true
	method esElectrodomestico()=false
}
object compu{
	method precio()=500*dolar.precioDeVenta()
	method esComida()=false
	method esElectrodomestico()=true
}
object dolar{
	method precioDeVenta()=500
}
object packDeComida{
	const posiblesPlatos=[tiraDeAsado,paqueteDeFideos,milanesa]
	const posiblesAderezos=[salsaDeTomate,cebolla]
	var plato
	var aderezo
	method armarPack(platoPrincipal,unAderezo){
		plato=posiblesPlatos.find({p=>p==platoPrincipal})
		aderezo=posiblesAderezos.find({s=>s==unAderezo})
	}
	method precio()=plato.precio()+aderezo.precio()
	method esComida()=true
	method esElectrodomestico()=false
}