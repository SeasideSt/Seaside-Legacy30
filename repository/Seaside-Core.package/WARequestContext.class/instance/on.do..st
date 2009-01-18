events
on: anEventClass do: aValuable
	"Evaluate aValuable, when an event of aClass is triggered."

	subscribers ifNil: [ subscribers := WASmallDictionary new ].
	(subscribers at: anEventClass ifAbsentPut: [ OrderedCollection new ])
		add: aValuable.
	^ aValuable