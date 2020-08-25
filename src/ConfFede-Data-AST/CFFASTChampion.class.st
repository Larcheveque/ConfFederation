Class {
	#name : #CFFASTChampion,
	#superclass : #Object,
	#instVars : [
		'champion'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTChampion >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ champion = anObject champion
]

{ #category : #visiting }
CFFASTChampion >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTChampion: self
]

{ #category : #accessing }
CFFASTChampion >> champion [
	^ champion
]

{ #category : #accessing }
CFFASTChampion >> champion: anObject [
	champion := anObject
]

{ #category : #comparing }
CFFASTChampion >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ champion hash
]
