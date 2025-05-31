"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Cliente
	instanceVariableNames: 'idCliente listaFacturas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{A73DFC5B-15EE-4B13-B655-E2736CF2FC7E}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

agregarFactura: unaFactura
listaFacturas add:unaFactura.!

eliminarFactura:unaFactura
listaFacturas delete: unaFactura.!

esVacia
^listaFacturas empty.!

existeFactura:unaFactura
^listaFacturas includes: unaFactura.!

iniClienteId: unId nom: unNom dni: unDni tel: unTel
idCliente:= unId.
listaFacturas:= OrderedCollection new.
super initPersonaNom:unNom dni:unDni telefono:unTel.!

modId: unId
idCliente:=unId.!

verDni
    ^dni.!

verId
^idCliente.! !
!Cliente categoriesFor: #agregarFactura:!public! !
!Cliente categoriesFor: #eliminarFactura:!public! !
!Cliente categoriesFor: #esVacia!public! !
!Cliente categoriesFor: #existeFactura:!public! !
!Cliente categoriesFor: #iniClienteId:nom:dni:tel:!public! !
!Cliente categoriesFor: #modId:!public! !
!Cliente categoriesFor: #verDni!public! !
!Cliente categoriesFor: #verId!public! !

!Cliente class methodsFor!

crearClienteId: unId nom: unNom dni: unDni tel: unTel
^(self  new)iniClienteId: unId nom: unNom dni: unDni tel: unTel.! !
!Cliente class categoriesFor: #crearClienteId:nom:dni:tel:!public! !

