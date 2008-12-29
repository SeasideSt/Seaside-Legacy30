rendering-ancestry
renderParent: aConfiguration on: html 
	html listItem: [
		aConfiguration isShared
			ifTrue: [ 
				html anchor
					onClick: 'return submitForm(this)';
					callback: [ self show: aConfiguration configurationComponent ];
					with: aConfiguration name ]
			ifFalse: [ html text: aConfiguration name ].
		html space.
		html anchor
			onClick: 'return submitForm(this)';
			callback: [ self configuration moveParentUp: aConfiguration ];
			with: [ html html: '&uarr;' ].
		html space.
		html anchor
			onClick: 'return submitForm(this)';
			callback: [ self configuration moveParentDown:aConfiguration ];
			with: [ html html: '&darr;' ].
		html space.
		html anchor
			onClick: 'return submitForm(this)';
			callback: [ self configuration removeParent: aConfiguration ];
			with: [ html html: '&times;' ] ]