Class {
	#name : #CFMiniature,
	#superclass : #IMEntity,
	#traits : 'CFNamed',
	#classTraits : 'CFNamed classTrait',
	#category : #'ConfFede-Model-Entities'
}

{ #category : #accessing }
CFMiniature >> army [
	<IMGenerated>
	^ self links obtainRelationContent: #army
]

{ #category : #accessing }
CFMiniature >> army: content [
	<IMGenerated>
	self links defineRelationContent: #army with: content 
]

{ #category : #properties }
CFMiniature >> attack [
	<IMGenerated>
	^ self properties obtainProperty: #attack
]

{ #category : #properties }
CFMiniature >> attack: propertyValue [
	<IMGenerated>
	self properties defineProperty: #attack with: propertyValue
]

{ #category : #properties }
CFMiniature >> bravery [
	<IMGenerated>
	^ self properties obtainProperty: #bravery
]

{ #category : #properties }
CFMiniature >> bravery: propertyValue [
	<IMGenerated>
	self properties defineProperty: #bravery with: propertyValue
]

{ #category : #properties }
CFMiniature >> causeFear [
	<IMGenerated>
	^ self properties obtainProperty: #causeFear
]

{ #category : #properties }
CFMiniature >> causeFear: propertyValue [
	<IMGenerated>
	self properties defineProperty: #causeFear with: propertyValue
]

{ #category : #properties }
CFMiniature >> defense [
	<IMGenerated>
	^ self properties obtainProperty: #defense
]

{ #category : #properties }
CFMiniature >> defense: propertyValue [
	<IMGenerated>
	self properties defineProperty: #defense with: propertyValue
]

{ #category : #properties }
CFMiniature >> discipline [
	<IMGenerated>
	^ self properties obtainProperty: #discipline
]

{ #category : #properties }
CFMiniature >> discipline: propertyValue [
	<IMGenerated>
	self properties defineProperty: #discipline with: propertyValue
]

{ #category : #accessing }
CFMiniature >> equipments [
	<IMGenerated>
	^ self equipmentsAssociations derive: #originEquipment
]

{ #category : #accessing }
CFMiniature >> equipmentsAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #equipmentsAssociations
]

{ #category : #accessing }
CFMiniature >> equipmentsAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #equipmentsAssociations with: content 
]

{ #category : #accessing }
CFMiniature >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFMiniature >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFMiniature >> initiative [
	<IMGenerated>
	^ self properties obtainProperty: #initiative
]

{ #category : #properties }
CFMiniature >> initiative: propertyValue [
	<IMGenerated>
	self properties defineProperty: #initiative with: propertyValue
]

{ #category : #properties }
CFMiniature >> isChampion [
	<IMGenerated>
	^ self properties obtainProperty: #isChampion
]

{ #category : #properties }
CFMiniature >> isChampion: propertyValue [
	<IMGenerated>
	self properties defineProperty: #isChampion with: propertyValue
]

{ #category : #properties }
CFMiniature >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFMiniature >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #markdown }
CFMiniature >> markDownString [
	^ String streamContents: [:s | s nextPutAll: '#';nextPutAll: self name;cr.

s nextPutAll: '##Equipements  ';cr.
self equipments do: [ :anEquipment | s nextPutAll: '* [[', anEquipment name, ']]'  ].
s cr.

		s nextPutAll: '##Caractéristiques
* ', self move asString, '
* ', self initiative asString, '
* ', self attack asString, '/', self strength asString,'
* ', self defense asString, '/', self resistance asString,'
* ', self bravery asString, '/', self discipline asString.
s cr.
s nextPutAll: '##Compétences  ';cr.
self skills do: [ :aSkill | s nextPutAll: '* [[', aSkill name, ']]'; cr  ]]


]

{ #category : #properties }
CFMiniature >> move [
	<IMGenerated>
	^ self properties obtainProperty: #move
]

{ #category : #properties }
CFMiniature >> move: propertyValue [
	<IMGenerated>
	self properties defineProperty: #move with: propertyValue
]

{ #category : #accessing }
CFMiniature >> numberOfEquipments [
	<IMGenerated>
	^ self storageManager count: #equipments forEntity: self
]

{ #category : #accessing }
CFMiniature >> numberOfEquipmentsAssociations [
	<IMGenerated>
	^ self storageManager count: #equipmentsAssociations forEntity: self
]

{ #category : #accessing }
CFMiniature >> numberOfSkills [
	<IMGenerated>
	^ self storageManager count: #skills forEntity: self
]

{ #category : #accessing }
CFMiniature >> numberOfSkillsAssociations [
	<IMGenerated>
	^ self storageManager count: #skillsAssociations forEntity: self
]

{ #category : #accessing }
CFMiniature >> numberOfSpecialRules [
	<IMGenerated>
	^ self storageManager count: #specialRules forEntity: self
]

{ #category : #accessing }
CFMiniature >> numberOfSpecialRulesAssociations [
	<IMGenerated>
	^ self storageManager count: #specialRulesAssociations forEntity: self
]

{ #category : #accessing }
CFMiniature >> rank [
	<IMGenerated>
	^ self links obtainRelationContent: #rank
]

{ #category : #accessing }
CFMiniature >> rank: content [
	<IMGenerated>
	self links defineRelationContent: #rank with: content 
]

{ #category : #properties }
CFMiniature >> resistance [
	<IMGenerated>
	^ self properties obtainProperty: #resistance
]

{ #category : #properties }
CFMiniature >> resistance: propertyValue [
	<IMGenerated>
	self properties defineProperty: #resistance with: propertyValue
]

{ #category : #properties }
CFMiniature >> shooting [
	<IMGenerated>
	^ self properties obtainProperty: #shooting
]

{ #category : #properties }
CFMiniature >> shooting: propertyValue [
	<IMGenerated>
	self properties defineProperty: #shooting with: propertyValue
]

{ #category : #accessing }
CFMiniature >> skills [
	<IMGenerated>
	^ self skillsAssociations derive: #originSkill
]

{ #category : #accessing }
CFMiniature >> skillsAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #skillsAssociations
]

{ #category : #accessing }
CFMiniature >> skillsAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #skillsAssociations with: content 
]

{ #category : #accessing }
CFMiniature >> specialRules [
	<IMGenerated>
	^ self specialRulesAssociations derive: #originSpecialRule
]

{ #category : #accessing }
CFMiniature >> specialRulesAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #specialRulesAssociations
]

{ #category : #accessing }
CFMiniature >> specialRulesAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #specialRulesAssociations with: content 
]

{ #category : #properties }
CFMiniature >> strength [
	<IMGenerated>
	^ self properties obtainProperty: #strength
]

{ #category : #properties }
CFMiniature >> strength: propertyValue [
	<IMGenerated>
	self properties defineProperty: #strength with: propertyValue
]
