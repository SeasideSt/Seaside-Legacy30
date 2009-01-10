rendering
renderContentOn: html
	html form: [
		self
			renderInputForSelector: #expiryPolicy
			withLabel: 'Expiry Policy'
			options: WACacheExpiryPolicy withAllSubclasses
			on: html.
		self
			renderInputForSelector: #reapingStrategy
			withLabel: 'Reaping Strategy'
			options: WACacheReapingStrategy withAllSubclasses
			on: html.
		self
			renderInputForSelector: #reapAction
			withLabel: 'Reap Action'
			options: WACacheReapAction withAllSubclasses
			on: html.
		self
			renderInputForSelector: #missStrategy
			withLabel: 'Cache Miss Strategy'
			options: WACacheMissStrategy withAllSubclasses
			on: html.
		
		html submitButton
			callback: [ self answer: self cache ];
			with: 'Create Cache'.
		html button
			callback: [ self answer: nil ];
			with: 'Cancel' ]