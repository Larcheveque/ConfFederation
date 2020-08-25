Class {
	#name : #CFFASTSkillDescription,
	#superclass : #Object,
	#instVars : [
		'number',
		'skillName',
		'skillArgument',
		'activeOrPassive',
		'skillText'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTSkillDescription >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ number = anObject number
		and: [ skillName = anObject skillName
				and: [ skillArgument = anObject skillArgument
						and: [ activeOrPassive = anObject activeOrPassive
								and: [ skillText = anObject skillText ] ] ] ]
]

{ #category : #visiting }
CFFASTSkillDescription >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTSkillDescription: self
]

{ #category : #accessing }
CFFASTSkillDescription >> activeOrPassive [
	^ activeOrPassive
]

{ #category : #accessing }
CFFASTSkillDescription >> activeOrPassive: anObject [
	activeOrPassive := anObject
]

{ #category : #comparing }
CFFASTSkillDescription >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ number hash
		bitXor:
			(skillName hash
				bitXor:
					(skillArgument hash
						bitXor: (activeOrPassive hash bitXor: skillText hash)))
]

{ #category : #accessing }
CFFASTSkillDescription >> number [
	^ number
]

{ #category : #accessing }
CFFASTSkillDescription >> number: anObject [
	number := anObject
]

{ #category : #accessing }
CFFASTSkillDescription >> skillArgument [
	^ skillArgument
]

{ #category : #accessing }
CFFASTSkillDescription >> skillArgument: anObject [
	skillArgument := anObject
]

{ #category : #accessing }
CFFASTSkillDescription >> skillName [
	^ skillName
]

{ #category : #accessing }
CFFASTSkillDescription >> skillName: anObject [
	skillName := anObject
]

{ #category : #accessing }
CFFASTSkillDescription >> skillText [
	^ skillText
]

{ #category : #accessing }
CFFASTSkillDescription >> skillText: anObject [
	skillText := anObject
]
