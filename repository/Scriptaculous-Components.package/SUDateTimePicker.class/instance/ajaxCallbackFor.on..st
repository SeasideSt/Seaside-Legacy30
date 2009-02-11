scripting
ajaxCallbackFor: aDate on: html
	^html scriptaculous evaluator
		triggerForm: self timeId;
		callback: [:script | self scriptSelect: aDate on: script];
		return: false