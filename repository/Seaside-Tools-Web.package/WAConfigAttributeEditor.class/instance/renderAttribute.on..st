rendering
renderAttribute: anAttribute on: html
	(anAttribute isAdvanced not or: [self displayAdvancedAttributes])
		ifTrue: [
			html tableRow: [
				( self isCollectionAttribute: anAttribute )
					ifTrue: [html tableData
									colSpan: 2;
									with: [
										html label
											title: anAttribute comment;
											with: anAttribute label.
										html break.
										self renderFieldsForAttribute: anAttribute on: html ].]
					ifFalse: [
						html tableHeading: [
								html label
									title: anAttribute comment;
									with: anAttribute label ].
						html tableData: [self renderFieldsForAttribute: anAttribute on: html] ] ] ]