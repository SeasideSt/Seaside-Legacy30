rendering-rows
renderRowExpand: aHandler  on: html
	aHandler isDispatcher ifTrue: [
		html anchor
			title: 'Open children handlers';
			callback: [ self expand: aHandler; selectFirst ];
			with:  '+' ]