triggers
triggerAutocompleter: aBlock
	"Triggers an autocompleter, not that you need to define a passanger for the list items to make this work."

	self
		callback: [ :value |
			aBlock value: (canvas context callbacks
				at: value ifAbsent: [ nil ]) ]
		value: (JSStream new
			nextPutAll: 'arguments[1].id.match';
			argument: SUSortable passengerRegexp;
			nextPutAll: '[1]')