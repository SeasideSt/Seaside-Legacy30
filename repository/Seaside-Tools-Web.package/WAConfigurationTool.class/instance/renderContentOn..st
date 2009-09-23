rendering
renderContentOn: html
	html div style: 'border:1px solid #222';
		with: [
		html table 
			class: 'wa-config';
			cellpadding: 0;
			cellspacing: 0; with: [
			html tableRow: [
				html tableData style: 'width:100%'; with: [	self renderHeadingOn: html.].
				html tableData rowSpan: 2; with: [self renderLogoOn: html] ].
			html tableRow: [
				html tableData: [self renderTopBarOn: html.]]].
			
			html div style: 'padding:0px';
				with: [ self renderComponentOn: html ] ] 