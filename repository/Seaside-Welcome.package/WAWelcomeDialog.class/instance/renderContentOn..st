rendering
renderContentOn: html
	html table class: 'welcome'; with: [ 
		html tableRow: [ 
			html tableData: [ self renderFirstStepsOn: html ].
			html tableData: [ self renderNextStepsOn: html ]
			]
		
		]