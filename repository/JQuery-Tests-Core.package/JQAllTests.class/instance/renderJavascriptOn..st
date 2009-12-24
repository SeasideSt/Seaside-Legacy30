rendering-browser
renderJavascriptOn: html
	| context id |
	id := html nextId.
	html heading level: 4;
		with: [ html anchor
					onClick: ((html jQuery id: id) slideToggle: 0.5 seconds);
					with: 'Source'].
	html div id: id;
		class: 'code';
		class: 'hide';
		class: 'codeBox';
		with: [
			context := html context copy.
			context document: (WAPrettyPrintedDocument context: html context).
			contents renderWithContext: context.
			context document close ].