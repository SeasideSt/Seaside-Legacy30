rendering
renderActionsOn: html
	(html span)
		class: 'action';
		with:
				[ self hasAdvancedAttributes
						ifTrue:
							[ (html anchor)
								class: 'minus' if: self displayAdvancedAttributes;
								class: 'plus' if: self displayAdvancedAttributes not;
								title: 'Show / Hide advanced attributes';
								callback: [ self toggleAdvanced ] ].
					html space.
					(html anchor)
						class: 'down' if: self collapsed;
						class: 'up' if: self collapsed not;
						title: 'Collapse / Expand';
						callback: [ self toggleVisbility ].
					html space.
					(self class helpTextFor: group) isNil
						ifFalse:
							[ (html anchor)
								class: 'help';
								title: 'Show / Hide Help';
								callback: [ self toggleHelp ] ] ]