Class {
	#name : #CFFASTSpecialRuleReference,
	#superclass : #Object,
	#instVars : [
		'ruleName',
		'number'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSpecialRuleReference >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ ruleName = anObject ruleName and: [ number = anObject number ]
]

{ #category : #visiting }
CFFASTSpecialRuleReference >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSpecialRuleReference: self
]

{ #category : #comparing }
CFFASTSpecialRuleReference >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ruleName hash bitXor: number hash
]

{ #category : #accessing }
CFFASTSpecialRuleReference >> number [
	^ number
]

{ #category : #accessing }
CFFASTSpecialRuleReference >> number: anObject [
	number := anObject
]

{ #category : #accessing }
CFFASTSpecialRuleReference >> ruleName [
	^ ruleName
]

{ #category : #accessing }
CFFASTSpecialRuleReference >> ruleName: anObject [
	ruleName := anObject
]
