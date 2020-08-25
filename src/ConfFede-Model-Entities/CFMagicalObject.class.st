Class {
	#name : #CFMagicalObject,
	#superclass : #IMEntity,
	#traits : 'CFNamed',
	#classTraits : 'CFNamed classTrait',
	#category : #'ConfFede-Model-Entities'
}

{ #category : #properties }
CFMagicalObject >> descriptionText [
	<IMGenerated>
	^ self properties obtainProperty: #descriptionText
]

{ #category : #properties }
CFMagicalObject >> descriptionText: propertyValue [
	<IMGenerated>
	self properties defineProperty: #descriptionText with: propertyValue
]

{ #category : #accessing }
CFMagicalObject >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFMagicalObject >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFMagicalObject >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFMagicalObject >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]
