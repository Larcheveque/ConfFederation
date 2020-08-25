Class {
	#name : #CFFASTSkills,
	#superclass : #Object,
	#instVars : [
		'skills'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSkills >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ skills = anObject skills
]

{ #category : #visiting }
CFFASTSkills >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSkills: self
]

{ #category : #comparing }
CFFASTSkills >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ skills hash
]

{ #category : #accessing }
CFFASTSkills >> skills [
	^ skills
]

{ #category : #accessing }
CFFASTSkills >> skills: anObject [
	skills := anObject
]
