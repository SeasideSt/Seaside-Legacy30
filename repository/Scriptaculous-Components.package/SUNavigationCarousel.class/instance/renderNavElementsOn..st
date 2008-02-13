rendering
renderNavElementsOn: html
	| moveId |
	moveId := html nextId.
	html div class: 'nav';
		with: [html div style: 'height:',self innerHeight asString, 'px'; class: 'inner';
			with: [html div id: moveId; class: 'move';
				with: [items withIndexDo: 
						[:element :index | 
							self renderElement: element index: index on: html] ] ].
				self renderActionsForId: moveId on: html  ] 