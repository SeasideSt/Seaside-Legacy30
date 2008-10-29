rendering
renderContentsOn: html
	html div class: 'contents'; with: [
		html heading
			level: 1;
			with: contents title.
		contents selectors isEmpty
			ifTrue: [ html render: contents ]
			ifFalse: [ self renderBrowserOn: html ] ]