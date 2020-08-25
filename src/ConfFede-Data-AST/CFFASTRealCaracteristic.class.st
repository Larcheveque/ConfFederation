Class {
	#name : #CFFASTRealCaracteristic,
	#superclass : #Object,
	#instVars : [
		'realCaracteristic'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTRealCaracteristic >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ realCaracteristic = anObject realCaracteristic
]

{ #category : #visiting }
CFFASTRealCaracteristic >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTRealCaracteristic: self
]

{ #category : #comparing }
CFFASTRealCaracteristic >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ realCaracteristic hash
]

{ #category : #accessing }
CFFASTRealCaracteristic >> realCaracteristic [
	^ realCaracteristic
]

{ #category : #accessing }
CFFASTRealCaracteristic >> realCaracteristic: anObject [
	realCaracteristic := anObject
]
