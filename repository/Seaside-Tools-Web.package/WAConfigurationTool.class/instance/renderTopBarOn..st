rendering
renderTopBarOn: html
	| app |
	html div class: 'topbar';
		with: [
			app := component selection.
			app isNil ifFalse: [
				app isApplication 
					ifTrue: [
							html anchor 
								class: 'wa-action';
								url: app basePath , '/'; 
								with: 'Open'.
							html space. ] ].
			((WADispatcherPlugin allSubclassesOn: app for: component)
				select: [ :each | each isActive ])
					do: [ :each | html render: each ]
					separatedBy: [ html space] ]