Class {
	#name : #CFFASTSpecialRule,
	#superclass : #Object,
	#instVars : [
		'ruleName',
		'ruleText'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSpecialRule >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ ruleName = anObject ruleName and: [ ruleText = anObject ruleText ]
]

{ #category : #visiting }
CFFASTSpecialRule >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSpecialRule: self
]

{ #category : #comparing }
CFFASTSpecialRule >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ruleName hash bitXor: ruleText hash
]

{ #category : #accessing }
CFFASTSpecialRule >> ruleName [
	^ ruleName
]

{ #category : #accessing }
CFFASTSpecialRule >> ruleName: anObject [
	ruleName := anObject
]

{ #category : #accessing }
CFFASTSpecialRule >> ruleText [
	^ ruleText
]

{ #category : #accessing }
CFFASTSpecialRule >> ruleText: anObject [
	ruleText := anObject
]
