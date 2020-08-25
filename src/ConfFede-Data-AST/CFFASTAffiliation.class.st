Class {
	#name : #CFFASTAffiliation,
	#superclass : #Object,
	#instVars : [
		'affiliation'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTAffiliation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ affiliation = anObject affiliation
]

{ #category : #visiting }
CFFASTAffiliation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTAffiliation: self
]

{ #category : #accessing }
CFFASTAffiliation >> affiliation [
	^ affiliation
]

{ #category : #accessing }
CFFASTAffiliation >> affiliation: anObject [
	affiliation := anObject
]

{ #category : #comparing }
CFFASTAffiliation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ affiliation hash
]
