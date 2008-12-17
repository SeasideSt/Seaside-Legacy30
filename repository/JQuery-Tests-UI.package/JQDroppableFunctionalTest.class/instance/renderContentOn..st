rendering
renderContentOn: html
	#( blue red green ) do: [ :each |
		html div
			class: 'box'; class: each;
			script: (html jQuery new draggable 	
				revert: true) ].
	html div class: 'clear'.
	html div
		class: 'drop'; class: 'brown';
		script: (html jQuery new droppable
			accept: 'div';
			hoverClass: 'drop-hover';
			activeClass: 'drop-active';
			onDrop: (html jQuery this 
				append: 'Dropped'))