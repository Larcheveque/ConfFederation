Class {
	#name : #CFFASTElement,
	#superclass : #Object,
	#instVars : [
		'element'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTElement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ element = anObject element
]

{ #category : #visiting }
CFFASTElement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTElement: self
]

{ #category : #accessing }
CFFASTElement >> element [
	^ element
]

{ #category : #accessing }
CFFASTElement >> element: anObject [
	element := anObject
]

{ #category : #comparing }
CFFASTElement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ element hash
]
