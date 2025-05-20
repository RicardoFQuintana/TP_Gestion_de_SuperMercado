"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Empleado
	instanceVariableNames: 'idEmpleado cargo salario fechaIngresa'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empleado guid: (GUID fromString: '{2A767A85-61C7-4EC8-A73B-99BABD053B8B}')!
Empleado comment: ''!
!Empleado categoriesForClass!Kernel-Objects! !
!Empleado methodsFor!

initEmpleadoNom: unNom dni: unDni telefono: unTel id: unId cargo: unCargo salario: unSalario fecha: unaFecha
    idEmpleado := unId.
    cargo := unCargo.
    salario := unSalario.
    fechaIngresa := unaFecha.
    super initPersonaNom:unNom dni:unDni telefono:unTel.!

modCargo: unCargo
    ^cargo := unCargo.!

modDni: unDni
    ^dni := unDni.!

modFechaIngresa: unaFecha
    ^fechaIngresa := unaFecha.!

modIdEmpleado: unId
    ^idEmpleado := unId.!

modNombre: unNom
    ^nombre := unNom.!

modSalario: unSalario
    ^salario := unSalario.!

modTelefono: unTel
    ^telefono := unTel.!

verCargo
    ^cargo.!

verDni
    ^dni.!

verFechaIngresa
    ^fechaIngresa.!

verIdEmpleado
    ^idEmpleado.!

verNombre
    ^nombre.!

verSalario
    ^salario.!

verTelefono
    ^telefono.! !
!Empleado categoriesFor: #initEmpleadoNom:dni:telefono:id:cargo:salario:fecha:!public! !
!Empleado categoriesFor: #modCargo:!public! !
!Empleado categoriesFor: #modDni:!public! !
!Empleado categoriesFor: #modFechaIngresa:!public! !
!Empleado categoriesFor: #modIdEmpleado:!public! !
!Empleado categoriesFor: #modNombre:!public! !
!Empleado categoriesFor: #modSalario:!public! !
!Empleado categoriesFor: #modTelefono:!public! !
!Empleado categoriesFor: #verCargo!public! !
!Empleado categoriesFor: #verDni!public! !
!Empleado categoriesFor: #verFechaIngresa!public! !
!Empleado categoriesFor: #verIdEmpleado!public! !
!Empleado categoriesFor: #verNombre!public! !
!Empleado categoriesFor: #verSalario!public! !
!Empleado categoriesFor: #verTelefono!public! !

!Empleado class methodsFor!

crearEmpleadoNom: unNom dni: unDni telefono: unTel id: unId cargo: unCargo salario: unSalario fecha: unaFecha
    ^self new initEmpleadoNom: unNom dni: unDni telefono: unTel id: unId cargo: unCargo salario: unSalario fecha: unaFecha! !
!Empleado class categoriesFor: #crearEmpleadoNom:dni:telefono:id:cargo:salario:fecha:!public! !

