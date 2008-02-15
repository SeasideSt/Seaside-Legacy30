rendering
renderNavElementsOn: html
	html div class: 'carousel-list'; id: uid; with: [self visibleItems withIndexDo: 
						[:element :index | 
							self renderElement: element index: index on: html] ]
