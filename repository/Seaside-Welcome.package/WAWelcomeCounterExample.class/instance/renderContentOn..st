rendering
renderContentOn: html
	html heading level1 with: 'Counter'.
	html paragraph: 'The counter is an example of a simple Seaside component. It increments and decrements a number by clicking on a link. Test the example below by clicking on the "++" and "--" links:'.

	html div class: #seasideExample; with: counter.

	html paragraph: [		
		html text: 'This application is coded in two short methods. It is implemented in class ';	code: 'WACounter';  text: ', a subclass of '; code: 'WAComponent'
	].

	html paragraph: 'The first method initializes the counter to 0:'.

	self renderInitializeCodeOn: html.
	
	html paragraph: 'The second method is used to generate the output. It also assigns the actions to the anchors (links) that update the current value.'.
	
	self renderRenderContentOnCodeOn: html.
	
