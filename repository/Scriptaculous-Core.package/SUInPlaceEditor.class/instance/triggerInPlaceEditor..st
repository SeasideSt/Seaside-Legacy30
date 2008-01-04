triggers
triggerInPlaceEditor: aBlock
	self callback: aBlock value: (SUStream on: 'encodeURIComponent(arguments[1])').
	self optionAt: 'callback' put: (SUFunction new
		add: (self options removeKey: 'parameters');
		return: true;
		yourself)