rendering
renderActionsOn: html
	html span class: 'action';
		with: [
		self hasAdvancedAttributes
			ifTrue: [
				html anchor
					class: 'minus' if: self displayAdvancedAttributes;
					class: 'plus' if: self displayAdvancedAttributes not;
					title: 'Show / Hide advanced attributes';
					callback: [self displayAdvancedAttributes: self displayAdvancedAttributes not.
								self displayAdvancedAttributes ifTrue: [self collapsed: false ] ] ].
			html space.
			html anchor
				class: 'down' if: self collapsed;
				class: 'up' if: self collapsed not;
				title: 'Collapse / Expand';
				callback: [self collapsed: self collapsed not.
						self collapsed ifTrue: [self showHelp: false ] ].
			html space.
			(self class helpTextFor: group) isNil ifFalse: [
				html anchor
					class: 'help';
					title: 'Show / Hide Help';
					callback: [self showHelp: self showHelp not.
								self showHelp ifTrue: [self collapsed: false] ] ] ]