"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'nombre dni telefono'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{635C4E48-9035-4A30-86EB-8E4EEE9C3D97}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

initPersonaNom:unNom dni:unDni telefono:unTelefono
nombre:=unNom.
dni:=unDni.
telefono:=unTelefono.!

modDni:unDni
 ^dni:=unDni.!

modNombre: unNom
^nombre:=unNom!

modTelefono:unTelefono
^telefono:=unTelefono.!

verDni
^dni.!

verNombre
^nombre.!

verTelefono
^telefono.
! !
!Persona categoriesFor: #initPersonaNom:dni:telefono:!public! !
!Persona categoriesFor: #modDni:!public! !
!Persona categoriesFor: #modNombre:!public! !
!Persona categoriesFor: #modTelefono:!public! !
!Persona categoriesFor: #verDni!public! !
!Persona categoriesFor: #verNombre!public! !
!Persona categoriesFor: #verTelefono!public! !

!Persona class methodsFor!

crearPersonaNom:unNombre dni:unDni telefono:unTelefono
^(self new) initPersonaNom:unNombre dni:unDni telefono:unTelefono.! !
!Persona class categoriesFor: #crearPersonaNom:dni:telefono:!public! !

