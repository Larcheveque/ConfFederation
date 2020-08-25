Class {
	#name : #CFFASTKnownSkill,
	#superclass : #Object,
	#instVars : [
		'knownSkill'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTKnownSkill >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ knownSkill = anObject knownSkill
]

{ #category : #visiting }
CFFASTKnownSkill >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTKnownSkill: self
]

{ #category : #comparing }
CFFASTKnownSkill >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ knownSkill hash
]

{ #category : #accessing }
CFFASTKnownSkill >> knownSkill [
	^ knownSkill
]

{ #category : #accessing }
CFFASTKnownSkill >> knownSkill: anObject [
	knownSkill := anObject
]
