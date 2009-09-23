rendering
renderTopBarOn: html
	| app |
	html div style: 'background:#ccc;height:22px;padding:8px 2px 1px 3px';
		with: [
			app := component selection.
			app ifNotNil: [
				app isApplication 
					ifTrue: [
							html anchor 
								class: 'wa-action';
								url: component selection basePath , '/'; 
								with: 'Open'.
							html space. ] ].
			((WADispatcherCommand allSubclassesOn: component selection for: component)
				select: [ :each | each isActive ])
					do: [ :each | html render: each ]
					separatedBy: [ html space] ]