Class {
	#name : #CFFASTMagicSkill,
	#superclass : #Object,
	#instVars : [
		'magicRank',
		'elements',
		'voies'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTMagicSkill >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ magicRank = anObject magicRank
		and: [ elements = anObject elements and: [ voies = anObject voies ] ]
]

{ #category : #visiting }
CFFASTMagicSkill >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTMagicSkill: self
]

{ #category : #accessing }
CFFASTMagicSkill >> elements [
	^ elements
]

{ #category : #accessing }
CFFASTMagicSkill >> elements: anObject [
	elements := anObject
]

{ #category : #comparing }
CFFASTMagicSkill >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ magicRank hash bitXor: (elements hash bitXor: voies hash)
]

{ #category : #accessing }
CFFASTMagicSkill >> magicRank [
	^ magicRank
]

{ #category : #accessing }
CFFASTMagicSkill >> magicRank: anObject [
	magicRank := anObject
]

{ #category : #accessing }
CFFASTMagicSkill >> voies [
	^ voies
]

{ #category : #accessing }
CFFASTMagicSkill >> voies: anObject [
	voies := anObject
]
