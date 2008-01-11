rendering
renderRowIndent: anObject level: anInteger on: html
	"use an html table for each row to avoid line breaks in IE and overlapping in firefox"
	html tableData: [
			html div style: ('width:', (anInteger * 14) asString,'px')].
	html tableData: [
		html div class: 'indent'; with: [
			(expandableBlock value: anObject) ifTrue: [
				html anchor
					class: 'expanded' if: (expanded includes: anObject);
					onClick: (html evaluator 
						callback: [ :script | self toggle: anObject level: anInteger on: script ];
						return: false) ] ] ]