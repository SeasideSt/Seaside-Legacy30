rendering
renderNavElementsOn: html
	| theColors |
	theColors := Color wheel: items size.
	html div class: 'carousel-list'; id: uid; with: [self visibleItems withIndexDo: 
						[:element :index | 
							self renderElement: element index: index color: (theColors at: index) on: html] ]
