Class {
	#name : #CFFASTCaracteristic,
	#superclass : #Object,
	#instVars : [
		'caracteristic'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTCaracteristic >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ caracteristic = anObject caracteristic
]

{ #category : #visiting }
CFFASTCaracteristic >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTCaracteristic: self
]

{ #category : #accessing }
CFFASTCaracteristic >> caracteristic [
	^ caracteristic
]

{ #category : #accessing }
CFFASTCaracteristic >> caracteristic: anObject [
	caracteristic := anObject
]

{ #category : #comparing }
CFFASTCaracteristic >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ caracteristic hash
]
