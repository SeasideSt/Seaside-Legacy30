rendering
renderContentOn: html
	html div class: self cssClass; with: [
		html text: '['.
		self requestor modes
			do: [ :each |
				html anchor
					class: 'active' if: self requestor mode = each;
					title: (self labelForSelector: each allButLast);
					callback: [ self requestor mode: each ];
					with: each first asUppercase ]
			separatedBy: [ html text: '|' ].
		html text: ']' ]