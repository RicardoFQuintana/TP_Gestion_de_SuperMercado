"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Tipo_Pago
	instanceVariableNames: 'idTipoPago detalle descuento'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Tipo_Pago guid: (GUID fromString: '{A082E5C1-1D7B-427C-A608-91537C2A8B81}')!
Tipo_Pago comment: ''!
!Tipo_Pago categoriesForClass!Kernel-Objects! !
!Tipo_Pago methodsFor!

initTipoPagoId: unId detalle: unDet descuento: unDesc
    idTipoPago := unId.
    detalle := unDet.
    descuento := unDesc.!

modDescuento: unDesc
    ^descuento := unDesc.!

modDetalle: unDet
    ^detalle := unDet.!

modIdTipoPago: unId
    ^idTipoPago := unId.!

verDescuento
    ^descuento.!

verDetalle
    ^detalle.!

verIdTipoPago
    ^idTipoPago.! !
!Tipo_Pago categoriesFor: #initTipoPagoId:detalle:descuento:!public! !
!Tipo_Pago categoriesFor: #modDescuento:!public! !
!Tipo_Pago categoriesFor: #modDetalle:!public! !
!Tipo_Pago categoriesFor: #modIdTipoPago:!public! !
!Tipo_Pago categoriesFor: #verDescuento!public! !
!Tipo_Pago categoriesFor: #verDetalle!public! !
!Tipo_Pago categoriesFor: #verIdTipoPago!public! !

!Tipo_Pago class methodsFor!

crearTipoPagoId: unId detalle: unDet descuento: unDesc
    ^self new initTipoPagoId: unId detalle: unDet descuento: unDesc.! !
!Tipo_Pago class categoriesFor: #crearTipoPagoId:detalle:descuento:!public! !

