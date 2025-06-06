"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MenuPrincipal
	instanceVariableNames: 'supermercado'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MenuPrincipal guid: (GUID fromString: '{3566CD81-9BB1-490A-84A8-B3D7CF695BCE}')!
MenuPrincipal comment: ''!
!MenuPrincipal categoriesForClass!Kernel-Objects! !
!MenuPrincipal methodsFor!

buscarProducto
    | id prod |
    id := Prompter prompt: 'ID de producto'.
    prod := supermercado buscarProductoPorId: id.
    prod isNil
        ifTrue: [ Transcript show: 'Producto no encontrado'; cr ]
        ifFalse: [
            Transcript show: 'Nombre: ', prod verNombre; cr.
            Transcript show: 'Precio: ', prod verPrecio printString; cr.
        ].!

crearCaja
|i caja|
    i := Prompter prompt: 'ID'.
    caja := Caja crearCajaId: i.
    supermercado agregarCaja: caja.
    Transcript show: 'Caja agregado: ', caja verId ; cr.

!

crearCliente
| n d t i cli |
    n := Prompter prompt: 'Nombre'.
    d := Prompter prompt: 'DNI'.
    t := Prompter prompt: 'Tel�fono'.
    i := Prompter prompt: 'ID'.
    cli := Cliente  crearClienteId: i nom: n dni: d tel: t.
    supermercado agregarCliente: cli.
    Transcript show: 'Cliente agregado: ', cli verNombre; cr.!

crearEmpleado
    | n d t i c s f emp |
    n := Prompter prompt: 'Nombre'.
    d := Prompter prompt: 'DNI'.
    t := Prompter prompt: 'Tel�fono'.
    i := Prompter prompt: 'ID'.
    c:= Prompter prompt: 'Cargo'.
    s := (Prompter prompt: 'Salario') asNumber.
    f := Prompter prompt: 'Fecha ingreso (YYYY/MM/DD)'.
    emp := Empleado crearEmpleadoNom:n dni: d telefono: t id: i cargo: c salario: s fecha: f.
    supermercado agregarEmpleado: emp.
    Transcript show: 'Empleado agregado: ', emp verNombre; cr.!

crearproducto
    | n p c i  sM S pro proveedor proveedorId|

    supermercado agregarProveedor: proveedor.
    n := Prompter prompt: 'Nombre'.
    p := (Prompter prompt: 'Precio') asNumber.
    c := Prompter prompt: 'Categoria'.
    i := Prompter prompt: 'ID'.
    S := (Prompter prompt: 'Stock') asNumber.
    sM := (Prompter prompt: 'Stock Minimo') asNumber.

   proveedorId := Prompter prompt: ' Ingrese ID de un Proveedor'.

    proveedor := supermercado buscarProveedorPorId: proveedorId.

    pro := Producto crearProductoId:i nom: n precio: p cat: c sMin: sM stock: S proveedor: proveedor.
    supermercado agregarProductoVenta: pro.
    Transcript show: 'Producto agregado: ', pro verNombre; cr.


    
    !

crearProveedor
| n d t i c rs dire proveedor |
    n := Prompter prompt: 'Nombre'.
    d := Prompter prompt: 'DNI'.
    t := Prompter prompt: 'Tel�fono'.
    i := Prompter prompt: 'ID'.
    c:= Prompter prompt: 'Cuit'.
    rs := Prompter prompt: 'Razon Social'.
    dire := Prompter prompt: 'Direccion'.
    proveedor := Proveedor crearProveedorId: i nom: n dni: d tel: t cuit: c rsocial: rs dire: dire.
    supermercado agregarProveedor: proveedor.
    Transcript show: 'Proveedor agregado: ', proveedor verNombre; cr.!

crearTipoPago
|i d desc cajaid caja|

    i := Prompter prompt: 'ID'.
    d := Prompter prompt: 'Detalle'.
    desc := Prompter prompt: 'Descuento'.

    cajaid := Prompter prompt: ' Ingrese ID de una Caja'.

    caja := supermercado buscarCajaPorId: cajaid.
    
    caja registrarTipoPagoId: i det: d desc: desc.

    Transcript show: 'Tipo de Pago agregado a la caja: ', caja verId; cr.

!

iniciarMenu
	| proveedor1 proveedor2 cliente1 cliente2 cliente3 tipoPago1 tipoPago2 caja venta1 venta2 |
	supermercado := SuperMecado crearSupermercadoNombre: 'SuperDemo' direccion: 'Av. Siempre Viva 742'.
	supermercado agregarProveedor: (Proveedor
				crearProveedorId: 'PR001'
				nom: 'Acme'
				dni: '1001'
				tel: '1144001100'
				cuit: '30-11223344-9'
				rsocial: 'Acme Corp.'
				dire: 'Calle Falsa 123').
	supermercado agregarProveedor: (Proveedor
				crearProveedorId: 'PR002'
				nom: 'LogiTech'
				dni: '1002'
				tel: '1155002200'
				cuit: '30-55667788-1'
				rsocial: 'LogiTech S.A.'
				dire: 'Calle Real 456').
	proveedor1 := supermercado verListProveedor first.
	proveedor2 := supermercado verListProveedor last.
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P001'
				nom: 'Yerba Mate'
				precio: 1200
				cat: 'Infusi�n'
				sMin: 5
				stock: 30
				proveedor: proveedor1).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P002'
				nom: 'Aceite'
				precio: 1700
				cat: 'Almac�n'
				sMin: 3
				stock: 10
				proveedor: proveedor1).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P003'
				nom: 'Fideos'
				precio: 800
				cat: 'Almac�n'
				sMin: 5
				stock: 15
				proveedor: proveedor1).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P004'
				nom: 'Arroz'
				precio: 950
				cat: 'Almac�n'
				sMin: 4
				stock: 20
				proveedor: proveedor1).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P005'
				nom: 'Galletitas'
				precio: 500
				cat: 'Snacks'
				sMin: 6
				stock: 25
				proveedor: proveedor2).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P006'
				nom: 'Jugo'
				precio: 600
				cat: 'Bebidas'
				sMin: 3
				stock: 18
				proveedor: proveedor2).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P007'
				nom: 'Leche'
				precio: 950
				cat: 'L�cteos'
				sMin: 5
				stock: 22
				proveedor: proveedor2).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P008'
				nom: 'Queso'
				precio: 1800
				cat: 'L�cteos'
				sMin: 3
				stock: 12
				proveedor: proveedor2).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P009'
				nom: 'Pan'
				precio: 400
				cat: 'Panader�a'
				sMin: 10
				stock: 40
				proveedor: proveedor2).
	supermercado agregarProductoVenta: (Producto
				crearProductoId: 'P010'
				nom: 'Sal'
				precio: 200
				cat: 'Almac�n'
				sMin: 2
				stock: 35
				proveedor: proveedor2).

	"Clientes"
	cliente1 := Cliente
				crearClienteId: 'C001'
				nom: 'Mar�a'
				dni: '30111222'
				tel: '1133224455'.
	cliente2 := Cliente
				crearClienteId: 'C002'
				nom: 'Juan'
				dni: '30111333'
				tel: '1133556677'.
	cliente3 := Cliente
				crearClienteId: 'C003'
				nom: 'Ana'
				dni: '30111444'
				tel: '1133445566'.
	supermercado agregarCliente: cliente1.
	supermercado agregarCliente: cliente2.
	supermercado agregarCliente: cliente3.


	"Empleados"
	supermercado agregarEmpleado: (Empleado
				crearEmpleadoNom: 'Luis'
				dni: '20987654'
				telefono: '1133557799'
				id: 'E001'
				cargo: 'Cajero'
				salario: 200000
				fecha: '2023-01-15').
	supermercado agregarEmpleado: (Empleado
				crearEmpleadoNom: 'Paula'
				dni: '20987777'
				telefono: '1133008899'
				id: 'E002'
				cargo: 'Repositor'
				salario: 180000
				fecha: '2023-06-10').


	"Tipos de pago"
	tipoPago1 := Tipo_Pago
				crearTipoPagoId: 'T001'
				detalle: 'Efectivo'
				descuento: 10.
	tipoPago2 := Tipo_Pago
				crearTipoPagoId: 'T002'
				detalle: 'Tarjeta de Cr�dito'
				descuento: 5.

	"Caja"
	caja := Caja crearCajaId: 'CAJ1'.
	caja
		registrarTipoPagoId: tipoPago1 verIdTipoPago
		det: tipoPago1 verDetalle
		desc: tipoPago1 verDescuento.
	caja
		registrarTipoPagoId: tipoPago2 verIdTipoPago
		det: tipoPago2 verDetalle
		desc: tipoPago2 verDescuento.
	supermercado agregarCaja: caja.


	"Venta 1"
	venta1 := Venta
				crearVentaId: 'V001'
				fecha: Date today
				total: 2500
				idCliente: cliente1 verId.
	venta1 agregarVentaProducto: 'P001' cant: 1.
	venta1 agregarVentaProducto: 'P002' cant: 1.
	supermercado agregarVenta: venta1.

	"Factura 1"
	caja
		registrarFacturaId: 'F001'
		nomSupermercado: supermercado verNombre
		dniCliente: cliente1 verDni
		idTpago: tipoPago1 verIdTipoPago
		idEmpleado: 'E001'
		idVenta: venta1 verId
		infoProductosVendidos: venta1 verInfoProductosVendidos
		importeT: venta1 verTotal.

	"Venta 2"
	venta2 := Venta
				crearVentaId: 'V002'
				fecha: Date today
				total: 2800
				idCliente: cliente2 verId.
	venta2 agregarVentaProducto: 'P003' cant: 1.
	venta2 agregarVentaProducto: 'P006' cant: 2.
	supermercado agregarVenta: venta2.

	"Factura 2"
	caja
		registrarFacturaId: 'F002'
		nomSupermercado: supermercado verNombre
		dniCliente: cliente2 verDni
		idTpago: tipoPago2 verIdTipoPago
		idEmpleado: 'E001'
		idVenta: venta2 verId
		infoProductosVendidos: venta2 verInfoProductosVendidos
		importeT: venta2 verTotal.
	self mostrarMenu!

mostrarMenu
    | opcion continuar |
    continuar := true.
    [ continuar ] whileTrue: [
	Transcript clear.
        Transcript show: '--- MENU PRINCIPAL ---'; cr.
	Transcript show: '1. Submen� de creaci�n (Cliente, Empleado, Proveedor, Producto, Caja y TipoPago)'; cr.
        Transcript show: '2. Buscar producto por ID'; cr.
        Transcript show: '3. Ver productos por proveedor'; cr.
	Transcript show: '4. Estadisticas del Negocio'; cr.
	Transcript show: '5. Realizar Venta'; cr.
        Transcript show: '6. Salir'; cr.

        opcion := Prompter prompt: 'Ingrese opci�n (1-4)'.

        opcion = '1' ifTrue: [ self mostrarSubmenuCreacion ].
        opcion = '2' ifTrue: [ self buscarProducto ].
        opcion = '3' ifTrue: [ self verProductosPorProveedor ].
	opcion = '4' ifTrue: [ self mostrarSubmenuEstadistica ].
	opcion = '5' ifTrue: [ self ventaAlPublico ].
        opcion = '6' ifTrue: [ continuar := false ].
	
    ].
	!

mostrarSubmenuCreacion
	| opcion continuar |
	 continuar := true.
	[ continuar ] whileTrue: [
        Transcript clear.
        Transcript show: '--- SUBMEN� DE CREACI�N ---'; cr.
        Transcript show: '1. Crear cliente'; cr.
        Transcript show: '2. Crear empleado'; cr.
        Transcript show: '3. Crear proveedor'; cr.
        Transcript show: '4. Crear producto'; cr.
        Transcript show: '5. Crear tipo de pago'; cr.
        Transcript show: '6. Crear caja'; cr.
        Transcript show: '7. Volver al men� principal'; cr.

        opcion := Prompter prompt: 'Ingrese opci�n (1-7)'.

        opcion = '1' ifTrue: [ self crearCliente ].
        opcion = '2' ifTrue: [ self crearEmpleado ].
        opcion = '3' ifTrue: [ self crearProveedor ].
        opcion = '4' ifTrue: [ self crearproducto ].
        opcion = '5' ifTrue: [ self crearTipoPago ].
        opcion = '6' ifTrue: [ self crearCaja ].
        opcion = '7' ifTrue: [ continuar := false ].
    ].
	!

mostrarSubmenuEstadistica
	| opcion continuar |
	 continuar := true.
	[ continuar ] whileTrue: [
        Transcript clear.
        Transcript show: '--- SUBMEN� DE Estadisticas ---'; cr.
        Transcript show: '1. Stock por Categoria'; cr.
        Transcript show: '2. Cantidad de Ventas por Tipo de Pago'; cr.
        Transcript show: '3. Productos mas Vendidos'; cr.
        Transcript show: '4. Recaudacion de una Caja por ID'; cr.
        Transcript show: '5. Volver al men� principal'; cr.

        opcion := Prompter prompt: 'Ingrese opci�n (1-5)'.

        opcion = '1' ifTrue: [ self  stockPorCategoria ].
        opcion = '2' ifTrue: [ self ventasPorTipoPago ].
        opcion = '3' ifTrue: [ self productosMasVendidos ].
        opcion = '4' ifTrue: [ self verRecaudacionCaja ].
        opcion = '5' ifTrue: [ continuar := false ].
    ].
	!

productosMasVendidos
	| dict cajas facturas info id cantidad productoNombre |
	dict := Dictionary new.
	cajas := supermercado verListaCajas.
	cajas do: 
			[:caja |
			facturas := caja retornarListaFactura.
			facturas do: 
					[:factura |
					info := factura verInfoProductosVendidos.
					info keysAndValuesDo: 
							[:idProd :cant |
							cantidad := dict at: idProd ifAbsent: [0].
							dict at: idProd put: cantidad + cant]]].
	dict keysAndValuesDo: 
			[:idProd :totalVendidas |
			productoNombre := (supermercado buscarProductoPorId: idProd) verNombre.
			Transcript
				show: 'Producto: ' , productoNombre , '  Vendidos: ' , totalVendidas printString;
				cr].
	Prompter prompt: 'Presione ENTER para continuar'.
	Transcript clear.!

stockPorCategoria
	| dict productos categoria totalStock |
	dict := Dictionary new.
	productos := supermercado verListProductoVenta.
	productos do: 
			[:prod |
			categoria := prod verCategoria.
			totalStock := dict at: categoria ifAbsent: [0].
			dict at: categoria put: totalStock + prod verStock].
	dict keysAndValuesDo: 
			[:cat :stk |
			Transcript
				show: 'Categor�a: ' , cat , '  Stock total: ' , stk printString;
				cr].
	Prompter prompt: 'Presione ENTER para continuar'.
	Transcript clear.!

ventaAlPublico
    | clienteId empleadoId cajaId tipoPagoId resultado |

    clienteId := Prompter prompt: 'Ingrese ID del cliente'.
    empleadoId := Prompter prompt: 'Ingrese ID del empleado'.
    cajaId := Prompter prompt: 'Ingrese ID de la caja'.
    tipoPagoId := Prompter prompt: 'Ingrese ID del tipo de pago'.

    resultado := supermercado procesarVentaConCliente: clienteId 
        empleado: empleadoId 
        caja: cajaId 
        tipoPago: tipoPagoId.

    resultado isString
        ifTrue: [ Transcript show: resultado; cr ]
        ifFalse: [ Transcript show: 'Venta realizada con �xito. Total: ', resultado printString; cr ].!

ventasPorTipoPago
	| dict cajas facturas idPago cantidad tipoPago detalle |
	dict := Dictionary new.
	cajas := supermercado verListaCajas.
	cajas do: 
			[:caja |
			facturas := caja retornarListaFactura.
			facturas do: 
					[:factura |
					idPago := factura verIdTipoPago.
					cantidad := dict at: idPago ifAbsent: [0].
					dict at: idPago put: cantidad + 1]].
	dict keysAndValuesDo: 
			[:id :cant |
			| cajaConTipo |
			cajaConTipo := supermercado verListaCajas detect: [:c | (c retornarTipoPago: id) notNil]
						ifNone: [nil].

			tipoPago := cajaConTipo isNil ifTrue: [nil] ifFalse: [cajaConTipo retornarTipoPago: id].

			detalle := tipoPago isNil ifTrue: ['Desconocido'] ifFalse: [tipoPago verDetalle].
			Transcript
				show: 'Tipo de pago: ' , detalle , '  Ventas: ' , cant printString;
				cr].
	Prompter prompt: 'Presione ENTER para continuar'.
	Transcript clear.!

verProductosPorProveedor
    | nombreProveedor proveedor productos |
    nombreProveedor := Prompter prompt: 'Razon social del proveedor'.
    proveedor := supermercado verListProveedor detect: [ :p | p verRazonSocial = nombreProveedor ] ifNone: [ nil ].
    proveedor isNil ifTrue: [
        Transcript show: 'Proveedor no encontrado'; cr
    ] ifFalse: [
        productos := supermercado productosPorProveedor: proveedor.
        productos isEmpty
            ifTrue: [ Transcript show: 'No hay productos para ese proveedor'; cr ]
            ifFalse: [
                productos do: [ :p | Transcript show: p verNombre; cr ].
            ].
    ].!

verRecaudacionCaja
    | idCaja caja |
    
    idCaja := Prompter prompt: 'Ingrese ID de la caja'.
    caja := supermercado buscarCajaPorId: idCaja.

    caja isNil
        ifTrue: [ Transcript show: 'Caja no encontrada.' ]
        ifFalse: [
	    Transcript show: 'Recaudaci�n total: $', caja verRecaudacion printString; cr.
        ].
	Prompter prompt: 'Presione ENTER para continuar'.
	Transcript clear.! !
!MenuPrincipal categoriesFor: #buscarProducto!public! !
!MenuPrincipal categoriesFor: #crearCaja!public! !
!MenuPrincipal categoriesFor: #crearCliente!public! !
!MenuPrincipal categoriesFor: #crearEmpleado!public! !
!MenuPrincipal categoriesFor: #crearproducto!public! !
!MenuPrincipal categoriesFor: #crearProveedor!public! !
!MenuPrincipal categoriesFor: #crearTipoPago!public! !
!MenuPrincipal categoriesFor: #iniciarMenu!public! !
!MenuPrincipal categoriesFor: #mostrarMenu!public! !
!MenuPrincipal categoriesFor: #mostrarSubmenuCreacion!public! !
!MenuPrincipal categoriesFor: #mostrarSubmenuEstadistica!public! !
!MenuPrincipal categoriesFor: #productosMasVendidos!public! !
!MenuPrincipal categoriesFor: #stockPorCategoria!public! !
!MenuPrincipal categoriesFor: #ventaAlPublico!public! !
!MenuPrincipal categoriesFor: #ventasPorTipoPago!public! !
!MenuPrincipal categoriesFor: #verProductosPorProveedor!public! !
!MenuPrincipal categoriesFor: #verRecaudacionCaja!public! !

