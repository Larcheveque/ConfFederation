Class {
	#name : #CFFASTSkillArgument,
	#superclass : #Object,
	#instVars : [
		'skillArgument'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSkillArgument >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ skillArgument = anObject skillArgument
]

{ #category : #visiting }
CFFASTSkillArgument >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSkillArgument: self
]

{ #category : #comparing }
CFFASTSkillArgument >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ skillArgument hash
]

{ #category : #accessing }
CFFASTSkillArgument >> skillArgument [
	^ skillArgument
]

{ #category : #accessing }
CFFASTSkillArgument >> skillArgument: anObject [
	skillArgument := anObject
]
