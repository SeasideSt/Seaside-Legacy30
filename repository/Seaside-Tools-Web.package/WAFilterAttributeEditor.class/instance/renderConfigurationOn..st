rendering
renderConfigurationOn: html
	| filters |
	filters := self configuration.
	filters isEmpty ifTrue: [ html div: 'No filters are defined.' ].
	html table
		cellspacing: 0;
		cellpadding: 0;
		with: [
				filters do: [ :each |
					html tableRow: [
						html tableData: each class name.
						html tableData: [
							(each isKindOf: WAConfiguredRequestFilter)
								ifTrue: [
									html anchor
										callback: [ self show: (WAUserConfigurationEditor on: each configuration) ];
										with: 'Configure' ]] ] ] ]