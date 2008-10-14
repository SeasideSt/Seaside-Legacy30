triggers
triggerSliderCallback: aBlock
	self
		callback: [ :value | aBlock value: value asNumber ]
		value: (JSStream argumentAt: 1)