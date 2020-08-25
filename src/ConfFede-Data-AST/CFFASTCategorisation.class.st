Class {
	#name : #CFFASTCategorisation,
	#superclass : #Object,
	#instVars : [
		'champion',
		'rang',
		'affiliation'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTCategorisation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ champion = anObject champion
		and: [ rang = anObject rang and: [ affiliation = anObject affiliation ] ]
]

{ #category : #visiting }
CFFASTCategorisation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTCategorisation: self
]

{ #category : #accessing }
CFFASTCategorisation >> affiliation [
	^ affiliation
]

{ #category : #accessing }
CFFASTCategorisation >> affiliation: anObject [
	affiliation := anObject
]

{ #category : #accessing }
CFFASTCategorisation >> champion [
	^ champion
]

{ #category : #accessing }
CFFASTCategorisation >> champion: anObject [
	champion := anObject
]

{ #category : #comparing }
CFFASTCategorisation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ champion hash bitXor: (rang hash bitXor: affiliation hash)
]

{ #category : #accessing }
CFFASTCategorisation >> rang [
	^ rang
]

{ #category : #accessing }
CFFASTCategorisation >> rang: anObject [
	rang := anObject
]
