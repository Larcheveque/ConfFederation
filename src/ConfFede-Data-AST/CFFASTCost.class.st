Class {
	#name : #CFFASTCost,
	#superclass : #Object,
	#instVars : [
		'number'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTCost >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ number = anObject number
]

{ #category : #visiting }
CFFASTCost >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTCost: self
]

{ #category : #comparing }
CFFASTCost >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ number hash
]

{ #category : #accessing }
CFFASTCost >> number [
	^ number
]

{ #category : #accessing }
CFFASTCost >> number: anObject [
	number := anObject
]
