rendering
renderContentOn: html
	html div id: #selectable; with: [ 
		JQFunctionalTest allSubclasses 
			do: [ :each |
				html span
					passenger: each;
					with: each name ]
			separatedBy: [ html text: ' ' ] ].
	self session addLoadScript: (html jQuery id: #selectable) selectable