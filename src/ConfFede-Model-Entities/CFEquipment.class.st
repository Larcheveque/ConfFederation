Class {
	#name : #CFEquipment,
	#superclass : #IMEntity,
	#traits : 'CFNamed',
	#classTraits : 'CFNamed classTrait',
	#category : #'ConfFede-Model-Entities'
}

{ #category : #accessing }
CFEquipment >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFEquipment >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFEquipment >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFEquipment >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFEquipment >> numberOfProfiles [
	<IMGenerated>
	^ self storageManager count: #profiles forEntity: self
]

{ #category : #accessing }
CFEquipment >> numberOfProfilesAssociations [
	<IMGenerated>
	^ self storageManager count: #profilesAssociations forEntity: self
]

{ #category : #accessing }
CFEquipment >> profiles [
	<IMGenerated>
	^ self profilesAssociations derive: #targetMiniature
]

{ #category : #accessing }
CFEquipment >> profilesAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #profilesAssociations
]

{ #category : #accessing }
CFEquipment >> profilesAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #profilesAssociations with: content 
]
