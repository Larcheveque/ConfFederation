Class {
	#name : #CFGameSet,
	#superclass : #IMEntity,
	#category : #'ConfFede-Model-Entities'
}

{ #category : #accessing }
CFGameSet >> armys [
	<IMGenerated>
	^ self links obtainRelationContent: #armys
]

{ #category : #accessing }
CFGameSet >> armys: content [
	<IMGenerated>
	self links defineRelationContent: #armys with: content 
]

{ #category : #accessing }
CFGameSet >> equipmentAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #equipmentAssociations
]

{ #category : #accessing }
CFGameSet >> equipmentAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #equipmentAssociations with: content 
]

{ #category : #accessing }
CFGameSet >> equipments [
	<IMGenerated>
	^ self links obtainRelationContent: #equipments
]

{ #category : #accessing }
CFGameSet >> equipments: content [
	<IMGenerated>
	self links defineRelationContent: #equipments with: content 
]

{ #category : #properties }
CFGameSet >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFGameSet >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFGameSet >> magicalObjects [
	<IMGenerated>
	^ self links obtainRelationContent: #magicalObjects
]

{ #category : #accessing }
CFGameSet >> magicalObjects: content [
	<IMGenerated>
	self links defineRelationContent: #magicalObjects with: content 
]

{ #category : #accessing }
CFGameSet >> miniatures [
	<IMGenerated>
	^ self links obtainRelationContent: #miniatures
]

{ #category : #accessing }
CFGameSet >> miniatures: content [
	<IMGenerated>
	self links defineRelationContent: #miniatures with: content 
]

{ #category : #accessing }
CFGameSet >> numberOfArmys [
	<IMGenerated>
	^ self storageManager count: #armys forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfEquipmentAssociations [
	<IMGenerated>
	^ self storageManager count: #equipmentAssociations forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfEquipments [
	<IMGenerated>
	^ self storageManager count: #equipments forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfMagicalObjects [
	<IMGenerated>
	^ self storageManager count: #magicalObjects forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfMiniatures [
	<IMGenerated>
	^ self storageManager count: #miniatures forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfRanks [
	<IMGenerated>
	^ self storageManager count: #ranks forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfSkillAssociations [
	<IMGenerated>
	^ self storageManager count: #skillAssociations forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfSkills [
	<IMGenerated>
	^ self storageManager count: #skills forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfSpecialRuleAssociations [
	<IMGenerated>
	^ self storageManager count: #specialRuleAssociations forEntity: self
]

{ #category : #accessing }
CFGameSet >> numberOfSpecialRules [
	<IMGenerated>
	^ self storageManager count: #specialRules forEntity: self
]

{ #category : #accessing }
CFGameSet >> ranks [
	<IMGenerated>
	^ self links obtainRelationContent: #ranks
]

{ #category : #accessing }
CFGameSet >> ranks: content [
	<IMGenerated>
	self links defineRelationContent: #ranks with: content 
]

{ #category : #accessing }
CFGameSet >> skillAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #skillAssociations
]

{ #category : #accessing }
CFGameSet >> skillAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #skillAssociations with: content 
]

{ #category : #accessing }
CFGameSet >> skills [
	<IMGenerated>
	^ self links obtainRelationContent: #skills
]

{ #category : #accessing }
CFGameSet >> skills: content [
	<IMGenerated>
	self links defineRelationContent: #skills with: content 
]

{ #category : #accessing }
CFGameSet >> specialRuleAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #specialRuleAssociations
]

{ #category : #accessing }
CFGameSet >> specialRuleAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #specialRuleAssociations with: content 
]

{ #category : #accessing }
CFGameSet >> specialRules [
	<IMGenerated>
	^ self links obtainRelationContent: #specialRules
]

{ #category : #accessing }
CFGameSet >> specialRules: content [
	<IMGenerated>
	self links defineRelationContent: #specialRules with: content 
]
