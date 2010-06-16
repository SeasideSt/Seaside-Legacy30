rendering
renderContentOn: html
	html heading
		level1;
		with: 'Getting started'.
			
	html heading
		level2
		with: 'Test the water with the steps below:'.
				
	html orderedList: [
		html listItem: [ self renderStepOneOn: html ].
		html listItem: [ self renderStepTwoOn: html ].
		html listItem: [ self renderStepThreeOn: html ]			
	]
