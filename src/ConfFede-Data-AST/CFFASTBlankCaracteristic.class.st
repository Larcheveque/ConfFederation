Class {
	#name : #CFFASTBlankCaracteristic,
	#superclass : #Object,
	#instVars : [
		'blankCaracteristic'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTBlankCaracteristic >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ blankCaracteristic = anObject blankCaracteristic
]

{ #category : #visiting }
CFFASTBlankCaracteristic >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTBlankCaracteristic: self
]

{ #category : #accessing }
CFFASTBlankCaracteristic >> blankCaracteristic [
	^ blankCaracteristic
]

{ #category : #accessing }
CFFASTBlankCaracteristic >> blankCaracteristic: anObject [
	blankCaracteristic := anObject
]

{ #category : #comparing }
CFFASTBlankCaracteristic >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ blankCaracteristic hash
]
