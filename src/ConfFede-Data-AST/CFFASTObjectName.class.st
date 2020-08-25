Class {
	#name : #CFFASTObjectName,
	#superclass : #Object,
	#instVars : [
		'objectName'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTObjectName >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ objectName = anObject objectName
]

{ #category : #visiting }
CFFASTObjectName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTObjectName: self
]

{ #category : #comparing }
CFFASTObjectName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ objectName hash
]

{ #category : #accessing }
CFFASTObjectName >> objectName [
	^ objectName
]

{ #category : #accessing }
CFFASTObjectName >> objectName: anObject [
	objectName := anObject
]
