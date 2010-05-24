rendering
renderContentOn: html
	self renderHeaderBarOn: html.
	html div
		class: #content;
		with: [
			self renderIntroTextOn: html.	
			html table
				class: #introTable;
				with: [ 
					html tableRow:[ 
						html tableData: [ self renderNewToSeasideOn: html ].
						html tableData: [
							self renderExperiencedUserOn: html.
							self renderConfigurationOn: html ] ] ].
		self renderExampleOn: html ]

