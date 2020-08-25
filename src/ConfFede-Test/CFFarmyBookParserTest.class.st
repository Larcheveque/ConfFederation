Class {
	#name : #CFFarmyBookParserTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'ConfFede-Test'
}

{ #category : #'as yet unclassified' }
CFFarmyBookParserTest class >> astParserGeneration [
	<script>
	PPTASTGenerator generateEverythingFrom: self generationStrategy: self generationStrategy
]

{ #category : #'as yet unclassified' }
CFFarmyBookParserTest class >> generationStrategy [
	^ PPTASTGeneratorStrategy new
		rulesToFlatten:
			#(affiliation caracteristic rang affiliation number ruleName skillName ruleText);
		rulesToIgnore: #();
		parserPackage: #'ConfFede-Core';
		parserClass: #CFFarmyBookGrammar;
		astPackage: #'ConfFede-Data-AST';
		astPrefix: #CFFAST;
		visitorPackage: #'ConfFede-Data-Visitor';
		visitorClass: #CFFASTAbstractVisitor;
		yourself
]

{ #category : #accessing }
CFFarmyBookParserTest >> parserClass [
	^ CFFarmyBookGrammar
]

{ #category : #accessing }
CFFarmyBookParserTest >> testAffiliation [
	self parse: 'Cynwäll' rule: #affiliation.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testCaracteristics [
	self parse: '12,5 - 4 - 4/7 - 4/8 - 7/5' rule: #caracteristics.
	self parse: '10 - 2 - 2/4 - 2/5 - -/-' rule: #caracteristics.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testCategorisation [
	self parse: 'Régulier Cynwäll' rule: #categorisation.
	self parse: 'Élite Cynwäll' rule: #categorisation.
	self parse: 'Spécial Cynwäll' rule: #categorisation.
	self parse: 'Vétéran Cynwäll' rule: #categorisation.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testEquipment [
	self parse: 'Mécanismes hélianthes' rule: #equipment.
	self parse: 'Artillerie lourde à effet de zone' rule: #equipment.
	
]

{ #category : #accessing }
CFFarmyBookParserTest >> testMagicSkill [
	self parse: 'Initié de l’Eau/Hurlements' rule: #magicSkill.
	self
		parse: 'Adepte de l’Eau et du Feu/Hurlements, Tourments'
		rule: #magicSkill.
	self
		parse: 'Adepte de l’Eau et des Ténèbres/Chtonienne'
		rule: #magicSkill.
	self parse: 'Initié de la Lumière/Solaris' rule: #magicSkill
]

{ #category : #accessing }
CFFarmyBookParserTest >> testMagicalObject [
	self parse: 'Griffe du dragon (10).
Le porteur gagne une arme Hélianthe et les
compétences « Asservi/Menerän » et « Féroce ».
Les combattants regroupés sur la même carte que le
porteur bénéficient de la compétence « Féroce »
tant qu''ils sont à 10cm du porteur ou de Menerän.
Réservé à Cirahÿn.' rule: #magicalObject.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testMagicalObject2 [
	self parse: 'Echyrion sombre (6).
Le porteur gagne POU=4 et les compétences
« Adepte des Ténèbres » et « Guerrier-mage ».
Le porteur ne peut pas acquérir de sortilèges
destinés à invoquer ou rappeler un combattant sur le
champ de bataille. Ceux qui confèrent une Peur ou
qui modifient cette caractéristique sont également
exclus.
Lors de la phase d’entretien, lancez 1D6. Le nombre
de gemmes dépensées par le Porteur est retranché
du résultat naturel du D6. Si le résultat final est
inférieur ou égal à 1, le porteur gagne INI-1, ATT-1
et DEF-1 jusqu’à la fin du tour suivant.
Réservé à Syd.' rule: #magicalObject.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile1 [
	self parse: 'Akhamiäl.
10 - 2 - 2/4 - 2/5 - -/-
TIR=3 ; arme à distance intégrée : FOR4, 10/15/20.
Mécanismes hélianthes.
Construct, Dévotion/2.
(Immunité/Peur, Immunité/Toxique).
Régulier Cynwäll. Petite taille.
15 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile10 [
	self parse: 'Nalkyr Maloth, dragon.
15/20 - 4 - 4/10 - 5/12 - -9/5
POU=5
TIR=3 ; Souffle du Dragon / FOR 10, portée 20-30-40
Énorme/1, Esprit de la Lumière, Récupération/3, Tueur né, Vol.
Initié de la Lumière/Solaris.
(Artefact/2, Enchaînement/1, Maîtrise des arcanes).
Présence du dragon. (page 5)
Souffle du dragon. (page 5)
Champion initié/créature Cynwäll. Très grande taille.
170 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile2 [
	self parse: 'Asadar.
12,5 - 4 - 4/7 - 4/8 - 7/5
Arme hélianthe, armure hélianthe.
Concentration/2, Enchaînement/1, Feinte, Juste.
(Immunité/Peur).
Élite Cynwäll. Taille moyenne.
40 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile3 [
	self parse: 'Chevalier de la vérité.
12,5 - 4 - 5/9 - 5/7 - 7/5
Arme hélianthe, armure hélianthe.
Concentration/2, Enchaînement/1, Implacable/1.
Élite Cynwäll. Taille moyenne.
Guide de la vérité.
44 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile4 [
	self parse: 'Dragon.
15/20 - 4 - 6/13 - 5/13 - -9/4
TIR=4 ; souffle de dragon : FOR10, 20/30/40 ;
Artillerie lourde à effet de zone.
Énorme/1, Implacable/1, Tueur né, Vol.
Créature Cynwäll. Très grande taille.
Présence du dragon.
Souffle du dragon.
160 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile5 [
	self parse: 'Guerrier de la vérité.
10 - 3 - 4/8 - 3/7 - 5/4
Concentration/1, Brutal.
Irrégulier Cynwäll. Taille moyenne.
26 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile6 [
	self parse: 'Vétéran selsÿm (sabre Cynwäll), selsÿm.
12,5 - 3 - 4/5 - 4/6 -5/4
Concentration/1, Bravoure, Feinte.
Vétéran Cynwäll. Taille moyenne.
24 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile7 [
	self parse: 'Cirahÿn, la passionnée.
12,5 - 6 - 5/6 - 5/6 - 6/3
Concentration/1, Frère de sang/Menerän, Furie
guerrière.
(Artefact/1, Contre-attaque, Coup de maître/0,
Enchaînement/2)
Champion irrégulier Cynwäll. Taille moyenne.
46 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile8 [
	self parse: 'Synchronïme.
12,5 - 4 - 4/6 - 4/6 - 5/4
POU=3
Concentration/1, Guerrier-mage.
Initié de la Lumière/Chronomancie.
(Contre-attaque).
Initié Cynwäll. Taille moyenne.
Synchronisation.
32 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfile9 [
	self parse: 'Guerrier équanime.
12,5 - 3 - 5/6 - 4/5 - 6/5
FOI=0/1/1
Concentration/1, Féal/1, Fidèle de la Noësis/10, Moine-guerrier.
(Contre-attaque).
Mentor martial.
Dévot Cynwäll. Taille moyenne.
37 PA' rule: #profile
]

{ #category : #accessing }
CFFarmyBookParserTest >> testProfileName [
	self parse: 'Akhamiäl' rule: #profileName.
	self parse: 'Chasseuse d''azur' rule: #profileName.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testRangeProperties [
	self
		parse: 'TIR=3 ; arme à distance intégrée : FOR4, 10/15/20.'
		rule: #rangeProperties.
	self
		parse: 'TIR=4 ; arbalète hélianthe : FOR6, 20/40/60.'
		rule: #rangeProperties.
	self
		parse:
			'TIR=4 ; souffle de wyrm : FOR16, 30/40/50 ; Artillerie lourde à effet de zone.'
		rule: #rangeProperties.
	self parse: 'TIR=3 ; Souffle du Dragon / FOR 10, portée 20-30-40' rule: #rangeProperties
]

{ #category : #accessing }
CFFarmyBookParserTest >> testSkill [
	self parse: 'Immunité/Peur' rule: #skill.
	self parse: 'Construct' rule: #skill.
	self parse: 'Dévotion/2' rule: #skill
]

{ #category : #accessing }
CFFarmyBookParserTest >> testSkillDescription1 [
	self
		parse:
			'XIX-B-1. Abominable (passive).
Lorsqu''un combattant doit faire un test de Courage face à un adversaire Abominable ou face à un groupe
d''adversaires dont l''un est doté de cette compétence, le test de Courage doit être effectué avec 2d6. Seul le plus
faible résultat naturel est alors retenu. Si le combattant bénéficie d''un effet qui lui permet de lancer plusieurs d6 pour son test de Courage et de retenir le meilleur, les deux effets s''annulent et le jet est effectué normalement,
avec un seul d6.
Cette compétence s''applique même si ce n''est pas la Peur du combattant Abominable qui est prise en compte.
Exemples : Un archer Daïkinee est chargé simultanément par un Wolfen zombie (PEUR=8) et une banshee
d''Achéron (PEUR=7 ; Abominable). Dans ce cas, c''est la Peur du Wolfen zombie qui est prise en compte, mais le
test est effectué avec 2d6 et le joueur Daïkinee doit conserver le plus faible des deux résultats.
Un templier du Griffon (COU=3 ; Bravoure) est chargé par une Aberration prime (PEUR=9 ; Abominable). Dans
ce cas le test est effectué avec un seul d6 car l’Abominable est annulé par la Bravoure.'
		rule: #skillDescription
]

{ #category : #accessing }
CFFarmyBookParserTest >> testSkillDescription2 [
	self
		parse:
			'XIX-B-5. Alliance/X (passive).
Un combattant qui possède cette compétence peut être recruté dans une armée du peuple X ou d’un peuple
appartenant à la voie d''Alliance X. Il est alors considéré comme un Allié de l''armée (voir III-A-5).
Cette compétence peut tout à fait être possédée en doublon, à condition que les X mentionnés soient différents.
Note : La Discipline d’un Allié/X peut être utilisée pour effectuer le jet de Tactique s’il appartient au même peuple
que l’armée ou à l’armée X.'
		rule: #skillDescription
]

{ #category : #accessing }
CFFarmyBookParserTest >> testSkillDescription3 [
	self
		parse:
			'XIX-B-111. Seigneur des morts/X (active).
Un Seigneur des morts est doté de la compétence « Commandement/X ».
Tout combattant ami doté de la compétence « Mort-vivant » situé à Xcm d''un Seigneur des morts bénéficie de
Peur+Y, Y étant égal à la catégorie de rang du Seigneur des morts.
Exemple : Au moment de lancer un assaut contre un adversaire, un pantin morbide (PEUR=5) se trouve dans
l''aura de Melmoth (« Seigneur des morts/10 »; PEUR=7). Melmoth étant Élite (catégorie de rang 2), le pantin
gagne PEUR+2. Sa Peur est donc considérée comme étant de 5 + 2 = 7.
Ce bonus ne peut pas amener la Peur du combattant qui en bénéficie à dépasser celle du Seigneur des morts.
Exemple : Un Wolfen zombie (PEUR=8) se trouve dans l''aura de la Gorgone (« Seigneur des morts /10 »;
PEUR=9; catégorie de rang 2). Le Wolfen zombie devrait gagner PEUR+2, mais cela amènerait sa Peur à 10, ce
qui est supérieur à la Peur de la Gorgone. Le Wolfen zombie ne gagne donc que PEUR+1 et sa Peur est
considérée comme étant de 8 + 1 = 9.
Si un Mort-vivant se trouve dans les auras de plusieurs Seigneurs des morts, il bénéficie du bonus le plus élevé.
Le bonus en Peur lié au Seigneur des morts ne s''applique pas lorsqu''un Mort-vivant doit effectuer un test de
Courage (face à un Hypérien, par exemple).
Si un combattant est doté de cette compétence en doublon, seule la plus forte valeur de X est prise en compte.'
		rule: #skillDescription
]

{ #category : #accessing }
CFFarmyBookParserTest >> testSkills1 [
	self parse: 'Concentration/1, Frère de sang/Menerän, Furie
guerrière.' rule: #skills.
	self fail: 'Concentration/1, Frère de sang/Menerän, Furie
guerrière.' rule: #equipments.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testSkills2 [
	self parse: 'Énorme/1, Esprit de la Lumière, Récupération/3, Tueur né, Vol.
Initié de la Lumière/Solaris.' rule: #skills.
]

{ #category : #accessing }
CFFarmyBookParserTest >> testSpecialRule [
	self parse: 'Guide de la vérité.
Chaque chevalier de la Vérité peut choisir, lors de la
constitution des armées, jusqu''à 3 guerriers de la
vérité qui gagnent la compétence
« Asservi/Chevalier de la vérité ».' rule: #specialRule
]

{ #category : #accessing }
CFFarmyBookParserTest >> testTaille [
	self parse: 'Petite taille' rule: #taille.
	self parse: 'Taille moyenne' rule: #taille.
	self parse: 'Très grande taille' rule: #taille.
	self parse: 'Grande taille' rule: #taille.
]
