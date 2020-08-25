Class {
	#name : #CFFASTAbstractVisitor,
	#superclass : #Object,
	#category : #'ConfFede-Data-Visitor'
}

{ #category : #helpers }
CFFASTAbstractVisitor >> visit: aChildNode [
	^ aChildNode ifNotNil: [ aChildNode acceptVisitor: self ]
]

{ #category : #helpers }
CFFASTAbstractVisitor >> visitAll: childrenNodes [
	childrenNodes
		ifNotNil: [ childrenNodes do: [ :aChildNode | aChildNode acceptVisitor: self ] ]
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTActiveOrPassive: anCFFASTActiveOrPassive [
	<generated>
	^ anCFFASTActiveOrPassive activeOrPassive
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTAffiliation: anCFFASTAffiliation [
	<generated>
	^ anCFFASTAffiliation affiliation
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTBlankCaracteristic: anCFFASTBlankCaracteristic [
	<generated>
	^ anCFFASTBlankCaracteristic blankCaracteristic
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTCaracteristic: anCFFASTCaracteristic [
	<generated>
	^ anCFFASTCaracteristic caracteristic
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTCaracteristics: aCFFASTCaracteristics [
	<generated>
	self visit: aCFFASTCaracteristics move.
	self visit: aCFFASTCaracteristics initiative.
	self visit: aCFFASTCaracteristics attack.
	self visit: aCFFASTCaracteristics defense.
	self visit: aCFFASTCaracteristics fearIndicator.
	self visit: aCFFASTCaracteristics psycho.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTCategorisation: aCFFASTCategorisation [
	<generated>
	self visit: aCFFASTCategorisation champion.
	self visit: aCFFASTCategorisation rang.
	self visit: aCFFASTCategorisation affiliation.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTChampion: anCFFASTChampion [
	<generated>
	^ anCFFASTChampion champion
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTContent: aCFFASTContent [
	<generated>
	self visitAll: aCFFASTContent contents.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTCost: aCFFASTCost [
	<generated>
	self visit: aCFFASTCost number.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTDoubleCaracteristic: aCFFASTDoubleCaracteristic [
	<generated>
	self visit: aCFFASTDoubleCaracteristic firstCaracteristic.
	self visit: aCFFASTDoubleCaracteristic secondCaracteristic.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTElement: anCFFASTElement [
	<generated>
	^ anCFFASTElement element
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTEquipment: anCFFASTEquipment [
	<generated>
	^ anCFFASTEquipment equipment
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTEquipments: aCFFASTEquipments [
	<generated>
	self visitAll: aCFFASTEquipments equipments.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTFearIndicator: anCFFASTFearIndicator [
	<generated>
	^ anCFFASTFearIndicator fearIndicator
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTImplicitSkills: aCFFASTImplicitSkills [
	<generated>
	self visitAll: aCFFASTImplicitSkills skills.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTKnownSkill: anCFFASTKnownSkill [
	<generated>
	^ anCFFASTKnownSkill knownSkill
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTMagicRank: anCFFASTMagicRank [
	<generated>
	^ anCFFASTMagicRank magicRank
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTMagicSkill: aCFFASTMagicSkill [
	<generated>
	self visit: aCFFASTMagicSkill magicRank.
	self visitAll: aCFFASTMagicSkill elements.
	self visitAll: aCFFASTMagicSkill voies.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTMagicalObject: aCFFASTMagicalObject [
	<generated>
	self visit: aCFFASTMagicalObject objectName.
	self visit: aCFFASTMagicalObject number.
	self visit: aCFFASTMagicalObject ruleText.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTMagicalSkill: aCFFASTMagicalSkill [
	<generated>
	self visit: aCFFASTMagicalSkill number.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTName: anCFFASTName [
	<generated>
	^ anCFFASTName name
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTNumber: anCFFASTNumber [
	<generated>
	^ anCFFASTNumber number
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTObjectName: anCFFASTObjectName [
	<generated>
	^ anCFFASTObjectName objectName
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTPriestSkill: aCFFASTPriestSkill [
	<generated>
	self visit: aCFFASTPriestSkill creation.
	self visit: aCFFASTPriestSkill alteration.
	self visit: aCFFASTPriestSkill destruction.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTProfile: aCFFASTProfile [
	<generated>
	self visit: aCFFASTProfile profileName.
	self visit: aCFFASTProfile caracteristics.
	self visit: aCFFASTProfile magicalSkill.
	self visit: aCFFASTProfile priestSkill.
	self visit: aCFFASTProfile rangeProperties.
	self visit: aCFFASTProfile equipments.
	self visit: aCFFASTProfile skills.
	self visit: aCFFASTProfile implicitSkills.
	self visitAll: aCFFASTProfile specialRules1s.
	self visit: aCFFASTProfile categorisation.
	self visit: aCFFASTProfile taille.
	self visitAll: aCFFASTProfile specialRules2s.
	self visit: aCFFASTProfile cost.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTProfileName: anCFFASTProfileName [
	<generated>
	^ anCFFASTProfileName profileName
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTRang: anCFFASTRang [
	<generated>
	^ anCFFASTRang rang
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTRangeProperties: aCFFASTRangeProperties [
	<generated>
	self visit: aCFFASTRangeProperties rangeCaracteristic.
	self visit: aCFFASTRangeProperties name.
	self visit: aCFFASTRangeProperties rangeStrength.
	self visit: aCFFASTRangeProperties shortRange.
	self visit: aCFFASTRangeProperties mediumRange.
	self visit: aCFFASTRangeProperties longRange.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTRealCaracteristic: anCFFASTRealCaracteristic [
	<generated>
	^ anCFFASTRealCaracteristic realCaracteristic
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTRuleName: anCFFASTRuleName [
	<generated>
	^ anCFFASTRuleName ruleName
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTRuleText: anCFFASTRuleText [
	<generated>
	^ anCFFASTRuleText ruleText
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSkill: aCFFASTSkill [
	<generated>
	self visit: aCFFASTSkill skillName.
	self visit: aCFFASTSkill skillArgument.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSkillArgument: anCFFASTSkillArgument [
	<generated>
	^ anCFFASTSkillArgument skillArgument
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSkillDescription: aCFFASTSkillDescription [
	<generated>
	self visit: aCFFASTSkillDescription number.
	self visit: aCFFASTSkillDescription skillName.
	self visit: aCFFASTSkillDescription skillArgument.
	self visit: aCFFASTSkillDescription activeOrPassive.
	self visit: aCFFASTSkillDescription skillText.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSkillName: anCFFASTSkillName [
	<generated>
	^ anCFFASTSkillName skillName
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSkillText: anCFFASTSkillText [
	<generated>
	^ anCFFASTSkillText skillText
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSkills: aCFFASTSkills [
	<generated>
	self visitAll: aCFFASTSkills skills.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSpecialRule: aCFFASTSpecialRule [
	<generated>
	self visit: aCFFASTSpecialRule ruleName.
	self visit: aCFFASTSpecialRule ruleText.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSpecialRuleReference: aCFFASTSpecialRuleReference [
	<generated>
	self visit: aCFFASTSpecialRuleReference ruleName.
	self visit: aCFFASTSpecialRuleReference number.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTSpiritSkill: aCFFASTSpiritSkill [
	<generated>
	self visit: aCFFASTSpiritSkill element.
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTTaille: anCFFASTTaille [
	<generated>
	^ anCFFASTTaille taille
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTText: anCFFASTText [
	<generated>
	^ anCFFASTText text
]

{ #category : #visiting }
CFFASTAbstractVisitor >> visitCFFASTVoie: anCFFASTVoie [
	<generated>
	^ anCFFASTVoie voie
]
