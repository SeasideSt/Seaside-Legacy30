triggers
triggerPassenger: aBlock
	self
		callback: [ :value | aBlock value: (canvas context callbacks passengerAt: value) ]
		value: (JSStream on: 'arguments[0].id')