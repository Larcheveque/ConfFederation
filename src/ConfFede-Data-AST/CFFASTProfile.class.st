Class {
	#name : #CFFASTProfile,
	#superclass : #Object,
	#instVars : [
		'profileName',
		'caracteristics',
		'magicalSkill',
		'priestSkill',
		'rangeProperties',
		'equipments',
		'skills',
		'implicitSkills',
		'specialRules1s',
		'categorisation',
		'taille',
		'specialRules2s',
		'cost'
	],
	#category : #'ConfFede-Data-AST'
}

{ #category : #comparing }
CFFASTProfile >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ profileName = anObject profileName
		and: [ caracteristics = anObject caracteristics
				and: [ magicalSkill = anObject magicalSkill
						and: [ priestSkill = anObject priestSkill
								and: [ rangeProperties = anObject rangeProperties
										and: [ equipments = anObject equipments
												and: [ skills = anObject skills
														and: [ implicitSkills = anObject implicitSkills
																and: [ specialRules1s = anObject specialRules1s
																		and: [ categorisation = anObject categorisation
																				and: [ taille = anObject taille
																						and: [ specialRules2s = anObject specialRules2s
																								and: [ cost = anObject cost ] ] ] ] ] ] ] ] ] ] ] ]
]

{ #category : #visiting }
CFFASTProfile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitCFFASTProfile: self
]

{ #category : #accessing }
CFFASTProfile >> caracteristics [
	^ caracteristics
]

{ #category : #accessing }
CFFASTProfile >> caracteristics: anObject [
	caracteristics := anObject
]

{ #category : #accessing }
CFFASTProfile >> categorisation [
	^ categorisation
]

{ #category : #accessing }
CFFASTProfile >> categorisation: anObject [
	categorisation := anObject
]

{ #category : #accessing }
CFFASTProfile >> cost [
	^ cost
]

{ #category : #accessing }
CFFASTProfile >> cost: anObject [
	cost := anObject
]

{ #category : #accessing }
CFFASTProfile >> equipments [
	^ equipments
]

{ #category : #accessing }
CFFASTProfile >> equipments: anObject [
	equipments := anObject
]

{ #category : #comparing }
CFFASTProfile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ profileName hash
		bitXor:
			(caracteristics hash
				bitXor:
					(magicalSkill hash
						bitXor:
							(priestSkill hash
								bitXor:
									(rangeProperties hash
										bitXor:
											(equipments hash
												bitXor:
													(skills hash
														bitXor:
															(implicitSkills hash
																bitXor:
																	(specialRules1s hash
																		bitXor:
																			(categorisation hash
																				bitXor: (taille hash bitXor: (specialRules2s hash bitXor: cost hash)))))))))))
]

{ #category : #accessing }
CFFASTProfile >> implicitSkills [
	^ implicitSkills
]

{ #category : #accessing }
CFFASTProfile >> implicitSkills: anObject [
	implicitSkills := anObject
]

{ #category : #accessing }
CFFASTProfile >> magicalSkill [
	^ magicalSkill
]

{ #category : #accessing }
CFFASTProfile >> magicalSkill: anObject [
	magicalSkill := anObject
]

{ #category : #accessing }
CFFASTProfile >> point [
	^ point
]

{ #category : #accessing }
CFFASTProfile >> point: anObject [
	point := anObject
]

{ #category : #accessing }
CFFASTProfile >> priestSkill [
	^ priestSkill
]

{ #category : #accessing }
CFFASTProfile >> priestSkill: anObject [
	priestSkill := anObject
]

{ #category : #accessing }
CFFASTProfile >> profileName [
	^ profileName
]

{ #category : #accessing }
CFFASTProfile >> profileName: anObject [
	profileName := anObject
]

{ #category : #accessing }
CFFASTProfile >> rangeProperties [
	^ rangeProperties
]

{ #category : #accessing }
CFFASTProfile >> rangeProperties: anObject [
	rangeProperties := anObject
]

{ #category : #accessing }
CFFASTProfile >> ruleNames [
	^ ruleNames
]

{ #category : #accessing }
CFFASTProfile >> ruleNames: anObject [
	ruleNames := anObject
]

{ #category : #accessing }
CFFASTProfile >> skills [
	^ skills
]

{ #category : #accessing }
CFFASTProfile >> skills: anObject [
	skills := anObject
]

{ #category : #accessing }
CFFASTProfile >> specialRules1s [
	^ specialRules1s
]

{ #category : #accessing }
CFFASTProfile >> specialRules1s: anObject [
	specialRules1s := anObject
]

{ #category : #accessing }
CFFASTProfile >> specialRules2s [
	^ specialRules2s
]

{ #category : #accessing }
CFFASTProfile >> specialRules2s: anObject [
	specialRules2s := anObject
]

{ #category : #accessing }
CFFASTProfile >> taille [
	^ taille
]

{ #category : #accessing }
CFFASTProfile >> taille: anObject [
	taille := anObject
]
