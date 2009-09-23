rendering-ancestry
renderGroup: aBlock named: aName on: html
	html div class: 'group';
		 with: [html div class: 'groupTitle'; with: [html label: aName].
		html div class: 'groupContent';
			with: aBlock ]