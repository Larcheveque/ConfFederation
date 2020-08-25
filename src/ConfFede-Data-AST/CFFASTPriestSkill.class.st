Class {
	#name : #CFFASTPriestSkill,
	#superclass : #Object,
	#instVars : [
		'creation',
		'alteration',
		'destruction'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTPriestSkill >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ creation = anObject creation
		and: [ alteration = anObject alteration
				and: [ destruction = anObject destruction ] ]
]

{ #category : #visiting }
CFFASTPriestSkill >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTPriestSkill: self
]

{ #category : #accessing }
CFFASTPriestSkill >> alteration [
	^ alteration
]

{ #category : #accessing }
CFFASTPriestSkill >> alteration: anObject [
	alteration := anObject
]

{ #category : #accessing }
CFFASTPriestSkill >> creation [
	^ creation
]

{ #category : #accessing }
CFFASTPriestSkill >> creation: anObject [
	creation := anObject
]

{ #category : #accessing }
CFFASTPriestSkill >> destruction [
	^ destruction
]

{ #category : #accessing }
CFFASTPriestSkill >> destruction: anObject [
	destruction := anObject
]

{ #category : #comparing }
CFFASTPriestSkill >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ creation hash bitXor: (alteration hash bitXor: destruction hash)
]
