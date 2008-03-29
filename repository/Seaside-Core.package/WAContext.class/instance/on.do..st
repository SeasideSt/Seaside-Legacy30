events
on: aClass do: aValuable
	"Evaluate aValuable, when an event of aClass is triggered."

	subscribers ifNil: [ subscribers := WASmallDictionary new ].
	(subscribers at: aClass ifAbsentPut: [ OrderedCollection new ])
		add: aValuable.
	^ aValuable