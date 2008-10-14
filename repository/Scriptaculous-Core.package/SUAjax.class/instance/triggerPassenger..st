triggers
triggerPassenger: aBlock
	self
		callback: [ :value |
			aBlock value: (canvas context callbacks
				at: value ifAbsent: [ nil ]) ]
		value: (JSStream new
			nextPutAll: 'arguments[0].id.match';
			argument: SUSortable passengerRegexp;
			nextPutAll: '[1]')