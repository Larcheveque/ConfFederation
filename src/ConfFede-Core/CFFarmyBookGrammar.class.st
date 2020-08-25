Class {
	#name : #CFFarmyBookGrammar,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'profile',
		'caracteristic',
		'caracteristicSeparator',
		'doubleCaracteristic',
		'blankCaracteristic',
		'realCaracteristic',
		'text',
		'rangeProperties',
		'taille',
		'profileName',
		'newLine',
		'equipments',
		'skills',
		'implicitSkills',
		'affiliation',
		'cost',
		'equipment',
		'skill',
		'skillName',
		'categorisation',
		'rang',
		'number',
		'caracteristics',
		'ruleName',
		'specialRule',
		'fearIndicator',
		'ruleText',
		'content',
		'champion',
		'knownSkill',
		'point',
		'objectName',
		'magicalObject',
		'magicalSkill',
		'priestSkill',
		'specialRuleReference',
		'skillDescription',
		'skillText',
		'activeOrPassive',
		'skillArgument',
		'name',
		'magicRank',
		'element',
		'article',
		'voie',
		'magicSkill',
		'spiritSkill'
	],
	#category : #'ConfFede-Core'
}

{ #category : #'as yet unclassified' }
CFFarmyBookGrammar class >> addSkill: aSkill [
	self class
		compile:
			'skillList
	^' , (self skillList , {aSkill}) asSet asArray sorted asString
		classified: #list
]

{ #category : #'as yet unclassified' }
CFFarmyBookGrammar class >> addSkills: aCollectionOfSkills [
	self class
		compile:
			'skillList
	^' , (self skillList , aCollectionOfSkills asArray) asSet asArray sorted asString
		classified: #list
]

{ #category : #'as yet unclassified' }
CFFarmyBookGrammar class >> astParserGeneration [
	<script>
	PPTASTGenerator generateEverythingFrom: self generationStrategy: self generationStrategy
]

{ #category : #'as yet unclassified' }
CFFarmyBookGrammar class >> confFedeModel [
	| m |
	m := IMMetaModel new.
	(m concept: #Named) property: #name type: String.
	(m entity: #Miniature)
		property: #move type: Number;
		property: #initiative type: Integer;
		property: #attack type: Integer;
		property: #defense type: Integer;
		property: #strength type: Integer;
		property: #resistance type: Integer;
		property: #shooting type: Integer;
		property: #bravery type: Integer;
		property: #discipline type: Integer;
		property: #isChampion type: Boolean;
		property: #causeFear type: Boolean;
		concepts: #(Named).
	(m entity: #Skill)
		concepts: #(Named);
		property: #isActive type: Boolean;
		property: #hasArgument type: Boolean;
		property: #ruleText type: String.
	(m entity: #Equipment) concepts: #(Named).
	(m entity: #SpecialRule)
		concepts: #(Named);
		property: #ruleText type: String.
	(m entity: #Rank) concepts: #(Named).
	(m entity: #Army) concepts: #(Named).
	(m entity: #MagicalObject)
		concepts: #(Named);
		property: #descriptionText type: String.
	(m entity: #Army)
		createRelation: #profiles
		cardinality: $*
		opposite: #army
		cardinality: 1
		with: (m entity: #Miniature).
	(m entity: #Rank)
		createRelation: #profiles
		cardinality: $*
		opposite: #rank
		cardinality: 1
		with: (m entity: #Miniature).
	(m entity: #SpecialRule)
		createRelation: #profiles
		through: (m association: #SpecialRuleAssociation)
		opposite: #specialRules
		with: (m entity: #Miniature).
	(m entity: #Skill)
		createRelation: #profiles
		through: (m association: #SkillAssociation)
		opposite: #skills
		with: (m entity: #Miniature).
	(m entity: #Equipment)
		createRelation: #profiles
		through: (m association: #EquipmentAssociation)
		opposite: #equipments
		with: (m entity: #Miniature).
	m entitiesDescriptions copy
		do: [ :entity | 
			entity
				createRelation: #gameSet
				cardinality: 1
				opposite: (IMMetaModel pluralize: entity name) uncapitalized
				cardinality: $*
				with: (m entity: #GameSet) ].
	^ m
]

{ #category : #'as yet unclassified' }
CFFarmyBookGrammar class >> generationStrategy [
	^ PPTASTGeneratorStrategy new
		rulesToFlatten:
			#(affiliation caracteristic rang affiliation number ruleName skillName ruleText blankCaracteristic realCaracteristic text taille profileName equipment fearIndicator champion knownSkill objectName skillText activeOrPassive name skillArgument magicRank element voie);
		rulesToIgnore: #(newLine caracteristicSeparator point article);
		parserPackage: #'ConfFede-Core';
		parserClass: #CFFarmyBookParser;
		astPackage: #'ConfFede-Data-AST';
		astPrefix: #CFFAST;
		visitorPackage: #'ConfFede-Data-Visitor';
		visitorClass: #CFFASTAbstractVisitor;
		yourself
]

{ #category : #'as yet unclassified' }
CFFarmyBookGrammar class >> installConfFedeModel [
	<script>
	self confFedeModel installInPackage: #'ConfFede-Model' withPrefix: #CF
]

{ #category : #list }
CFFarmyBookGrammar class >> obtainGameSet [
	<script: 'self obtainGameSet inspect'>
	| gameSet |
	gameSet := CFGameSet new.
	(CFFSkillsParser
		parse:
			'/Users/larcheveque/Google Drive/Loisirs/Confrontation/ConfFederation/Rules/competences.txt'
				asFileReference contents)
		acceptVisitor:
			(CFFASTModelCreatorVisitor new
				model: gameSet;
				yourself).
	'/Users/larcheveque/Google Drive/Loisirs/Confrontation/ConfFederation/Ressources/Profils'
		asFileReference files
		do: [ :aFile | 
			(CFFarmyBookParser new parse: aFile contents)
				acceptVisitor:
					(CFFASTModelCreatorVisitor new
						model: gameSet;
						yourself) ].
	^ gameSet
]

{ #category : #list }
CFFarmyBookGrammar class >> skillList [
	^#('Abominable' 'Acharné' 'Aguerri' 'Aimé des Dieux' 'Alliance' 'Ambidextre' 'Apatride' 'Arme sacrée' 'Armure sacrée' 'Artefact' 'Artificier' 'Assassin' 'Asservi' 'Autorité' 'Bond' 'Bravoure' 'Bretteur' 'Brutal' 'Brute épaisse' 'Chance' 'Charge bestiale' 'Chef Wolfen' 'Cible' 'Commandement' 'Concentration' 'Conscience' 'Construct' 'Contre-attaque' 'Coup de maître' 'Cri de guerre' 'Cri de ralliement' 'Destrier' 'Dur à cuire' 'Désengagement' 'Désespéré' 'Dévotion' 'Enchaînement' 'Endurance' 'Ennemi personnel' 'Esprit de X' 'Esquive' 'Exalté' 'Fanatisme' 'Farouche' 'Fauchage' 'Feinte' 'Fine lame' 'Fléau' 'Focus' 'Force en charge' 'Frère de sang' 'Furie guerrière' 'Féal' 'Féroce' 'Guerrier-mage' 'Harcèlement' 'Hypérien' 'Iconoclaste' 'Illuminé' 'Immobile' 'Immortel' 'Immunité' 'Impact' 'Implacable' 'Inaltérable' 'Infiltration' 'Initié de la Lumière' 'Insensible' 'Instinct de survie' 'Invocateur' 'Inébranlable' 'Irrépressible' 'Juste' 'Lames dorsales' 'Martyr' 'Maudit des Dieux' 'Maîtrise des arcanes' 'Membre supplémentaire' 'Mercenaire' 'Moine-guerrier' 'Mort-vivant' 'Musicien' 'Mutagène' 'Mécanicien' 'Négation' 'Parade' 'Paria' 'Piété' 'Poids' 'Possédé' 'Précision' 'Prévisible' 'Pugnacité' 'Rapidité' 'Rechargement rapide' 'Rempart' 'Renfort' 'Rigueur' 'Récupération' 'Réflexes' 'Régénération' 'Réorientation' 'Résolution' 'Sapeur' 'Seigneur des morts' 'Soin' 'Stratège' 'Structure' 'Sélénite' 'Thaumaturge' 'Tir d''assaut' 'Tir d’assaut' 'Tir instinctif' 'Tir supplémentaire' 'Tireur d''élite' 'Tireur d’élite' 'Toxique' 'Transport' 'Tueur né' 'Visée' 'Vivacité' 'Vol' 'Vulnérable' 'Éclaireur' 'Élémentaire' 'Énorme' 'Éphémère' 'Épée-hache' 'Étendard' 'Éthéré')
]

{ #category : #accessing }
CFFarmyBookGrammar >> activeOrPassive [
	^ ('active' asPParser / 'passive' asPParser)
]

{ #category : #accessing }
CFFarmyBookGrammar >> affiliation [
	^ $. asPParser negate plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> article [
	^ #('de l’' 'et du' 'et des' 'du' 'de la')
		reduce: [ :a :b | a asPParser / b asPParser ]
]

{ #category : #accessing }
CFFarmyBookGrammar >> blankCaracteristic [
	^ $- asPParser
]

{ #category : #accessing }
CFFarmyBookGrammar >> caracteristic [
	^ blankCaracteristic / realCaracteristic
]

{ #category : #accessing }
CFFarmyBookGrammar >> caracteristicSeparator [
	^ '-' asPParser trim
]

{ #category : #accessing }
CFFarmyBookGrammar >> caracteristics [
	<reify: #(flyMove / move) into: #move>
	<rename: #caracteristic into: #(move initiative)>
	<rename: #doubleCaracteristic into: #(flyMove attack defense psycho)>
	^ doubleCaracteristic / caracteristic , caracteristicSeparator
		, caracteristic , caracteristicSeparator , doubleCaracteristic
		, caracteristicSeparator , doubleCaracteristic
		, caracteristicSeparator , fearIndicator optional, doubleCaracteristic
]

{ #category : #accessing }
CFFarmyBookGrammar >> categorisation [
	^ champion trim optional, rang  , #space asPParser , affiliation
]

{ #category : #accessing }
CFFarmyBookGrammar >> champion [
	^ 'Champion' asPParser
]

{ #category : #accessing }
CFFarmyBookGrammar >> content [
	<reify: #(profile / magicalObject / specialRule) into: #content>
	^ profile / magicalObject / specialRule separatedBy: newLine
]

{ #category : #accessing }
CFFarmyBookGrammar >> cost [ 
	^ number, ' PA' asPParser 
]

{ #category : #accessing }
CFFarmyBookGrammar >> doubleCaracteristic [
	<rename: #caracteristic into: #(firstCaracteristic secondCaracteristic)>
	^ caracteristic , $/ asPParser , caracteristic
]

{ #category : #accessing }
CFFarmyBookGrammar >> element [
	^ #('Eau' 'Feu' 'Terre' 'Air' 'Lumière' 'Ténèbres')
		reduce: [ :a :b | a asPParser / b asPParser ]
]

{ #category : #accessing }
CFFarmyBookGrammar >> equipment [
	^ knownSkill not , ($, asPParser / $. asPParser) negate plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> equipments [
	^ (equipment separatedBy: $, asPParser trim), point
]

{ #category : #accessing }
CFFarmyBookGrammar >> fearIndicator [
	^ $- asPParser , $/ asPParser not
]

{ #category : #accessing }
CFFarmyBookGrammar >> implicitSkills [
	^ $( asPParser , (skill separatedBy: $, asPParser trim)
		, $) asPParser , point optional
]

{ #category : #accessing }
CFFarmyBookGrammar >> knownSkill [
	^ self class skillList
		reduce: [ :a :b | 
			a asPParser
				/
					(PP2PredicateSequenceNode
						on: [ :value | 
							b
								sameAs:
									(value
										copyReplaceAll:
											'
'
										with: ' ') ]
						message: 'Failed to parse ' , b
						size: b size) ]
]

{ #category : #accessing }
CFFarmyBookGrammar >> magicRank [
	^ #('Initié' 'Adepte' 'Maître' 'Virtuose')
		inject: 'initié/créature' asPParser caseInsensitive
		into: [ :a :b | a / b asPParser caseInsensitive ]
]

{ #category : #accessing }
CFFarmyBookGrammar >> magicSkill [
	^ magicRank , (article trim , element trim) plus , $/ asPParser
		, (voie separatedBy: $, asPParser trim)
]

{ #category : #accessing }
CFFarmyBookGrammar >> magicalObject [
	^ objectName , $( asPParser , number , $) asPParser , point , newLine
		, ruleText
]

{ #category : #accessing }
CFFarmyBookGrammar >> magicalSkill [
	^ 'POU=' asPParser , number
]

{ #category : #accessing }
CFFarmyBookGrammar >> name [
	^ (#letter asPParser / #space asPParser) plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> newLine [
	^ #newline asPParser 
]

{ #category : #accessing }
CFFarmyBookGrammar >> number [
	^ #digit asPParser plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> objectName [
	^ ($( asPParser / $. asPParser) negate plus 
]

{ #category : #accessing }
CFFarmyBookGrammar >> point [
	^ $. asPParser
]

{ #category : #accessing }
CFFarmyBookGrammar >> priestSkill [
	<rename: #number into: #(creation alteration destruction)>
	^ 'FOI=' asPParser , number , $/ asPParser , number , $/ asPParser
		, number
]

{ #category : #accessing }
CFFarmyBookGrammar >> profile [
	<rename: #specialRuleReference into: #(specialRules1 specialRules2)>
	^ profileName , point , newLine , caracteristics , newLine
		, (magicalSkill , newLine) optional
		, (priestSkill , newLine) optional
		, (rangeProperties , newLine) optional
		, (equipments , newLine) optional , (skills , newLine) optional
		, (implicitSkills , newLine) optional
		, (categorisation not , specialRuleReference , newLine) star
		, categorisation , point trim , taille , point , newLine
		, (cost not , specialRuleReference , newLine) star , cost
]

{ #category : #accessing }
CFFarmyBookGrammar >> profileName [
	^ $. asPParser negate plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> rang [
	^ #('Irrégulier' 'Élite' 'Spécial' 'Vétéran' 'Créature' 'Dévot' 'Zélote' 'initié/créature' 'Initié' 'Machine de guerre' 'Légende vivante' 'Allié majeur' 'Adepte' 'Maître' 'Virtuose' 'Doyen' 'Avatar' 'Titan')
		inject: 'Régulier' asPParser caseInsensitive
		into: [ :a :b | a / b asPParser caseInsensitive ]
]

{ #category : #accessing }
CFFarmyBookGrammar >> rangeProperties [
	<rename: #caracteristic into: #(rangeCaracteristic rangeStrength shortRange mediumRange longRange)>
	| rangeDelimiter |
	rangeDelimiter := $/ asPParser / $- asPParser.
	^ 'TIR=' asPParser , caracteristic , $; asPParser trim , name
		, ($: asPParser / $/ asPParser) trim , 'FOR' asPParser trim
		, caracteristic , $, asPParser trim
		, 'portée' asPParser trim optional , caracteristic , rangeDelimiter
		, caracteristic , rangeDelimiter , caracteristic
		,
			($; asPParser trim , 'Artillerie lourde à effet de zone' asPParser)
				optional , point optional
]

{ #category : #accessing }
CFFarmyBookGrammar >> realCaracteristic [
	^ #digit asPParser plus , ($, asPParser , $5 asPParser) optional
]

{ #category : #accessing }
CFFarmyBookGrammar >> ruleName [
	^ newLine negate plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> ruleText [
	^ (profile / magicalObject)  negate plus 
]

{ #category : #accessing }
CFFarmyBookGrammar >> skill [
	<reify: #(caracteristic / skillName / name) into: #skillArgument>
	^ skillName , ($/ asPParser , (caracteristic / skillName / name)) optional
]

{ #category : #accessing }
CFFarmyBookGrammar >> skillArgument [
	^ '/X' asPParser
]

{ #category : #accessing }
CFFarmyBookGrammar >> skillDescription [
	^ 'XIX-B-' asPParser , number , point , skillName trim
		, skillArgument optional , $( asPParser trim , activeOrPassive
		, $) asPParser trim , point , newLine , skillText
]

{ #category : #accessing }
CFFarmyBookGrammar >> skillName [
	^ knownSkill
]

{ #category : #accessing }
CFFarmyBookGrammar >> skillText [
	^ 'XIX-' asPParser negate plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> skills [
	<reify: #(skill / magicSkill / spiritSkill) into: #skill>
	^ (skill / magicSkill / spiritSkill
		separatedBy: ($, asPParser / $. asPParser) trim) , point
]

{ #category : #accessing }
CFFarmyBookGrammar >> specialRule [
	self flag: #TODO.	"optimize because profile negate plus is highly inneficient"
	^ ruleName , newLine , ruleText
]

{ #category : #accessing }
CFFarmyBookGrammar >> specialRuleReference [
	^ ruleName , ('(page' asPParser trim , number , $) asPParser) optional
]

{ #category : #accessing }
CFFarmyBookGrammar >> spiritSkill [
	^ 'Esprit' asPParser , article trim , element
]

{ #category : #accessing }
CFFarmyBookGrammar >> start [
	^ content end
]

{ #category : #accessing }
CFFarmyBookGrammar >> taille [
	^ #('Petite taille' 'Taille moyenne' 'Très grande taille' 'Grande taille')
		reduce: [ :a :b | a asPParser / b asPParser ]
]

{ #category : #accessing }
CFFarmyBookGrammar >> text [
	^ (#newline asPParser / $: asPParser) negate plus
]

{ #category : #accessing }
CFFarmyBookGrammar >> voie [
	^ #('Elémentaires' 'Biopsie' 'Cabale' 'Cartomancie' 'Chronomancie' 'Chtonienne' 'Circæus' 'Corruption' 'Druidisme' 'Enskëm' 'Exorcisme' 'Élémentaire' 'Féérie' 'Forge' 'Hermétisme' 'Hurlements' 'Instinctive' 'Lamentations' 'Lithomancie' 'Maléfices' 'Murmures' 'Mutations' 'Nécromancie' 'Noire' 'Primagie' 'Rédemption' 'Sélénisme' 'Shamanisme' 'Solaris' 'Sorcellerie' 'Supplices' 'Symbiose' 'Technomancie' 'Tellurique' 'Théurgie' 'Tourments' 'Typhonisme')
		reduce: [ :a :b | a asPParser / b asPParser ]
]
