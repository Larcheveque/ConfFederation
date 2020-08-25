Class {
	#name : #CFFASTEquipment,
	#superclass : #Object,
	#instVars : [
		'equipment'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTEquipment >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ equipment = anObject equipment
]

{ #category : #visiting }
CFFASTEquipment >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTEquipment: self
]

{ #category : #accessing }
CFFASTEquipment >> equipment [
	^ equipment
]

{ #category : #accessing }
CFFASTEquipment >> equipment: anObject [
	equipment := anObject
]

{ #category : #comparing }
CFFASTEquipment >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ equipment hash
]
