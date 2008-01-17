instance-creation
fromString: aString
	| id |
	id := self new: aString size.
	aString withIndexDo: [ :each :index |
		id at: index put: each asInteger].
	^ id