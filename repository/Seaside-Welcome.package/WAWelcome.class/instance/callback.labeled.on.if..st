private
callback: aBlock labeled: label on: html if: makeLink
	makeLink
		ifFalse: [ html text: label ]
		ifTrue: [
			html anchor
				callback: aBlock;
				with: label ]