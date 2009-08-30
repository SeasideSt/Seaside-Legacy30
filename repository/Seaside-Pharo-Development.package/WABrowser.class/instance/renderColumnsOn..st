rendering
renderColumnsOn: html
	html div class: 'columns'; with: [
		self columns do: [ :each |
			html form class: 'column'; with: [
				| array |
				array := self model perform: (each , 'List') asSymbol.
				html div: [
					html select
						size: 10;
						list: array;
						onChange: 'submit()';
						selected: (array
							at: (self model perform: (each , 'ListIndex') asSymbol)
							ifAbsent: [ nil ]);
						callback: [ :item |
							self model
								perform: (each , 'ListIndex:') asSymbol
								with: (array indexOf: item) ] ] ] ] ] 