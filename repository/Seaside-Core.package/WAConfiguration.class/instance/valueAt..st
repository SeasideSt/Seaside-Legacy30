values
valueAt: aSymbol 
	| ancestors attribute value |
	ancestors := OrderedCollection new.
	attribute := self addAncestorsTo: ancestors forAttributeAt: aSymbol.

	attribute isNil ifTrue: [ ^ nil ].

	value := self valueForAttribute: attribute consider: ancestors asIdentitySet cache: IdentityDictionary new.
	
	^ value isNil
		ifTrue: [ attribute default ]
		ifFalse: [ value ]