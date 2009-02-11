scripting
ajaxCallbackFor: aDate on: html
	^html scriptaculous evaluator
		callback: [:script | self scriptSelect: aDate on: script];
		return: false