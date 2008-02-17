rendering
renderElement: element index: index on: html
	| currentId active |
	currentId := self uid: 'head' at: index.
	active := self selected = element.
 	html div id: currentId;
		class: 'active' if: active;
		style: 'height:', self elementHeight asString, 'px';
		with: [html anchor onClick: ((html evaluator)
						callback: [:script | self scriptSelected: element id: currentId on: script];
							return: false);
							callback: [self selected: element];
				with: [html div: element label]]