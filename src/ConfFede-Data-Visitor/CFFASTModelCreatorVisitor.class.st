Class {
	#name : #CFFASTModelCreatorVisitor,
	#superclass : #CFFASTAbstractVisitor,
	#instVars : [
		'model',
		'miniature'
	],
	#category : #'ConfFede-Data-Visitor'
}

{ #category : #visiting }
CFFASTModelCreatorVisitor >> clean: aString [
	^ (aString
		copyReplaceAll:
			{Character cr.
			Character lf} asString
		with: ' ') trim
]

{ #category : #accessing }
CFFASTModelCreatorVisitor >> model [
	^ model
]

{ #category : #accessing }
CFFASTModelCreatorVisitor >> model: anObject [
	model := anObject
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTCaracteristic: anCFFASTCaracteristic [
	anCFFASTCaracteristic caracteristic = '-'
		ifTrue: [ ^ nil ].
	^ anCFFASTCaracteristic caracteristic asNumber
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTCaracteristics: aCFFASTCaracteristics [
	(self visit: aCFFASTCaracteristics move)
		in: [ :move | 
			move isArray
				ifTrue: [ miniature move: move first.
					"miniature flyMove: move second" ]
				ifFalse: [ miniature move: move ] ].
	miniature initiative: (self visit: aCFFASTCaracteristics initiative).
	miniature attack: (self visit: aCFFASTCaracteristics attack) first.
	miniature strength: (self visit: aCFFASTCaracteristics attack) second.
	miniature defense: (self visit: aCFFASTCaracteristics defense) first.
	miniature
		resistance: (self visit: aCFFASTCaracteristics defense) second.
	miniature
		causeFear: (self visit: aCFFASTCaracteristics fearIndicator) = '-'.
	miniature bravery: (self visit: aCFFASTCaracteristics psycho) first.
	miniature
		discipline: (self visit: aCFFASTCaracteristics psycho) second
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTDoubleCaracteristic: aCFFASTDoubleCaracteristic [
	^ {(self visit: aCFFASTDoubleCaracteristic firstCaracteristic).
	(self visit: aCFFASTDoubleCaracteristic secondCaracteristic)}
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTEquipment: anCFFASTEquipment [
	miniature equipments
		addThroughAssociation:
			(model equipments
				detect: [ :anEquipment | anEquipment name = (self clean: anCFFASTEquipment equipment) ]
				ifNone: [ CFEquipment new
						name: (self clean: anCFFASTEquipment equipment);
						gameSet: model;
						yourself ])
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTProfile: aCFFASTProfile [
	miniature := CFMiniature new.
	miniature gameSet: model.
	miniature name: (self visit: aCFFASTProfile profileName).
	self visit: aCFFASTProfile caracteristics.
	self visit: aCFFASTProfile rangeProperties.
	self visit: aCFFASTProfile equipments.
	self visit: aCFFASTProfile skills.
	self visit: aCFFASTProfile implicitSkills.
	self visitAll: aCFFASTProfile ruleNames.
	self visit: aCFFASTProfile taille.
	self visit: aCFFASTProfile cost.
	self visit: aCFFASTProfile categorisation
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTSkill: aCFFASTSkill [
	self visit: aCFFASTSkill skillArgument.
	miniature skills
		addThroughAssociation:
			(model skills
				detect:
					[ :aSkill | aSkill name = (self clean: (self visit: aCFFASTSkill skillName)) ]
				ifNone: [ CFSkill new
						name: (self clean: (self visit: aCFFASTSkill skillName));
						gameSet: model;
						yourself ])
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTSkillDescription: aCFFASTSkillDescription [
	| skill |
	skill := CFSkill new.
	skill gameSet: model.
	skill name: (self visit: aCFFASTSkillDescription skillName) trim.
	skill
		isActive: (self visit: aCFFASTSkillDescription activeOrPassive) = 'active'.
	skill
		hasArgument: (self visit: aCFFASTSkillDescription skillArgument) notNil.
	skill ruleText: (self visit: aCFFASTSkillDescription skillText)
]

{ #category : #visiting }
CFFASTModelCreatorVisitor >> visitCFFASTSpecialRule: aCFFASTSpecialRule [
	| specialRule |
	specialRule := CFSpecialRule new.
	specialRule gameSet: model.
	specialRule name: (self visit: aCFFASTSpecialRule ruleName).
	specialRule ruleText: (self visit: aCFFASTSpecialRule ruleText)
]
