Trait {
	#name : #CFNamed,
	#traits : 'IMConceptTrait',
	#classTraits : 'IMConceptTrait classTrait',
	#category : #'ConfFede-Model-Concepts'
}

{ #category : #properties }
CFNamed >> name [
	<IMGenerated>
	^ self properties obtainProperty: #name
]

{ #category : #properties }
CFNamed >> name: propertyValue [
	<IMGenerated>
	self properties defineProperty: #name with: propertyValue
]

{ #category : #properties }
CFNamed >> printOn: s [
	super printOn: s.
	s nextPut: $<.
	s nextPutAll: self name.
	s nextPut: $>
]
