rendering
renderContentOn: html
	| formId |
	formId := #myform.
	html form
		id: formId;
		with: [
			html div: [
				html textInput
					on: #count of: self.
				html break.
				html anchor
					id: #decreaseLink;
					addShortcut: 'Ctrl-Down';
					callback: [ count := count - 1 ];
					submitFormNamed: formId;
					with: '--'.
				html space.
				html anchor
					id: #increaseLink;
					addShortcut: 'Ctrl-Up';
					callback: [ count := count + 1 ];
					submitFormNamed: formId;
					with: '++'.
				html break; break.
				count = 0 ifFalse: [
					html checkbox
						addShortcut: 'Ctrl-Z';
						addShortcut: 'Ctrl-z';
						value: (count = 0);
						callback: [ :value | value ifTrue: [ count := 0 ] ];
						submitFormNamed: formId.
					html space.
					html text: 'Reset' ] ] ].
	html paragraph: [
		html emphasis: 'Handy shortcuts : Ctrl-Up, Ctrl-Down and Ctrl-Z' ]