rendering
renderContentOn: html
	html div 
		class: 'outer';
		with: [
			html div
				id: 'effect';
				class: 'blue';
				with: [html break; break; big: 'Animate me'] ].
	html div 
		class: 'action';
		with: [
		#(switch toggle add remove)
			do: [ :each | 
				html anchor
					onClick: (self perform: (each asString,'Effect:') asSymbol with: (html jQuery: #effect));
				with: each ] ]
