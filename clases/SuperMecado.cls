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

buscarClientePorId: unId
    ^self verListClientes detect: [:c | c verId = unId] ifNone: [nil].!

buscarEmpleadoPorId: unId
    ^self verListEmpleados detect: [:e | e verIdEmpleado = unId] ifNone: [nil].
!

buscarProductoPorId: unId
    ^listProductoVenta detect: [ :prod | prod verIdProducto = unId ] ifNone: [ nil ].!

buscarProductoPorNombre: unNombre
    ^listProductoVenta detect: [ :prod | prod verNombre = unNombre ] ifNone: [ nil ].!

buscarProveedorPorId: unId
    ^listProveedor detect: [ :prov | prov verId = unId ] ifNone: [ nil ].!

descontarStockDeProductos: diccionario
    diccionario keysAndValuesDo: [:pid :cant |
        | producto |
        producto := self buscarProductoPorId: pid.
        producto isNil ifFalse: [ producto modStock: cant ].
    ].!

eliminarCliente: unId
    | cliente |
    cliente := self verListClientes detect: [:c | c verId = unId] ifNone: [nil].
    
    cliente ifNil: [
        Transcript show: 'Cliente no encontrado.'; cr.
        ^self.
    ].
    
    self verListClientes remove: cliente.
    Transcript show: 'Cliente eliminado con éxito.'; cr.!

eliminarEmpleado: unId
    | empleado |
    empleado := self verListEmpleados detect: [:e | e verIdEmpleado = unId] ifNone: [nil].
    
    empleado ifNil: [
        Transcript show: 'Empleado no encontrado.'; cr.
        ^self.
    ].
    
    self verListEmpleados remove: empleado .
    Transcript show: 'Empleado eliminado con éxito.'; cr.!

eliminarProducto: unId
    | producto |
    producto := self verListProductoVenta detect: [:p | p verIdProducto = unId] ifNone: [nil].
    
    producto ifNil: [
        Transcript show: 'Producto no encontrado.'; cr.
        ^self.
    ].
    
    self verListProductoVenta remove: producto .
    Transcript show: 'Producto eliminado con éxito.'; cr.!

eliminarProveedor: unId
    | proveedor |
    proveedor := self verListProveedor detect: [:p | p verId = unId] ifNone: [nil].
    
    proveedor ifNil: [
        Transcript show: 'Proveedor no encontrado.'; cr.
        ^self.
    ].
    
    self verListProveedor remove: proveedor .
    Transcript show: 'Proveedor eliminado con éxito.'; cr.!

generarIdVenta
    ^'v', (1000 + self verListaVentas size + 1) asString.!

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

procesarVentaConCliente: clienteId empleado: empleadoId caja: cajaId tipoPago: tipoPagoId
    | cliente empleado caja tipoPago infoProdDict total totalFinal descuento idVenta fecha nombreSuper venta productoId producto cantidad |

    cliente := self buscarClientePorId: clienteId.
    cliente isNil ifTrue: [ ^'Cliente no encontrado' ].

    empleado := self buscarEmpleadoPorId: empleadoId.
    empleado isNil ifTrue: [ ^'Empleado no encontrado' ].

    caja := self buscarCajaPorId: cajaId.
    caja isNil ifTrue: [ ^'Caja no encontrada' ].

    tipoPago := caja retornarTipoPago: tipoPagoId.
    tipoPago isNil ifTrue: [ ^'Tipo de pago no encontrado en esta caja' ].

    infoProdDict := Dictionary new.
    total := 0.

    [ (Prompter prompt: '¿Agregar otro producto? (s/n)') = 's' ] whileTrue: [
        productoId := Prompter prompt: 'ID del producto'.
        producto := self buscarProductoPorId: productoId.
        producto isNil ifTrue: [
            Transcript show: 'Producto no encontrado'; cr
        ] ifFalse: [
            cantidad := (Prompter prompt: 'Cantidad') asNumber.
            (producto verStock < cantidad) ifTrue: [
                Transcript show: 'Stock insuficiente para ', producto verNombre; cr.
            ] ifFalse: [
                infoProdDict at: productoId put: cantidad.
                total := total + (producto verPrecio * cantidad).
            ].
        ].
    ].

    infoProdDict isEmpty ifTrue: [ ^'No se seleccionaron productos válidos. Venta cancelada.' ].

    descuento := tipoPago verDescuento.
    totalFinal := total * (1 - (descuento / 100)).
    idVenta := self generarIdVenta.
    fecha := Date today.
    nombreSuper := self verNombre.

    venta := self registrarVentaConId: idVenta fecha: fecha total: totalFinal idCliente: cliente verId productos: infoProdDict.

    caja registrarFacturaId: idVenta 
        nomSupermercado: nombreSuper 
        dniCliente: cliente verDni 
        idTpago: tipoPagoId 
        idEmpleado: empleado verIdEmpleado 
        idVenta: idVenta 
        infoProductosVendidos: infoProdDict 
        importeT: totalFinal.

    self descontarStockDeProductos: infoProdDict.

    ^totalFinal!

productosPorProveedor: unProveedor
    ^listProductoVenta select: [ :producto | producto verProveedor = unProveedor ].!

registrarVentaConId: unId fecha: unaFecha total: unTotal idCliente: unIdCliente productos: diccionario
    | venta |
    venta := Venta crearVentaId: unId fecha: unaFecha total: unTotal idCliente: unIdCliente.
    diccionario keysAndValuesDo: [:pid :cant |
        venta agregarVentaProducto: pid cant: cant.
    ].
    self agregarVenta: venta.
    ^venta.!

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
!SuperMecado categoriesFor: #buscarClientePorId:!public! !
!SuperMecado categoriesFor: #buscarEmpleadoPorId:!public! !
!SuperMecado categoriesFor: #buscarProductoPorId:!public! !
!SuperMecado categoriesFor: #buscarProductoPorNombre:!public! !
!SuperMecado categoriesFor: #buscarProveedorPorId:!public! !
!SuperMecado categoriesFor: #descontarStockDeProductos:!public! !
!SuperMecado categoriesFor: #eliminarCliente:!public! !
!SuperMecado categoriesFor: #eliminarEmpleado:!public! !
!SuperMecado categoriesFor: #eliminarProducto:!public! !
!SuperMecado categoriesFor: #eliminarProveedor:!public! !
!SuperMecado categoriesFor: #generarIdVenta!public! !
!SuperMecado categoriesFor: #initSupermercadoNombre:direccion:!public! !
!SuperMecado categoriesFor: #modDireccion:!public! !
!SuperMecado categoriesFor: #modNombre:!public! !
!SuperMecado categoriesFor: #procesarVentaConCliente:empleado:caja:tipoPago:!public! !
!SuperMecado categoriesFor: #productosPorProveedor:!public! !
!SuperMecado categoriesFor: #registrarVentaConId:fecha:total:idCliente:productos:!public! !
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

