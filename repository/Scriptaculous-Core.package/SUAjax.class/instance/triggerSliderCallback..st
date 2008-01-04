triggers
triggerSliderCallback: aBlock
	self
		callback: [ :value | aBlock value: value asNumber ]
		value: (SUStream argumentAt: 1)