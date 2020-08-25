Class {
	#name : #CFFASTImplicitSkills,
	#superclass : #Object,
	#instVars : [
		'skills'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTImplicitSkills >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ skills = anObject skills
]

{ #category : #visiting }
CFFASTImplicitSkills >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTImplicitSkills: self
]

{ #category : #comparing }
CFFASTImplicitSkills >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ skills hash
]

{ #category : #accessing }
CFFASTImplicitSkills >> skills [
	^ skills
]

{ #category : #accessing }
CFFASTImplicitSkills >> skills: anObject [
	skills := anObject
]
