Class {
	#name : #CFFASTSkill,
	#superclass : #Object,
	#instVars : [
		'skillName',
		'skillArgument'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSkill >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ skillName = anObject skillName
		and: [ skillArgument = anObject skillArgument ]
]

{ #category : #visiting }
CFFASTSkill >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSkill: self
]

{ #category : #comparing }
CFFASTSkill >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ skillName hash bitXor: skillArgument hash
]

{ #category : #accessing }
CFFASTSkill >> skillArgument [
	^ skillArgument
]

{ #category : #accessing }
CFFASTSkill >> skillArgument: anObject [
	skillArgument := anObject
]

{ #category : #accessing }
CFFASTSkill >> skillName [
	^ skillName
]

{ #category : #accessing }
CFFASTSkill >> skillName: anObject [
	skillName := anObject
]
