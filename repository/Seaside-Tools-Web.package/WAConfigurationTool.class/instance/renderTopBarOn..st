rendering
renderTopBarOn: html
	| app |
	html div style: 'background:#ccc;height:20px;padding:6px 5px 2px 6px';
		with: [
			app := component selection.
			app ifNotNil: [
				app isApplication 
					ifTrue: [
						html span style: 'border:1px;background:#bbb;width:120px;padding:4px; -moz-border-radius: 5px; -webkit-border-radius: 5px;'; with: [
							html anchor 
								url: component selection basePath , '/'; 
								with: 'Open' ] ] ].
			html space.
			((WADispatcherCommand allSubclassesOn: component selection for: component)
				select: [ :each | each isActive ])
					do: [ :each | html span style: 'border:1px;background:#bbb;width:120px;padding:4px; -moz-border-radius: 5px; -webkit-border-radius: 5px;'; with: [html render: each ]]
					separatedBy: [ html space] ]