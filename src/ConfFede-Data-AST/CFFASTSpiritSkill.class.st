Class {
	#name : #CFFASTSpiritSkill,
	#superclass : #Object,
	#instVars : [
		'element'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSpiritSkill >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ element = anObject element
]

{ #category : #visiting }
CFFASTSpiritSkill >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSpiritSkill: self
]

{ #category : #accessing }
CFFASTSpiritSkill >> element [
	^ element
]

{ #category : #accessing }
CFFASTSpiritSkill >> element: anObject [
	element := anObject
]

{ #category : #comparing }
CFFASTSpiritSkill >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ element hash
]
