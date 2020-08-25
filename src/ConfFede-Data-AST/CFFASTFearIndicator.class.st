Class {
	#name : #CFFASTFearIndicator,
	#superclass : #Object,
	#instVars : [
		'fearIndicator'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTFearIndicator >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ fearIndicator = anObject fearIndicator
]

{ #category : #visiting }
CFFASTFearIndicator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTFearIndicator: self
]

{ #category : #accessing }
CFFASTFearIndicator >> fearIndicator [
	^ fearIndicator
]

{ #category : #accessing }
CFFASTFearIndicator >> fearIndicator: anObject [
	fearIndicator := anObject
]

{ #category : #comparing }
CFFASTFearIndicator >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ fearIndicator hash
]
