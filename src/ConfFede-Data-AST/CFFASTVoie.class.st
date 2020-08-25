Class {
	#name : #CFFASTVoie,
	#superclass : #Object,
	#instVars : [
		'voie'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTVoie >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ voie = anObject voie
]

{ #category : #visiting }
CFFASTVoie >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTVoie: self
]

{ #category : #comparing }
CFFASTVoie >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ voie hash
]

{ #category : #accessing }
CFFASTVoie >> voie [
	^ voie
]

{ #category : #accessing }
CFFASTVoie >> voie: anObject [
	voie := anObject
]
