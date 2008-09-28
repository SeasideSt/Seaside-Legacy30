rendering-ancestry
renderParent: aConfiguration on: html 
	html listItem: [
		html text: (self nameForConfiguration: aConfiguration).
		html space.
		html anchor
			callback: [ self configuration moveParentUp: aConfiguration ];
			with: [ html html: '&uarr;' ].
		html space.
		html anchor
			callback: [ self configuration moveParentDown:aConfiguration ];
			with: [ html html: '&darr;' ].
		html space.
		html anchor
			callback: [ self configuration removeParent: aConfiguration ];
			with: [ html html: '&times;' ] ]