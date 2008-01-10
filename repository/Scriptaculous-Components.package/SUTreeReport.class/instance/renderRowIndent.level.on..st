rendering
renderRowIndent: anObject level: anInteger on: html
	anInteger timesRepeat: [ html div class: 'indent' ].
	html div class: 'indent'; with: [
		(expandableBlock value: anObject) ifTrue: [
			html anchor
				class: 'expanded' if: (expanded includes: anObject);
				onClick: (html evaluator 
					callback: [ :script | self toggle: anObject level: anInteger on: script ];
					return: false) ] ]