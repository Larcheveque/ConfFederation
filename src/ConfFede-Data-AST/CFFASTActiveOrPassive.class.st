Class {
	#name : #CFFASTActiveOrPassive,
	#superclass : #Object,
	#instVars : [
		'activeOrPassive'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTActiveOrPassive >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ activeOrPassive = anObject activeOrPassive
]

{ #category : #visiting }
CFFASTActiveOrPassive >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTActiveOrPassive: self
]

{ #category : #accessing }
CFFASTActiveOrPassive >> activeOrPassive [
	^ activeOrPassive
]

{ #category : #accessing }
CFFASTActiveOrPassive >> activeOrPassive: anObject [
	activeOrPassive := anObject
]

{ #category : #comparing }
CFFASTActiveOrPassive >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ activeOrPassive hash
]
