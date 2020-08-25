Class {
	#name : #CFFASTProfileName,
	#superclass : #Object,
	#instVars : [
		'profileName'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTProfileName >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ profileName = anObject profileName
]

{ #category : #visiting }
CFFASTProfileName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTProfileName: self
]

{ #category : #comparing }
CFFASTProfileName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ profileName hash
]

{ #category : #accessing }
CFFASTProfileName >> profileName [
	^ profileName
]

{ #category : #accessing }
CFFASTProfileName >> profileName: anObject [
	profileName := anObject
]
