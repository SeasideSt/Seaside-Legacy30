*jquery-ui
triggerResizableSize: aBlock
	self
		callback: [ :value | 
			| token |
			token := value findTokens: $,.
			aBlock value: token first asNumber @ token last asNumber ]
		value: (JSStream on: 'arguments[1].size.width+","+arguments[1].size.height')