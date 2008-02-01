rendering
renderTitleOn: html
"html request callback: [:v | currentHeight := v asNumber] value: (html element id: self mainId; styleAt: 'top')"

	html anchor class: 'title'; 
		callback: [open := open not];
		onClick: ((html evaluator)
						callback: [ :script | self scriptToggleOn: script];
						return: false);
		 with: [html table style: 'width:100%'; cellspacing: 0; with: [
				html tableRow: [
						html tableData style: 'white-space:nowrap'; with: title.
						html tableData align: 'right'; with: [html div id: 'gfx',uid; class: 'gfxopen' if: open; class: 'gfx' if: open not].
						] ] ]