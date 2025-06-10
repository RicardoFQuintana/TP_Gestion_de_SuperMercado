"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Producto
	instanceVariableNames: 'idProducto nombre precio categoria stockMinimo stock proveedor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Producto guid: (GUID fromString: '{C533238C-FEB2-4F3F-9307-CC1F2AF8BA1C}')!
Producto comment: ''!
!Producto categoriesForClass!Kernel-Objects! !
!Producto methodsFor!

iniProductoId: unId nom: unNom precio: unPrecio cat: unaCat sMin: unStockMin stock: unStock proveedor: unProveedor
idProducto:=unId.
nombre:=unNom.
precio:=unPrecio.
categoria:=unaCat.
stockMinimo:=unStockMin.
stock:=unStock.
proveedor := unProveedor.!

modCategoria:unaCat
categoria:=unaCat.!

modIdProducto:unId
idProducto:=unId.!

modNombre:unNom
nombre:=unNom.!

modPrecio:unPrecio
precio:=unPrecio.!

modProveedor: unProveedor
    proveedor := unProveedor.!

modStock:cantidad
stock := stock-cantidad.!

modStockMinimo:unStockMin
stockMinimo:=unStockMin.!

mostrarInformacion
    Transcript show: 'Id: ', self verIdProducto ; cr.	
    Transcript show: 'Nombre: ', self verNombre; cr.
    Transcript show: 'Precio: $', self verPrecio printString; cr.
    Transcript show: 'Categoría: ', self verCategoria ; cr.
    Transcript show: 'Stock: ', self verStock printString; cr.
    Transcript show: 'Stock Mínimo: ', self verStockMinimo printString; cr.
    Transcript show: 'Proveedor: ', self verProveedor verNombre; cr.
    Transcript show: '-------------------------'; cr.!

verCategoria
^categoria.!

verIdProducto
^idProducto.!

verNombre
^nombre.!

verPrecio
^precio.!

verProveedor
    ^proveedor.!

verStock
^stock.!

verStockMinimo
^stockMinimo.! !
!Producto categoriesFor: #iniProductoId:nom:precio:cat:sMin:stock:proveedor:!public! !
!Producto categoriesFor: #modCategoria:!public! !
!Producto categoriesFor: #modIdProducto:!public! !
!Producto categoriesFor: #modNombre:!public! !
!Producto categoriesFor: #modPrecio:!public! !
!Producto categoriesFor: #modProveedor:!public! !
!Producto categoriesFor: #modStock:!public! !
!Producto categoriesFor: #modStockMinimo:!public! !
!Producto categoriesFor: #mostrarInformacion!public! !
!Producto categoriesFor: #verCategoria!public! !
!Producto categoriesFor: #verIdProducto!public! !
!Producto categoriesFor: #verNombre!public! !
!Producto categoriesFor: #verPrecio!public! !
!Producto categoriesFor: #verProveedor!public! !
!Producto categoriesFor: #verStock!public! !
!Producto categoriesFor: #verStockMinimo!public! !

!Producto class methodsFor!

crearProductoId:unId nom:unNom precio:unPrecio cat:unaCat sMin:unStockMin stock: unStock proveedor: unProveedor
^(self  new )iniProductoId: unId nom: unNom precio: unPrecio cat: unaCat sMin: unStockMin stock: unStock proveedor: unProveedor.! !
!Producto class categoriesFor: #crearProductoId:nom:precio:cat:sMin:stock:proveedor:!public! !

