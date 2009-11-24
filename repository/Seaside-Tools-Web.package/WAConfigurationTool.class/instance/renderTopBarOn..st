rendering
renderTopBarOn: html 
	| handler |
	html div
		class: 'topbar';
		with: 
			[ handler := component selection.
			handler isNil ifFalse: 
				[ html anchor
					class: 'wa-action';
					url: handler url;
					with: 'Open'.
				html space ].
			((WAConfigurationToolPlugin 
				allSubclassesOn: handler
				for: component) select: [ :each | each isActive ]) 
				do: [ :each | html render: each ]
				separatedBy: [ html space ] ]