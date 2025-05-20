"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Proveedor
	instanceVariableNames: 'idProveedor cuit razonSocial direccion'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Proveedor guid: (GUID fromString: '{90067EF0-F898-4012-9DEF-92772F373079}')!
Proveedor comment: ''!
!Proveedor categoriesForClass!Kernel-Objects! !
!Proveedor methodsFor!

iniProveedorId: unId nom: unNom dni: unDni tel: unTel cuit:unCuit rSocial:unaRSocial dire:unaDire
idProveedor:= unId.
cuit:= cuit.
razonSocial:= unaRSocial.
direccion:= unaDire.
super initPersonaNom:unNom dni:unDni telefono:unTel.!

modiCuit: unCuit
cuit:= unCuit.!

modiDireccion: unaDire
direccion:= unaDire.!

modiId: unId
idProveedor:= unId.!

modiRazonSocial: unaRSocial
razonSocial:= unaRSocial.!

verCuit
^cuit.!

verDireccion
^direccion.!

verId
^idProveedor.!

verRazonSocial
^razonSocial.! !
!Proveedor categoriesFor: #iniProveedorId:nom:dni:tel:cuit:rSocial:dire:!public! !
!Proveedor categoriesFor: #modiCuit:!public! !
!Proveedor categoriesFor: #modiDireccion:!public! !
!Proveedor categoriesFor: #modiId:!public! !
!Proveedor categoriesFor: #modiRazonSocial:!public! !
!Proveedor categoriesFor: #verCuit!public! !
!Proveedor categoriesFor: #verDireccion!public! !
!Proveedor categoriesFor: #verId!public! !
!Proveedor categoriesFor: #verRazonSocial!public! !

!Proveedor class methodsFor!

crearProveedorId: unId nom: unNom dni: unDni tel: unTel cuit: unCuit rsocial: unaRSocial dire: unaDire
^(self  new)iniProveedorId: unId nom: unNom dni: unDni tel: unTel cuit: unCuit rSocial: unaRSocial dire: unaDire.! !
!Proveedor class categoriesFor: #crearProveedorId:nom:dni:tel:cuit:rsocial:dire:!public! !

