Class {
	#name : #CFSkillAssociation,
	#superclass : #IMAssociation,
	#category : #'ConfFede-Model-Associations'
}

{ #category : #accessing }
CFSkillAssociation >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFSkillAssociation >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFSkillAssociation >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFSkillAssociation >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFSkillAssociation >> originSkill [
	<IMGenerated>
	^ self links obtainRelationContent: #originSkill
]

{ #category : #accessing }
CFSkillAssociation >> originSkill: content [
	<IMGenerated>
	self links defineRelationContent: #originSkill with: content 
]

{ #category : #accessing }
CFSkillAssociation >> targetMiniature [
	<IMGenerated>
	^ self links obtainRelationContent: #targetMiniature
]

{ #category : #accessing }
CFSkillAssociation >> targetMiniature: content [
	<IMGenerated>
	self links defineRelationContent: #targetMiniature with: content 
]
