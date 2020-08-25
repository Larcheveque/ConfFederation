Class {
	#name : #CFArmy,
	#superclass : #IMEntity,
	#traits : 'CFNamed',
	#classTraits : 'CFNamed classTrait',
	#category : #'ConfFede-Model-Entities'
}

{ #category : #accessing }
CFArmy >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFArmy >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFArmy >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFArmy >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFArmy >> numberOfProfiles [
	<IMGenerated>
	^ self storageManager count: #profiles forEntity: self
]

{ #category : #accessing }
CFArmy >> profiles [
	<IMGenerated>
	^ self links obtainRelationContent: #profiles
]

{ #category : #accessing }
CFArmy >> profiles: content [
	<IMGenerated>
	self links defineRelationContent: #profiles with: content 
]
