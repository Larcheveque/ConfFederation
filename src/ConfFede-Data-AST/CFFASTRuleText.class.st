Class {
	#name : #CFFASTRuleText,
	#superclass : #Object,
	#instVars : [
		'ruleText'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTRuleText >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ ruleText = anObject ruleText
]

{ #category : #visiting }
CFFASTRuleText >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTRuleText: self
]

{ #category : #comparing }
CFFASTRuleText >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ruleText hash
]

{ #category : #accessing }
CFFASTRuleText >> ruleText [
	^ ruleText
]

{ #category : #accessing }
CFFASTRuleText >> ruleText: anObject [
	ruleText := anObject
]
