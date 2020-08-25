Class {
	#name : #CFFASTEquipments,
	#superclass : #Object,
	#instVars : [
		'equipments'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTEquipments >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ equipments = anObject equipments
]

{ #category : #visiting }
CFFASTEquipments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTEquipments: self
]

{ #category : #accessing }
CFFASTEquipments >> equipments [
	^ equipments
]

{ #category : #accessing }
CFFASTEquipments >> equipments: anObject [
	equipments := anObject
]

{ #category : #comparing }
CFFASTEquipments >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ equipments hash
]
