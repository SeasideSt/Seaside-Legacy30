rendering
renderYearNavigationOn: html
	html table style: 'width:100%'; cellspacing:0; with: [	
		html tableRow: [
			html tableData class: 'year';
			with: [
			html anchor
				callback: [self previousYear];
				onClick:	((html evaluator)
						callback: [:script | self previousYear. self scriptUpdateOn: script];
							return: false);
				with: (self year - 1) ].
			html tableData class: 'year'; class: 'yearCurrent'; with: (self year name).
			html tableData
				class: 'year';
				with: [
			html anchor
				callback: [self nextYear];
				onClick: ((html evaluator)
						callback: [:script | self nextYear. self scriptUpdateOn: script];
							return: false);
				with: (self year + 1) ] ] ]