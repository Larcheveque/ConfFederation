Class {
	#name : #CFRank,
	#superclass : #IMEntity,
	#traits : 'CFNamed',
	#classTraits : 'CFNamed classTrait',
	#category : #'ConfFede-Model-Entities'
}

{ #category : #accessing }
CFRank >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFRank >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFRank >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFRank >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFRank >> numberOfProfiles [
	<IMGenerated>
	^ self storageManager count: #profiles forEntity: self
]

{ #category : #accessing }
CFRank >> profiles [
	<IMGenerated>
	^ self links obtainRelationContent: #profiles
]

{ #category : #accessing }
CFRank >> profiles: content [
	<IMGenerated>
	self links defineRelationContent: #profiles with: content 
]
