Class {
	#name : #CFFASTContent,
	#superclass : #Object,
	#instVars : [
		'contents'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTContent >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ contents = anObject contents
]

{ #category : #visiting }
CFFASTContent >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTContent: self
]

{ #category : #accessing }
CFFASTContent >> contents [
	^ contents
]

{ #category : #accessing }
CFFASTContent >> contents: anObject [
	contents := anObject
]

{ #category : #comparing }
CFFASTContent >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ contents hash
]
