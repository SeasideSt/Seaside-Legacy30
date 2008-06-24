rendering
renderTitleOn: html

	html table class: 'title'; style: 'width:100%'; cellspacing: 0; with: [
				html tableRow: [
						html tableData style: 'width:100%'; class: 'label'; with: title.
						html tableData: [
							html anchor onClick: ((html evaluator)
													callback: [ :script | self scriptCloseOn: script];
													return: false);
										 with: 'X'].
						] ] 
