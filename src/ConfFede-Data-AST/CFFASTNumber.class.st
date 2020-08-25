Class {
	#name : #CFFASTNumber,
	#superclass : #Object,
	#instVars : [
		'number'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTNumber >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ number = anObject number
]

{ #category : #visiting }
CFFASTNumber >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTNumber: self
]

{ #category : #comparing }
CFFASTNumber >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ number hash
]

{ #category : #accessing }
CFFASTNumber >> number [
	^ number
]

{ #category : #accessing }
CFFASTNumber >> number: anObject [
	number := anObject
]
