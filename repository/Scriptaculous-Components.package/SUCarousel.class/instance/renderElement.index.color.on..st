rendering
renderElement: element index: index color: aColor on: html
	| currentId |
	currentId := self uid: 'head' at: index.
 	html div id: currentId;
		class: 'carousel-element';
		style: 'margin:5px;height:', self elementHeight asString, 'px;width:', self elementWidth asString ,'px;background:',aColor asHTMLColor ;
		with: [html render: element]