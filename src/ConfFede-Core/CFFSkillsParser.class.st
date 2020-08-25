Class {
	#name : #CFFSkillsParser,
	#superclass : #CFFarmyBookParser,
	#category : #'ConfFede-Core'
}

{ #category : #accessing }
CFFSkillsParser >> start [
	^ (skillDescription / #any asPParser) plus
		==> [ :p | 
			CFFASTContent new
				contents: (p reject: #isCharacter);
				yourself ]
]
