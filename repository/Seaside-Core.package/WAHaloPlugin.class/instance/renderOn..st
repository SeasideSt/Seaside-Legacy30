rendering
renderOn: html
	html div
		class: self cssClass;
		with: [ super renderOn: html ]