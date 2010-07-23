rendering-steps
renderFirstComponentStepOn: html
	html heading
		level2
		with: 'Create your first component'.
		
	html render: self componentCreator
