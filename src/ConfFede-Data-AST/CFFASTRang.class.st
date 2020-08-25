Class {
	#name : #CFFASTRang,
	#superclass : #Object,
	#instVars : [
		'rang'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTRang >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ rang = anObject rang
]

{ #category : #visiting }
CFFASTRang >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTRang: self
]

{ #category : #comparing }
CFFASTRang >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ rang hash
]

{ #category : #accessing }
CFFASTRang >> rang [
	^ rang
]

{ #category : #accessing }
CFFASTRang >> rang: anObject [
	rang := anObject
]
