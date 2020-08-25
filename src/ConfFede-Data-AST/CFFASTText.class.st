Class {
	#name : #CFFASTText,
	#superclass : #Object,
	#instVars : [
		'text'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTText >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ text = anObject text
]

{ #category : #visiting }
CFFASTText >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTText: self
]

{ #category : #comparing }
CFFASTText >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ text hash
]

{ #category : #accessing }
CFFASTText >> text [
	^ text
]

{ #category : #accessing }
CFFASTText >> text: anObject [
	text := anObject
]
