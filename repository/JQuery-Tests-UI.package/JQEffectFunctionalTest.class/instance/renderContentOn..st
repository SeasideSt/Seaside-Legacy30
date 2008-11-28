rendering
renderContentOn: html
	html div
		class: 'outer';
		with: [
			html div
				class: 'inner';
				onClick: (html jQuery this effect transfer; toElement: '.target'; speed: 1000);
				with: [html break; break; big: 'Click me'] ].
	html div class: 'target'.
	html div
		class: 'action';
		with: [
		#(bounce shake highlight shrink grow)
			do: [ :each | 
				html anchor
					onClick: (self perform: (each asString,'Effect:') asSymbol with: (html jQuery: '.inner') effect);
				with: each ] ].
