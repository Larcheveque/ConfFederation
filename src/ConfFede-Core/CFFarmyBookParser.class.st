Class {
	#name : #CFFarmyBookParser,
	#superclass : #CFFarmyBookGrammar,
	#category : #'ConfFede-Core'
}

{ #category : #rules }
CFFarmyBookParser >> activeOrPassive [
	<generated>
	^ super activeOrPassive flatten
		==> [ :production | 
			CFFASTActiveOrPassive new
				activeOrPassive: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> affiliation [
	<generated>
	^ super affiliation flatten
		==> [ :production | 
			CFFASTAffiliation new
				affiliation: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> blankCaracteristic [
	<generated>
	^ super blankCaracteristic flatten
		==> [ :production | 
			CFFASTBlankCaracteristic new
				blankCaracteristic: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> caracteristic [
	<generated>
	^ super caracteristic flatten
		==> [ :production | 
			CFFASTCaracteristic new
				caracteristic: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> caracteristics [
	<generated>
	^ super caracteristics
		==> [ :production | 
			CFFASTCaracteristics new
				move: (production at: 1);
				initiative: (production at: 3);
				attack: (production at: 5);
				defense: (production at: 7);
				fearIndicator: (production at: 9);
				psycho: (production at: 10);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> categorisation [
	<generated>
	^ super categorisation
		==> [ :production | 
			CFFASTCategorisation new
				champion: (production at: 1);
				rang: (production at: 2);
				affiliation: (production at: 4);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> champion [
	<generated>
	^ super champion flatten
		==> [ :production | 
			CFFASTChampion new
				champion: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> content [
	<generated>
	^ super content
		==> [ :production | 
			CFFASTContent new
				contents: (self rejectSeparators: production);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> cost [
	<generated>
	^ super cost
		==> [ :production | 
			CFFASTCost new
				number: (production at: 1);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> doubleCaracteristic [
	<generated>
	^ super doubleCaracteristic
		==> [ :production | 
			CFFASTDoubleCaracteristic new
				firstCaracteristic: (production at: 1);
				secondCaracteristic: (production at: 3);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> element [
	<generated>
	^ super element flatten
		==> [ :production | 
			CFFASTElement new
				element: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> equipment [
	<generated>
	^ super equipment flatten
		==> [ :production | 
			CFFASTEquipment new
				equipment: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> equipments [
	<generated>
	^ super equipments
		==> [ :production | 
			CFFASTEquipments new
				equipments: (self rejectSeparators: (production at: 1));
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> fearIndicator [
	<generated>
	^ super fearIndicator flatten
		==> [ :production | 
			CFFASTFearIndicator new
				fearIndicator: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> implicitSkills [
	<generated>
	^ super implicitSkills
		==> [ :production | 
			CFFASTImplicitSkills new
				skills: (self rejectSeparators: (production at: 2));
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> knownSkill [
	<generated>
	^ super knownSkill flatten
		==> [ :production | 
			CFFASTKnownSkill new
				knownSkill: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> magicRank [
	<generated>
	^ super magicRank flatten
		==> [ :production | 
			CFFASTMagicRank new
				magicRank: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> magicSkill [
	<generated>
	^ super magicSkill
		==> [ :production | 
			CFFASTMagicSkill new
				magicRank: (production at: 1);
				elements: ((production at: 2) collect: [ :subProduction | subProduction at: 2 ]);
				voies: (self rejectSeparators: (production at: 4));
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> magicalObject [
	<generated>
	^ super magicalObject
		==> [ :production | 
			CFFASTMagicalObject new
				objectName: (production at: 1);
				number: (production at: 3);
				ruleText: (production at: 7);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> magicalSkill [
	<generated>
	^ super magicalSkill
		==> [ :production | 
			CFFASTMagicalSkill new
				number: (production at: 2);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> name [
	<generated>
	^ super name flatten
		==> [ :production | 
			CFFASTName new
				name: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> number [
	<generated>
	^ super number flatten
		==> [ :production | 
			CFFASTNumber new
				number: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> objectName [
	<generated>
	^ super objectName flatten
		==> [ :production | 
			CFFASTObjectName new
				objectName: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> priestSkill [
	<generated>
	^ super priestSkill
		==> [ :production | 
			CFFASTPriestSkill new
				creation: (production at: 2);
				alteration: (production at: 4);
				destruction: (production at: 6);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> profile [
	<generated>
	^ super profile
		==> [ :production | 
			CFFASTProfile new
				profileName: (production at: 1);
				caracteristics: (production at: 4);
				magicalSkill: ((production at: 6) ifNotNil: [ (production at: 6) at: 1 ]);
				priestSkill: ((production at: 7) ifNotNil: [ (production at: 7) at: 1 ]);
				rangeProperties: ((production at: 8) ifNotNil: [ (production at: 8) at: 1 ]);
				equipments: ((production at: 9) ifNotNil: [ (production at: 9) at: 1 ]);
				skills: ((production at: 10) ifNotNil: [ (production at: 10) at: 1 ]);
				implicitSkills: ((production at: 11) ifNotNil: [ (production at: 11) at: 1 ]);
				specialRules1s: ((production at: 12) collect: [ :subProduction | subProduction at: 2 ]);
				categorisation: (production at: 13);
				taille: (production at: 15);
				specialRules2s: ((production at: 18) collect: [ :subProduction | subProduction at: 2 ]);
				cost: (production at: 19);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> profileName [
	<generated>
	^ super profileName flatten
		==> [ :production | 
			CFFASTProfileName new
				profileName: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> rang [
	<generated>
	^ super rang flatten
		==> [ :production | 
			CFFASTRang new
				rang: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> rangeProperties [
	<generated>
	^ super rangeProperties
		==> [ :production | 
			CFFASTRangeProperties new
				rangeCaracteristic: (production at: 2);
				name: (production at: 4);
				rangeStrength: (production at: 7);
				shortRange: (production at: 10);
				mediumRange: (production at: 12);
				longRange: (production at: 14);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> realCaracteristic [
	<generated>
	^ super realCaracteristic flatten
		==> [ :production | 
			CFFASTRealCaracteristic new
				realCaracteristic: production;
				yourself ]
]

{ #category : #helpers }
CFFarmyBookParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
CFFarmyBookParser >> ruleName [
	<generated>
	^ super ruleName flatten
		==> [ :production | 
			CFFASTRuleName new
				ruleName: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> ruleText [
	<generated>
	^ super ruleText flatten
		==> [ :production | 
			CFFASTRuleText new
				ruleText: production;
				yourself ]
]

{ #category : #helpers }
CFFarmyBookParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
CFFarmyBookParser >> skill [
	<generated>
	^ super skill
		==> [ :production | 
			CFFASTSkill new
				skillName: (production at: 1);
				skillArgument: ((production at: 2) ifNotNil: [ (production at: 2) at: 2 ]);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> skillArgument [
	<generated>
	^ super skillArgument flatten
		==> [ :production | 
			CFFASTSkillArgument new
				skillArgument: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> skillDescription [
	<generated>
	^ super skillDescription
		==> [ :production | 
			CFFASTSkillDescription new
				number: (production at: 2);
				skillName: (production at: 4);
				skillArgument: (production at: 5);
				activeOrPassive: (production at: 7);
				skillText: (production at: 11);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> skillName [
	<generated>
	^ super skillName flatten
		==> [ :production | 
			CFFASTSkillName new
				skillName: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> skillText [
	<generated>
	^ super skillText flatten
		==> [ :production | 
			CFFASTSkillText new
				skillText: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> skills [
	<generated>
	^ super skills
		==> [ :production | 
			CFFASTSkills new
				skills: (self rejectSeparators: (production at: 1));
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> specialRule [
	<generated>
	^ super specialRule
		==> [ :production | 
			CFFASTSpecialRule new
				ruleName: (production at: 1);
				ruleText: (production at: 3);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> specialRuleReference [
	<generated>
	^ super specialRuleReference
		==> [ :production | 
			CFFASTSpecialRuleReference new
				ruleName: (production at: 1);
				number: ((production at: 2) ifNotNil: [ (production at: 2) at: 2 ]);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> spiritSkill [
	<generated>
	^ super spiritSkill
		==> [ :production | 
			CFFASTSpiritSkill new
				element: (production at: 3);
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> taille [
	<generated>
	^ super taille flatten
		==> [ :production | 
			CFFASTTaille new
				taille: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> text [
	<generated>
	^ super text flatten
		==> [ :production | 
			CFFASTText new
				text: production;
				yourself ]
]

{ #category : #rules }
CFFarmyBookParser >> voie [
	<generated>
	^ super voie flatten
		==> [ :production | 
			CFFASTVoie new
				voie: production;
				yourself ]
]
