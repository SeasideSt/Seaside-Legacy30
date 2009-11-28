rendering-rows
renderRowExpand: anEntryPoint  on: html

	anEntryPoint isDispatcher
		ifTrue: [
			html anchor
				title: 'Open children handlers';
				callback: [ self expand: anEntryPoint; selectFirst  ];
				with:  '+'.]
		ifFalse: []