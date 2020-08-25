Class {
	#name : #CFFASTName,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTName >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ name = anObject name
]

{ #category : #visiting }
CFFASTName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTName: self
]

{ #category : #comparing }
CFFASTName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ name hash
]

{ #category : #accessing }
CFFASTName >> name [
	^ name
]

{ #category : #accessing }
CFFASTName >> name: anObject [
	name := anObject
]
