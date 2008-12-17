rendering
renderBoxOn: html
	html div class: 'outer'; with: [ 
		html div 
			id: 'box';
			class: 'inner' ]