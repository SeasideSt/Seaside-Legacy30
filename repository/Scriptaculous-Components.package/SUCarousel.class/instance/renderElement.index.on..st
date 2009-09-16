rendering
renderElement: element index: index on: html
	| currentId |
	currentId := self uid: 'head' at: index.
 	html div id: currentId;
		class: 'carousel-element';
		class: self cssFloat;
		style: 'margin:' ,elementMargin seasideString ,'px;height:', self elementHeight seasideString, 'px;width:', self elementWidth seasideString ,'px;';
		with: element