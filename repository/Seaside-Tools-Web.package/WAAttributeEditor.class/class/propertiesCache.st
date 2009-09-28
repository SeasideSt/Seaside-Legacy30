accessing
propertiesCache
	PropertiesCache ifNil: [PropertiesCache := Dictionary new ].
	^PropertiesCache