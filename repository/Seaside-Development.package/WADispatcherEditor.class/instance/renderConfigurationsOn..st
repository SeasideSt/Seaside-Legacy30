rendering-parts
renderConfigurationsOn: html
	html heading level: 2; with: 'Shared Configurations'.
	html form: [
		html unorderedList: [
			self sharedConfiguration configurations do: [ :each |
				html listItem: [
					html anchor
						callback: [ self editConfiguration: each ];
						with: each name.
					html space.
					html anchor
						callback: [ self removeConfiguration: each ];
						with: [ html html: '&times;' ] ] ] ].
		html textInput
			callback: [ :value | name := value ].
		html submitButton
			callback: [ self addConfiguration ];
			text: 'Add' ]