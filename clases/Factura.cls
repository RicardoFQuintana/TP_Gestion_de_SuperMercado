"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Factura
	instanceVariableNames: 'idFactura nomSupermercado fecha dniCliente idTpago idEmpleado idVenta infoProductosVendidos importeT'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Factura guid: (GUID fromString: '{12D89918-B2BA-4904-B773-2849736E60A9}')!
Factura comment: ''!
!Factura categoriesForClass!Kernel-Objects! !
!Factura methodsFor!

iniFacturaId:unId nomSupermercado:unNom dniCliente: unDni idTpago: unIdPago idEmpleado: unIdEmple idVenta: unIdVenta infoProductosVendidos: colec importeT: unTotal
"Inicializa todos los atributos de una factura con los datos proporcionados."
	idFactura := unId.
	nomSupermercado:=unNom.
	fecha:= Date today.
	dniCliente:= unDni.
	idTpago:= unIdPago.
	idEmpleado:= unIdEmple.
	idVenta:= unIdVenta.
	infoProductosVendidos := colec.
        importeT:= unTotal.!

modificarDniCliente: unDato
	dniCliente := unDato.!

modificarFecha: unDato
	fecha := unDato.!

modificarIdEmpleado: unDato
 idEmpleado:=unDato. 
!

modificarIdFactura: unDato
	idFactura := unDato.!

modificarIdTipoPago: unDato
	idTpago:= unDato.!

modificarIdVenta: unDato
	idVenta := unDato.!

modificarImporteTotal: unDato
	importeT := unDato.
!

modificarInfoProductosVendidos: unDato
	infoProductosVendidos:=unDato. !

modificarNomSupermercado: unDato
	nomSupermercado := unDato.!

verDniCliente
	^dniCliente.
!

verFecha
	^fecha.!

verIdEmpleado
	^idEmpleado. !

verIdFactura
	^idFactura.!

verIdTipoPago
	^idTpago.!

verIdVenta
	^idVenta.!

verImporteTotal
	^importeT.!

verInfoProductosVendidos
	^infoProductosVendidos.!

verNomSupermercado
	^nomSupermercado. ! !
!Factura categoriesFor: #iniFacturaId:nomSupermercado:dniCliente:idTpago:idEmpleado:idVenta:infoProductosVendidos:importeT:!public! !
!Factura categoriesFor: #modificarDniCliente:!public! !
!Factura categoriesFor: #modificarFecha:!public! !
!Factura categoriesFor: #modificarIdEmpleado:!public! !
!Factura categoriesFor: #modificarIdFactura:!public! !
!Factura categoriesFor: #modificarIdTipoPago:!public! !
!Factura categoriesFor: #modificarIdVenta:!public! !
!Factura categoriesFor: #modificarImporteTotal:!public! !
!Factura categoriesFor: #modificarInfoProductosVendidos:!public! !
!Factura categoriesFor: #modificarNomSupermercado:!public! !
!Factura categoriesFor: #verDniCliente!public! !
!Factura categoriesFor: #verFecha!public! !
!Factura categoriesFor: #verIdEmpleado!public! !
!Factura categoriesFor: #verIdFactura!public! !
!Factura categoriesFor: #verIdTipoPago!public! !
!Factura categoriesFor: #verIdVenta!public! !
!Factura categoriesFor: #verImporteTotal!public! !
!Factura categoriesFor: #verInfoProductosVendidos!public! !
!Factura categoriesFor: #verNomSupermercado!public! !

!Factura class methodsFor!

crearFacturaId:unId nomSupermercado:unNom dniCliente: unDni idTpago: unIdPago idEmpleado: unIdEmple idVenta: unIdVenta infoProductosVendidos: colec importeT: unTotal
	^self new
		iniFacturaId: unId
                nomSupermercado: unNom
		dniCliente: unDni
		idTpago: unIdPago
		idEmpleado: unIdEmple
		idVenta: unIdVenta
		infoProductosVendidos: colec
		importeT: unTotal.
		
! !
!Factura class categoriesFor: #crearFacturaId:nomSupermercado:dniCliente:idTpago:idEmpleado:idVenta:infoProductosVendidos:importeT:!public! !

