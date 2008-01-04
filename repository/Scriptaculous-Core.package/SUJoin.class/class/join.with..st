instance-creation
join: aCollection with: aString
	^ self new
		collection: aCollection;
		joiner: aString;
		yourself