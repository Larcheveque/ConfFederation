Class {
	#name : #CFSpecialRuleAssociation,
	#superclass : #IMAssociation,
	#category : #'ConfFede-Model-Associations'
}

{ #category : #accessing }
CFSpecialRuleAssociation >> gameSet [
	<IMGenerated>
	^ self links obtainRelationContent: #gameSet
]

{ #category : #accessing }
CFSpecialRuleAssociation >> gameSet: content [
	<IMGenerated>
	self links defineRelationContent: #gameSet with: content 
]

{ #category : #properties }
CFSpecialRuleAssociation >> key [
	<IMGenerated>
	^ self properties obtainProperty: #key
]

{ #category : #properties }
CFSpecialRuleAssociation >> key: propertyValue [
	<IMGenerated>
	self properties defineProperty: #key with: propertyValue
]

{ #category : #accessing }
CFSpecialRuleAssociation >> originSpecialRule [
	<IMGenerated>
	^ self links obtainRelationContent: #originSpecialRule
]

{ #category : #accessing }
CFSpecialRuleAssociation >> originSpecialRule: content [
	<IMGenerated>
	self links defineRelationContent: #originSpecialRule with: content 
]

{ #category : #accessing }
CFSpecialRuleAssociation >> targetMiniature [
	<IMGenerated>
	^ self links obtainRelationContent: #targetMiniature
]

{ #category : #accessing }
CFSpecialRuleAssociation >> targetMiniature: content [
	<IMGenerated>
	self links defineRelationContent: #targetMiniature with: content 
]
