private
add: aDescriptor to: aDictionary
	configuration isNil ifFalse: [ aDescriptor configuration: configuration ].
	^ aDictionary at: aDescriptor key put: aDescriptor