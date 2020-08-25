Class {
	#name : #CFFASTSkillName,
	#superclass : #Object,
	#instVars : [
		'skillName'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSkillName >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ skillName = anObject skillName
]

{ #category : #visiting }
CFFASTSkillName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSkillName: self
]

{ #category : #comparing }
CFFASTSkillName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ skillName hash
]

{ #category : #accessing }
CFFASTSkillName >> skillName [
	^ skillName
]

{ #category : #accessing }
CFFASTSkillName >> skillName: anObject [
	skillName := anObject
]
