Class {
	#name : #CFSkill,
	#superclass : #IMEntity,
	#traits : 'CFNamed',
	#classTraits : 'CFNamed classTrait',
	#category : #'ConfFede-Model-Entities'
}

{ #category : #accessing }
CFSkill >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFSkill >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFSkill >> hasArgument [
	<IMGenerated>
	^ self properties obtainProperty: #hasArgument
]

{ #category : #properties }
CFSkill >> hasArgument: propertyValue [
	<IMGenerated>
	self properties defineProperty: #hasArgument with: propertyValue
]

{ #category : #properties }
CFSkill >> isActive [
	<IMGenerated>
	^ self properties obtainProperty: #isActive
]

{ #category : #properties }
CFSkill >> isActive: propertyValue [
	<IMGenerated>
	self properties defineProperty: #isActive with: propertyValue
]

{ #category : #properties }
CFSkill >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFSkill >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #markdown }
CFSkill >> markDownString [
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: '#';
				nextPutAll: self name;
				nextPutAll:
					(self hasArgument
						ifTrue: [ '/X' ]
						ifFalse: [ '' ]);
				nextPutAll:
					(self isActive
						ifTrue: [ '(active)' ]
						ifFalse: [ '(passive)' ]);
				cr.
			s nextPutAll: self ruleText ]
]

{ #category : #accessing }
CFSkill >> numberOfProfiles [
	<IMGenerated>
	^ self storageManager count: #profiles forEntity: self
]

{ #category : #accessing }
CFSkill >> numberOfProfilesAssociations [
	<IMGenerated>
	^ self storageManager count: #profilesAssociations forEntity: self
]

{ #category : #accessing }
CFSkill >> profiles [
	<IMGenerated>
	^ self profilesAssociations derive: #targetMiniature
]

{ #category : #accessing }
CFSkill >> profilesAssociations [
	<IMGenerated>
	^ self links obtainRelationContent: #profilesAssociations
]

{ #category : #accessing }
CFSkill >> profilesAssociations: content [
	<IMGenerated>
	self links defineRelationContent: #profilesAssociations with: content 
]

{ #category : #properties }
CFSkill >> ruleText [
	<IMGenerated>
	^ self properties obtainProperty: #ruleText
]

{ #category : #properties }
CFSkill >> ruleText: propertyValue [
	<IMGenerated>
	self properties defineProperty: #ruleText with: propertyValue
]
