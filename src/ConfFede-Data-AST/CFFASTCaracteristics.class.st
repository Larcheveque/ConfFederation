Class {
	#name : #CFFASTCaracteristics,
	#superclass : #Object,
	#instVars : [
		'move',
		'initiative',
		'attack',
		'defense',
		'fearIndicator',
		'psycho'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTCaracteristics >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ move = anObject move
		and: [ initiative = anObject initiative
				and: [ attack = anObject attack
						and: [ defense = anObject defense
								and: [ fearIndicator = anObject fearIndicator
										and: [ psycho = anObject psycho ] ] ] ] ]
]

{ #category : #visiting }
CFFASTCaracteristics >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTCaracteristics: self
]

{ #category : #accessing }
CFFASTCaracteristics >> attack [
	^ attack
]

{ #category : #accessing }
CFFASTCaracteristics >> attack: anObject [
	attack := anObject
]

{ #category : #accessing }
CFFASTCaracteristics >> defense [
	^ defense
]

{ #category : #accessing }
CFFASTCaracteristics >> defense: anObject [
	defense := anObject
]

{ #category : #accessing }
CFFASTCaracteristics >> fearIndicator [
	^ fearIndicator
]

{ #category : #accessing }
CFFASTCaracteristics >> fearIndicator: anObject [
	fearIndicator := anObject
]

{ #category : #comparing }
CFFASTCaracteristics >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ move hash
		bitXor:
			(initiative hash
				bitXor:
					(attack hash
						bitXor: (defense hash bitXor: (fearIndicator hash bitXor: psycho hash))))
]

{ #category : #accessing }
CFFASTCaracteristics >> initiative [
	^ initiative
]

{ #category : #accessing }
CFFASTCaracteristics >> initiative: anObject [
	initiative := anObject
]

{ #category : #accessing }
CFFASTCaracteristics >> move [
	^ move
]

{ #category : #accessing }
CFFASTCaracteristics >> move: anObject [
	move := anObject
]

{ #category : #accessing }
CFFASTCaracteristics >> psycho [
	^ psycho
]

{ #category : #accessing }
CFFASTCaracteristics >> psycho: anObject [
	psycho := anObject
]
