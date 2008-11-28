rendering
renderContentOn: html
	html div
		id: 'effect';
		class: 'inner';
		onClick: (html jQuery this effect transfer; toElement: '.target'; speed: 1000);
		style: 'text-align:center';
		with: [html break; break; big: 'Click me'].
	html div
		class: 'target'.
	html div
		class: 'cl';
		with: [
		#(bounce shake highlight shrink grow)
			do: [ :each | | anEffect |
				anEffect := (html jQuery: #effect) effect.
				html anchor
					class: 'link';
					onClick: (self perform: (each asString,'EffectOn:') asSymbol with: anEffect);
				with: each ] ].
