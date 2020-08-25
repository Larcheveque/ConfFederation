Class {
	#name : #CFFASTTaille,
	#superclass : #Object,
	#instVars : [
		'taille'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTTaille >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ taille = anObject taille
]

{ #category : #visiting }
CFFASTTaille >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTTaille: self
]

{ #category : #comparing }
CFFASTTaille >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ taille hash
]

{ #category : #accessing }
CFFASTTaille >> taille [
	^ taille
]

{ #category : #accessing }
CFFASTTaille >> taille: anObject [
	taille := anObject
]
