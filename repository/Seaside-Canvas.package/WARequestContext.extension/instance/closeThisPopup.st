*seaside-canvas
closeThisPopup
	^self response nextPutAll: (
		WAHtmlCanvas builder
			fullDocument: true;
			rootBlock: [:root | 
				root beXhtml10Strict.
				root htmlAttributes at: 'xmlns' put: 'http://www.w3.org/1999/xhtml'.
				root title: 'Seaside'];
			render: [:html | html script: 'self.close()'] );
		respond