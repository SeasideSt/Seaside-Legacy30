scripting
ajaxCallbackFor: aDate on: html
	^html scriptaculous evaluator
		callback: [:script | self select: aDate. self scriptUpdateOn: script];
		return: false