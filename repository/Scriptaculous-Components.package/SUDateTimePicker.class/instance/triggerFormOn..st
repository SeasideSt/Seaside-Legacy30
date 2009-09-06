scripting
triggerFormOn: html
	^html scriptaculous evaluator
		triggerForm: self timeId;
		callback: [:script | self scriptSelect: self date on: script];
		return: false