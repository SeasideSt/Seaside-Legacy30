rendering
renderContentOn: html
	uid := html nextId.
	html div class: self cssClass; 
		with: [
		html table cellspacing: 0; cellpadding:0; with: [
			html tableRow: [
				html tableData: [self renderTitleOn: html ]].
			html tableRow: [
				html tableData: [self renderElementsOn: html].
		 ] ] ] 