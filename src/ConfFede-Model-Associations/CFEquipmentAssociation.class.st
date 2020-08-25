Class {
	#name : #CFEquipmentAssociation,
	#superclass : #IMAssociation,
	#category : #'ConfFede-Model-Associations'
}

{ #category : #accessing }
CFEquipmentAssociation >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFEquipmentAssociation >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFEquipmentAssociation >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFEquipmentAssociation >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFEquipmentAssociation >> originEquipment [
	<IMGenerated>
	^ self links obtainRelationContent: #originEquipment
]

{ #category : #accessing }
CFEquipmentAssociation >> originEquipment: content [
	<IMGenerated>
	self links defineRelationContent: #originEquipment with: content 
]

{ #category : #accessing }
CFEquipmentAssociation >> targetMiniature [
	<IMGenerated>
	^ self links obtainRelationContent: #targetMiniature
]

{ #category : #accessing }
CFEquipmentAssociation >> targetMiniature: content [
	<IMGenerated>
	self links defineRelationContent: #targetMiniature with: content 
]
