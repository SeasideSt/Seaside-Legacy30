rendering
renderTopBarOn: html
	| app |
	html div class: 'topbar';
		with: [
			app := component selection.
			app ifNotNil: [
				app isApplication 
					ifTrue: [
							html anchor 
								class: 'wa-action';
								url: app basePath , '/'; 
								with: 'Open'.
							html space. ] ].
			((WADispatcherCommand allSubclassesOn: app for: component)
				select: [ :each | each isActive ])
					do: [ :each | html render: each ]
					separatedBy: [ html space] ]