rendering
renderCartItemsOn: html
	self cart isEmpty
		ifTrue: [ ^ html text: 'Drop items here to add them to your cart.' ].
	self cart sortedCounts do: [ :each |
		html div
			class: 'cart-item';
			passenger: each value;
			script: (html scriptaculous draggable
				revert: true;
				ghosting: true);
			with: [
				html text: each value.
				each key > 1
					ifTrue: [ html text: ' ('; text: each key; text: ')' ] ] ]