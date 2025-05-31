"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SuperMecado
	instanceVariableNames: 'nombre direccion listClientes listEmpleados listaVentas listProveedor listaCajas listProductoVenta'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SuperMecado guid: (GUID fromString: '{5F685D5A-02AF-48A4-BD97-9A9D2109D0F8}')!
SuperMecado comment: ''!
!SuperMecado categoriesForClass!Kernel-Objects! !
!SuperMecado methodsFor!

agregarCaja: unaCaja
    listaCajas add: unaCaja.!

agregarCliente: unCliente
    listClientes add: unCliente.!

agregarEmpleado: unEmpleado
    listEmpleados add: unEmpleado.!

agregarProductoVenta: unProducto
    listProductoVenta add: unProducto.!

agregarProveedor: unProveedor
    listProveedor add: unProveedor.!

agregarVenta: unaVenta
    listaVentas add: unaVenta.
!

buscarCajaPorId: unId
    ^listaCajas detect: [ :caj | caj verIdCaja = unId ] ifNone: [ nil ].!

buscarProductoPorId: unId
    ^listProductoVenta detect: [ :prod | prod verIdProducto = unId ] ifNone: [ nil ].!

buscarProductoPorNombre: unNombre
    ^listProductoVenta detect: [ :prod | prod verNombre = unNombre ] ifNone: [ nil ].!

buscarProveedorPorId: unId
    ^listProveedor detect: [ :prov | prov verId = unId ] ifNone: [ nil ].!

initSupermercadoNombre: unNombre direccion: unaDireccion
    nombre := unNombre.
    direccion := unaDireccion.
    listClientes := OrderedCollection new.
    listEmpleados := OrderedCollection new.
    listaVentas := OrderedCollection new.
    listProveedor := OrderedCollection new.
    listaCajas := OrderedCollection new.
    listProductoVenta := OrderedCollection new.!

modDireccion: unaDireccion
    ^direccion := unaDireccion.!

modNombre: unNombre
    ^nombre := unNombre.!

productosPorProveedor: unProveedor
    ^listProductoVenta select: [ :producto | producto verProveedor = unProveedor ].!

verDireccion
    ^direccion.!

verListaCajas
    ^listaCajas.
!

verListaVentas
    ^listaVentas.!

verListClientes
    ^listClientes.
!

verListEmpleados
    ^listEmpleados.!

verListProductoVenta
    ^listProductoVenta.!

verListProveedor
    ^listProveedor.!

verNombre
    ^nombre.! !
!SuperMecado categoriesFor: #agregarCaja:!public! !
!SuperMecado categoriesFor: #agregarCliente:!public! !
!SuperMecado categoriesFor: #agregarEmpleado:!public! !
!SuperMecado categoriesFor: #agregarProductoVenta:!public! !
!SuperMecado categoriesFor: #agregarProveedor:!public! !
!SuperMecado categoriesFor: #agregarVenta:!public! !
!SuperMecado categoriesFor: #buscarCajaPorId:!public! !
!SuperMecado categoriesFor: #buscarProductoPorId:!public! !
!SuperMecado categoriesFor: #buscarProductoPorNombre:!public! !
!SuperMecado categoriesFor: #buscarProveedorPorId:!public! !
!SuperMecado categoriesFor: #initSupermercadoNombre:direccion:!public! !
!SuperMecado categoriesFor: #modDireccion:!public! !
!SuperMecado categoriesFor: #modNombre:!public! !
!SuperMecado categoriesFor: #productosPorProveedor:!public! !
!SuperMecado categoriesFor: #verDireccion!public! !
!SuperMecado categoriesFor: #verListaCajas!public! !
!SuperMecado categoriesFor: #verListaVentas!public! !
!SuperMecado categoriesFor: #verListClientes!public! !
!SuperMecado categoriesFor: #verListEmpleados!public! !
!SuperMecado categoriesFor: #verListProductoVenta!public! !
!SuperMecado categoriesFor: #verListProveedor!public! !
!SuperMecado categoriesFor: #verNombre!public! !

!SuperMecado class methodsFor!

crearSupermercadoNombre: unNombre direccion: unaDireccion
    ^self new initSupermercadoNombre: unNombre direccion: unaDireccion.! !
!SuperMecado class categoriesFor: #crearSupermercadoNombre:direccion:!public! !

