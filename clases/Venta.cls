"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Venta
	instanceVariableNames: 'idVenta fecha infoProductosVendidos total idCliente'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Venta guid: (GUID fromString: '{CACBE842-3C23-4C05-B11E-CC4825CC6C6F}')!
Venta comment: ''!
!Venta categoriesForClass!Kernel-Objects! !
!Venta methodsFor!

agregarVentaProducto: unIdProducto cant:unaCantidad
infoProductosVendidos at:unIdProducto put:unaCantidad.!

contieneProducto: unIdProducto
^infoProductosVendidos includesKey: unIdProducto.!

eliminarVentaProducto: unIdProducto
infoProductosVendidos removeKey: unIdProducto ifAbsent: ['Producto no encontrado'].!

esVacia
^infoProductosVendidos isEmpty.!

iniVentaId: unId fecha: unaFecha total: unTotal idCliente: unIdCliente
idVenta:= unId.
fecha:= unaFecha.
total:= unTotal.
idCliente:= unIdCliente.
infoProductosVendidos:= Dictionary new.!

modiFecha: unaFecha
fecha:= unaFecha.!

modiId: unId
idVenta:= unId.!

modiIdCliente: unIdCliente
idCliente:= unIdCliente.!

modiTotal: unTotal
total:= unTotal.!

verFecha
^fecha.!

verId
^idVenta.!

verIdCliente
^idCliente.!

verInfoProductosVendidos
^infoProductosVendidos.!

verTotal
^total.! !
!Venta categoriesFor: #agregarVentaProducto:cant:!public! !
!Venta categoriesFor: #contieneProducto:!public! !
!Venta categoriesFor: #eliminarVentaProducto:!public! !
!Venta categoriesFor: #esVacia!public! !
!Venta categoriesFor: #iniVentaId:fecha:total:idCliente:!public! !
!Venta categoriesFor: #modiFecha:!public! !
!Venta categoriesFor: #modiId:!public! !
!Venta categoriesFor: #modiIdCliente:!public! !
!Venta categoriesFor: #modiTotal:!public! !
!Venta categoriesFor: #verFecha!public! !
!Venta categoriesFor: #verId!public! !
!Venta categoriesFor: #verIdCliente!public! !
!Venta categoriesFor: #verInfoProductosVendidos!public! !
!Venta categoriesFor: #verTotal!public! !

!Venta class methodsFor!

crearVentaId: unId fecha: unaFecha total: unTotal idCliente: unIdCliente
^(self  new)iniVentaId: unId fecha: unaFecha total: unTotal idCliente: unIdCliente.! !
!Venta class categoriesFor: #crearVentaId:fecha:total:idCliente:!public! !

