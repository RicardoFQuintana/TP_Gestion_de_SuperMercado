"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Caja
	instanceVariableNames: 'idCaja recaudacion listaFacturas listaTiposPago'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Caja guid: (GUID fromString: '{E46BD45D-4A02-43C9-BDF8-1D9AF81EAC00}')!
Caja comment: ''!
!Caja categoriesForClass!Kernel-Objects! !
!Caja methodsFor!

eliminarTipoPago: unId
	| unTipoPago |
	unTipoPago:= self retornarTipoPago: unId.
	listaTiposPago remove: unTipoPago
!

iniCajaId: unId
    idCaja := unId.
    recaudacion := 0.0.
    listaFacturas := OrderedCollection new.
    listaTiposPago := OrderedCollection new.
    ^self.
!

modificarIdCaja: unDato
	"Modifica el Id de una caja"

	idCaja := unDato!

modificarRecaudacion: unMonto
	"Suma la cantidad obtenida luego de una venta"

	recaudacion := recaudacion + unMonto.!

registrarFacturaId: unId  nomSupermercado:unNom dniCliente: unDni idTpago: unIdPago idEmpleado: unIdEmple idVenta: unIdVenta infoProductosVendidos: colec importeT: unTotal

	| unaFactura |
	unaFactura := Factura
				crearFacturaId: unId
				nomSupermercado: unNom
				dniCliente: unDni
				idTpago: unIdPago
				idEmpleado: unIdEmple
				idVenta: unIdVenta
				infoProductosVendidos: colec
				importeT: unTotal.
	listaFacturas add: unaFactura.
	self modificarRecaudacion: unTotal.!

registrarTipoPagoId: unId det: unDetalle desc: unDescuento
	"Registra un tipo de Pago"

	| unTipoPago |
	unTipoPago := Tipo_Pago crearTipoPagoId: unId detalle: unDetalle descuento: unDescuento.
	listaTiposPago add: unTipoPago.!

retornarFactura: unId
	"Retorna una factura especificando su ID"

	| factu |
	factu := listaFacturas detect: [:fact | fact verIdFactura = unId] ifNone: [nil].
	^factu
!

retornarIdFacturas
	"Retorna una coleccion con todos los ID de las facturas"

	| facts |
	facts := listaFacturas collect: [:fact | fact verIdFactura].
	^facts!

retornarListaFactura
	"Retorna la lista de tipos de facturas"

	^listaFacturas!

retornarTipoPago: unId
	"Retorna el tipo de abono especificando su ID"

	| tipo |
	tipo := listaTiposPago detect: [:t | t verIdTipoPago = unId] ifNone: [nil].
	^tipo!

retornarTiposPago
	"Retorna la lista de tipos de abono"

	^listaTiposPago 
!

verIdCaja
	^idCaja!

verRecaudacion
    ^recaudacion
! !
!Caja categoriesFor: #eliminarTipoPago:!public! !
!Caja categoriesFor: #iniCajaId:!public! !
!Caja categoriesFor: #modificarIdCaja:!public! !
!Caja categoriesFor: #modificarRecaudacion:!public! !
!Caja categoriesFor: #registrarFacturaId:nomSupermercado:dniCliente:idTpago:idEmpleado:idVenta:infoProductosVendidos:importeT:!public! !
!Caja categoriesFor: #registrarTipoPagoId:det:desc:!public! !
!Caja categoriesFor: #retornarFactura:!public! !
!Caja categoriesFor: #retornarIdFacturas!public! !
!Caja categoriesFor: #retornarListaFactura!public! !
!Caja categoriesFor: #retornarTipoPago:!public! !
!Caja categoriesFor: #retornarTiposPago!public! !
!Caja categoriesFor: #verIdCaja!public! !
!Caja categoriesFor: #verRecaudacion!public! !

!Caja class methodsFor!

crearCajaId: unId
    ^(self new) iniCajaId: unId.! !
!Caja class categoriesFor: #crearCajaId:!public! !

