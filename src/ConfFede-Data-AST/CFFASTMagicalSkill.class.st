Class {
	#name : #CFFASTMagicalSkill,
	#superclass : #Object,
	#instVars : [
		'number'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTMagicalSkill >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ number = anObject number
]

{ #category : #visiting }
CFFASTMagicalSkill >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTMagicalSkill: self
]

{ #category : #comparing }
CFFASTMagicalSkill >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ number hash
]

{ #category : #accessing }
CFFASTMagicalSkill >> number [
	^ number
]

{ #category : #accessing }
CFFASTMagicalSkill >> number: anObject [
	number := anObject
]
