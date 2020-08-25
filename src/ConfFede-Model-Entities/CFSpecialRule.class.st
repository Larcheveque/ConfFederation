Class {
	#name : #CFSpecialRule,
	#superclass : #IMEntity,
	#traits : 'CFNamed',
	#classTraits : 'CFNamed classTrait',
	#category : #'ConfFede-Model-Entities'
}

{ #category : #accessing }
CFSpecialRule >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFSpecialRule >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFSpecialRule >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFSpecialRule >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFSpecialRule >> numberOfProfiles [
	<IMGenerated>
	^ self storageManager count: #profiles forEntity: self
]

{ #category : #accessing }
CFSpecialRule >> numberOfProfilesAssociations [
	<IMGenerated>
	^ self storageManager count: #profilesAssociations forEntity: self
]

{ #category : #accessing }
CFSpecialRule >> profiles [
	<IMGenerated>
	^ self profilesAssociations derive: #targetMiniature
]

{ #category : #accessing }
CFSpecialRule >> profilesAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #profilesAssociations
]

{ #category : #accessing }
CFSpecialRule >> profilesAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #profilesAssociations with: content 
]

{ #category : #properties }
CFSpecialRule >> ruleText [
	<IMGenerated>
	^ self properties obtainProperty: #ruleText
]

{ #category : #properties }
CFSpecialRule >> ruleText: propertyValue [
	<IMGenerated>
	self properties defineProperty: #ruleText with: propertyValue
]
