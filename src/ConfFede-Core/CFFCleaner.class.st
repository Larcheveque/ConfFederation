Class {
	#name : #CFFCleaner,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'number',
		'conf',
		'page',
		'update',
		'down'
	],
	#category : #'ConfFede-Core'
}

{ #category : #visiting }
CFFCleaner class >> clean: aFileReference [
	| cleanContents |
	cleanContents := self parse: aFileReference contents.
	aFileReference
		ensureDelete;
		ensureCreateFile;
		writeStreamDo: [ :s | s nextPutAll: cleanContents ]
]

{ #category : #accessing }
CFFCleaner >> conf [
	^ self
		remove: 'Confédération du Dragon Rouge Française' asPParser trim
]

{ #category : #accessing }
CFFCleaner >> down [
	^ self
		remove: 'Conf’Fédé, Ch.' asPParser , #newline asPParser negate plus
]

{ #category : #accessing }
CFFCleaner >> number [
 	^ #digit asPParser plus
]

{ #category : #accessing }
CFFCleaner >> page [
	^ self remove: 'Page' asPParser , number trim
]

{ #category : #accessing }
CFFCleaner >> remove: aPParser [
	^ aPParser ==> [ :p | '' ]
]

{ #category : #accessing }
CFFCleaner >> start [
	^ (conf / page / update /down / #any asPParser flatten) plus
		==> [ :p | 
			String
				streamContents: [ :s | p do: [ :string | s nextPutAll: string ] ] ]
]

{ #category : #accessing }
CFFCleaner >> update [
	^ self
		remove: 'Mise à jour du ' asPParser , #newline asPParser negate plus
]
