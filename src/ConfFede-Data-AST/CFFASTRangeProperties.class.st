Class {
	#name : #CFFASTRangeProperties,
	#superclass : #Object,
	#instVars : [
		'rangeCaracteristic',
		'name',
		'rangeStrength',
		'shortRange',
		'mediumRange',
		'longRange'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTRangeProperties >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ rangeCaracteristic = anObject rangeCaracteristic
		and: [ name = anObject name
				and: [ rangeStrength = anObject rangeStrength
						and: [ shortRange = anObject shortRange
								and: [ mediumRange = anObject mediumRange
										and: [ longRange = anObject longRange ] ] ] ] ]
]

{ #category : #visiting }
CFFASTRangeProperties >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTRangeProperties: self
]

{ #category : #accessing }
CFFASTRangeProperties >> caracteristic [
	^ caracteristic
]

{ #category : #accessing }
CFFASTRangeProperties >> caracteristic: anObject [
	caracteristic := anObject
]

{ #category : #comparing }
CFFASTRangeProperties >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ rangeCaracteristic hash
		bitXor:
			(name hash
				bitXor:
					(rangeStrength hash
						bitXor: (shortRange hash bitXor: (mediumRange hash bitXor: longRange hash))))
]

{ #category : #accessing }
CFFASTRangeProperties >> longRange [
	^ longRange
]

{ #category : #accessing }
CFFASTRangeProperties >> longRange: anObject [
	longRange := anObject
]

{ #category : #accessing }
CFFASTRangeProperties >> mediumRange [
	^ mediumRange
]

{ #category : #accessing }
CFFASTRangeProperties >> mediumRange: anObject [
	mediumRange := anObject
]

{ #category : #accessing }
CFFASTRangeProperties >> name [
	^ name
]

{ #category : #accessing }
CFFASTRangeProperties >> name: anObject [
	name := anObject
]

{ #category : #accessing }
CFFASTRangeProperties >> rangeCaracteristic [
	^ rangeCaracteristic
]

{ #category : #accessing }
CFFASTRangeProperties >> rangeCaracteristic: anObject [
	rangeCaracteristic := anObject
]

{ #category : #accessing }
CFFASTRangeProperties >> rangeStrength [
	^ rangeStrength
]

{ #category : #accessing }
CFFASTRangeProperties >> rangeStrength: anObject [
	rangeStrength := anObject
]

{ #category : #accessing }
CFFASTRangeProperties >> shortRange [
	^ shortRange
]

{ #category : #accessing }
CFFASTRangeProperties >> shortRange: anObject [
	shortRange := anObject
]

{ #category : #accessing }
CFFASTRangeProperties >> text [
	^ text
]

{ #category : #accessing }
CFFASTRangeProperties >> text: anObject [
	text := anObject
]
