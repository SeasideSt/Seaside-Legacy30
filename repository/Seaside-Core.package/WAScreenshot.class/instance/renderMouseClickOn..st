rendering
renderMouseClickOn: html
	html div: [
		html map
			id: #pictureMap;
			title: 'Click here';
			callback: [ :point | self click: point + self offset];
			with: [
				html image
					form: self form ] ]