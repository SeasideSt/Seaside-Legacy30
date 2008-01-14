scripting
scriptToggleOn: script
	open ifTrue: [script effect id: uid;
						duration: 0.3;
						blindUp.
				script element id: 'gfx',uid; removeClassName: 'gfxopen';addClassName: 'gfx']
		ifFalse: [loaded ifFalse: [script element id: uid; update: body].
				script element id: uid; removeClassName: 'closed'.
				script element id: 'gfx',uid;removeClassName: 'gfx'; addClassName: 'gfxopen'.
				script effect id: uid; duration: 0.3; blindDown].
	open := open not
