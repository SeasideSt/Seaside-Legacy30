rendering
renderContentOn: html
	html div
		script: html jQuery new accordion;
		with: [
			self berries keysAndValuesDo: [ :name :description |
				html heading
					level: 3;
					with: [ html anchor: name ].
				html div: [ 
					html paragraph: description ] ] ]