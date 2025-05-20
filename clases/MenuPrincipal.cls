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

crearEmpleado
    | n d t i c s f emp |
    n := Prompter prompt: 'Nombre'.
    d := Prompter prompt: 'DNI'.
    t := Prompter prompt: 'Teléfono'.
    i := Prompter prompt: 'ID'.
    c:= Prompter prompt: 'Cargo'.
    s := (Prompter prompt: 'Salario') asNumber.
    f := Prompter prompt: 'Fecha ingreso (YYYY/MM/DD)'.
    emp := Empleado crearEmpleadoNom:n dni: d telefono: t id: i cargo: c salario: s fecha: f.
    supermercado agregarEmpleado: emp.
    Transcript show: 'Empleado agregado: ', emp verNombre; cr.!

crearproducto
    | n p c i  sM S pro proveedor |

    proveedor := supermercado verListProveedor first.  "Toma el proveedor precargado"
    supermercado agregarProveedor: proveedor.
    n := Prompter prompt: 'Nombre'.
    p := (Prompter prompt: 'Precio') asNumber.
    c := Prompter prompt: 'Categoria'.
    i := Prompter prompt: 'ID'.
    S := (Prompter prompt: 'Stock') asNumber.
    sM := (Prompter prompt: 'Stock Minimo') asNumber.
    pro := Producto crearProductoId:i nom: n precio: p cat: c sMin: sM stock: S proveedor: proveedor.
    supermercado agregarProductoVenta: pro.
    Transcript show: 'Producto agregado: ', pro verNombre; cr.!

iniciarMenu
    supermercado := SuperMecado crearSupermercadoNombre: 'SuperDemo' direccion: '5798 Av. Calchaquí'.
    supermercado agregarProveedor: (
        Proveedor crearProveedorId: '1' nom: 'Ricardo' dni: '11' tel: '11' cuit: '11' rsocial: 'Logistica' dire: 'Calle 1').
    self mostrarMenu.!

mostrarMenu
    | opcion continuar |
    continuar := true.
    [ continuar ] whileTrue: [
        Transcript show: '--- MENU PRINCIPAL ---'; cr.
        Transcript show: '1. Crear empleado'; cr.
        Transcript show: '2. Buscar producto por ID'; cr.
        Transcript show: '3. Ver productos por proveedor'; cr.
	Transcript show: '4. Crear producto'; cr.
        Transcript show: '5. Salir'; cr.

        opcion := Prompter prompt: 'Ingrese opción (1-5)'.

        opcion = '1' ifTrue: [ self crearEmpleado ].
        opcion = '2' ifTrue: [ self buscarProducto ].
        opcion = '3' ifTrue: [ self verProductosPorProveedor ].
        opcion = '4' ifTrue: [ self crearproducto ].
        opcion = '5' ifTrue: [ continuar := false ].
    ].!

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
    ].! !
!MenuPrincipal categoriesFor: #buscarProducto!public! !
!MenuPrincipal categoriesFor: #crearEmpleado!public! !
!MenuPrincipal categoriesFor: #crearproducto!public! !
!MenuPrincipal categoriesFor: #iniciarMenu!public! !
!MenuPrincipal categoriesFor: #mostrarMenu!public! !
!MenuPrincipal categoriesFor: #verProductosPorProveedor!public! !

