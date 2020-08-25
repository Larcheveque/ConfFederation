Class {
	#name : #CFFASTMagicRank,
	#superclass : #Object,
	#instVars : [
		'magicRank'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTMagicRank >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ magicRank = anObject magicRank
]

{ #category : #visiting }
CFFASTMagicRank >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTMagicRank: self
]

{ #category : #comparing }
CFFASTMagicRank >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ magicRank hash
]

{ #category : #accessing }
CFFASTMagicRank >> magicRank [
	^ magicRank
]

{ #category : #accessing }
CFFASTMagicRank >> magicRank: anObject [
	magicRank := anObject
]
