rendering
renderElement: element index: index on: html
	| currentId |
	currentId := self uid: 'head' at: index.
 	html div id: currentId;
		class: 'carousel-element';
		class: self cssFloat;
		style: 'margin:' ,elementMargin asString ,'px;height:', self elementHeight asString, 'px;width:', self elementWidth asString ,'px;';
		with: element