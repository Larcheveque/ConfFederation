Class {
	#name : #CFFASTRuleName,
	#superclass : #Object,
	#instVars : [
		'ruleName'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTRuleName >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ ruleName = anObject ruleName
]

{ #category : #visiting }
CFFASTRuleName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTRuleName: self
]

{ #category : #comparing }
CFFASTRuleName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ruleName hash
]

{ #category : #accessing }
CFFASTRuleName >> ruleName [
	^ ruleName
]

{ #category : #accessing }
CFFASTRuleName >> ruleName: anObject [
	ruleName := anObject
]
