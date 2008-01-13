rendering
scriptToggleOn: script
	open ifTrue: [script effect id: uid;
						duration: 0.3;
						blindUp.
				"script element id: uid; addClassName: 'closed'"]
		ifFalse: [loaded ifFalse: [script element id: uid; update: body].
				script element id: uid; removeClassName: 'closed'.
				script effect id: uid; duration: 0.3; blindDown].
	open := open not
