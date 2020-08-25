Class {
	#name : #CFFASTSkillText,
	#superclass : #Object,
	#instVars : [
		'skillText'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSkillText >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ skillText = anObject skillText
]

{ #category : #visiting }
CFFASTSkillText >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSkillText: self
]

{ #category : #comparing }
CFFASTSkillText >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ skillText hash
]

{ #category : #accessing }
CFFASTSkillText >> skillText [
	^ skillText
]

{ #category : #accessing }
CFFASTSkillText >> skillText: anObject [
	skillText := anObject
]
