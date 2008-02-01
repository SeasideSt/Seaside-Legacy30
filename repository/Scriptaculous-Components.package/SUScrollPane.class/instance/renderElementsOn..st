rendering
renderElementsOn: html
	| moveId containerId | 
	moveId := html nextId.
	containerId := html nextId.
	html div class: 'nav'; with: [
		html div id: containerId; onMouseOver: 'speed=pausespeed';onMouseOut: 'speed=marqueespeed';
			 style: 'height:',self innerHeight asString, 'px'; class: 'inner';
			with: [html div id: moveId; class: 'move';
				with: [elements withIndexDo: 
						[:element :index | 
							self renderElement: element on: html] ] ] ].
	html script: self defineScript.		
	html script: self scrollScript.
	html script: (self initScriptFor: moveId container: containerId).
	self session addLoadScript: 'initializemarquee()'. 
	