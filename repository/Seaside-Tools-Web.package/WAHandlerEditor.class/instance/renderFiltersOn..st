rendering
renderFiltersOn: html
	| filters |
	html heading level: 1; with: 'Filters'.
	filters := self handler filters.
	filters isEmpty ifTrue: [ html div: '(none)' ].
	filters do: [ :each |
		html div: [
			html text: each class name; space.
			(each isKindOf: WAConfiguredRequestFilter) ifTrue: [
				html anchor
					callback: [ self show: (WAUserConfigurationEditor on: each configuration) ];
					with: '(configure)' ] ] ].
	html break