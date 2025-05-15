"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'nombre dni telefono'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{515FBF67-9B38-40B1-8611-0DE43D81CC59}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

iniPersonaNom: unNom dni: unDni telefono: unTel
nombre:= unNom.
dni:= unDni.
telefono:= unTel.!

modNombre:unNom
nombre:=unNom.!

modTelefono: unTelefono
telefono:=unTelefono.!

verDni
^dni.!

verNombre
^nombre.!

verTelefono
^telefono.! !
!Persona categoriesFor: #iniPersonaNom:dni:telefono:!public! !
!Persona categoriesFor: #modNombre:!public! !
!Persona categoriesFor: #modTelefono:!public! !
!Persona categoriesFor: #verDni!public! !
!Persona categoriesFor: #verNombre!public! !
!Persona categoriesFor: #verTelefono!public! !

!Persona class methodsFor!

crearPersonaNom: unNom dni: unDni telefono: unTel
^(self new) iniPersonaNom: unNom dni: unDni telefono: unTel.! !
!Persona class categoriesFor: #crearPersonaNom:dni:telefono:!public! !

