rendering
renderContentOn: html
	html div
		class: 'outer';
		with: [ html div class: 'inner' ].
	html div
		class: 'action';
		with: [
		#( blind clip drop explode fold puff pulsate scale slide )
			do: [ :each | 
				html anchor
					onClick: ((html jQuery: '.inner') effect
						toggle;
						perform: each);
					with: each ] ]