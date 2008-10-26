*jquery-ui
triggerResizablePosition: aBlock
	self 
		callback: [ :value | 
			| token |
			token := value findTokens: $,.
			aBlock value: token first asNumber @ token last asNumber ]
		value: (JSStream on: 'arguments[1].position.top+","+arguments[1].position.left')