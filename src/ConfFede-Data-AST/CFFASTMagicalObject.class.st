Class {
	#name : #CFFASTMagicalObject,
	#superclass : #Object,
	#instVars : [
		'objectName',
		'number',
		'ruleText'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTMagicalObject >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ objectName = anObject objectName
		and: [ number = anObject number and: [ ruleText = anObject ruleText ] ]
]

{ #category : #visiting }
CFFASTMagicalObject >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTMagicalObject: self
]

{ #category : #comparing }
CFFASTMagicalObject >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ objectName hash bitXor: (number hash bitXor: ruleText hash)
]

{ #category : #accessing }
CFFASTMagicalObject >> number [
	^ number
]

{ #category : #accessing }
CFFASTMagicalObject >> number: anObject [
	number := anObject
]

{ #category : #accessing }
CFFASTMagicalObject >> objectName [
	^ objectName
]

{ #category : #accessing }
CFFASTMagicalObject >> objectName: anObject [
	objectName := anObject
]

{ #category : #accessing }
CFFASTMagicalObject >> ruleText [
	^ ruleText
]

{ #category : #accessing }
CFFASTMagicalObject >> ruleText: anObject [
	ruleText := anObject
]
