Class {
	#name : #CFFASTDoubleCaracteristic,
	#superclass : #Object,
	#instVars : [
		'firstCaracteristic',
		'secondCaracteristic'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTDoubleCaracteristic >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ firstCaracteristic = anObject firstCaracteristic
		and: [ secondCaracteristic = anObject secondCaracteristic ]
]

{ #category : #visiting }
CFFASTDoubleCaracteristic >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTDoubleCaracteristic: self
]

{ #category : #accessing }
CFFASTDoubleCaracteristic >> caracteristic [
	^ caracteristic
]

{ #category : #accessing }
CFFASTDoubleCaracteristic >> caracteristic: anObject [
	caracteristic := anObject
]

{ #category : #accessing }
CFFASTDoubleCaracteristic >> firstCaracteristic [
	^ firstCaracteristic
]

{ #category : #accessing }
CFFASTDoubleCaracteristic >> firstCaracteristic: anObject [
	firstCaracteristic := anObject
]

{ #category : #comparing }
CFFASTDoubleCaracteristic >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ firstCaracteristic hash bitXor: secondCaracteristic hash
]

{ #category : #accessing }
CFFASTDoubleCaracteristic >> secondCaracteristic [
	^ secondCaracteristic
]

{ #category : #accessing }
CFFASTDoubleCaracteristic >> secondCaracteristic: anObject [
	secondCaracteristic := anObject
]
