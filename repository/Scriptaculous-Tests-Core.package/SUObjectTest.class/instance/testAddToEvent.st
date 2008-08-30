testing-rendering
testAddToEvent
	self 
		assert: [ :html | html div onClick: html element remove ]
		renders: '<div onclick="$(this).remove()"></div>'.
	self 
		assert: [ :html | html div onMouseOut: html element remove ]
		renders: '<div onmouseout="$(this).remove()"></div>'.
	self 
		assert: [ :html | html div onKeyUp: html element remove ]
		renders: '<div onkeyup="$(this).remove()"></div>'