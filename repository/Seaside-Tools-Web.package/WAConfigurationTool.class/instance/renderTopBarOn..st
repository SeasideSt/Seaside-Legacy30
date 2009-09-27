rendering
renderTopBarOn: html
	html div style: 'background:#ccc;height:20px;padding:6px 5px 2px 6px';
		with: [
			((WADispatcherCommand allSubclassesOn: component for: self)
				select: [ :each | each isActive ])
					do: [ :each | html span style: 'border:1px;background:#bbb;width:120px;padding:4px; -moz-border-radius: 5px; -webkit-border-radius: 5px;'; with: [html render: each ]]
					separatedBy: [ html space] ]