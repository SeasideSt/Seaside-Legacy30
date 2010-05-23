rendering
renderContentOn: html
	html heading level1 with: 'Task'.
	html paragraph: [
		html text: 'Complex, multi-page workflows can be expressed in Seaside with a single method. Unlike many web frameworks  which require a separate handler for each page or request, Seaside models an entire user session as a continuous piece of code, with natural, linear control flow.'.
	].

	html div class: #seasideExample; with: [ html render: taskExample].
		
	html paragraph: [		
		html text: 'This example subclasses '; code: 'WATask'; text: ' and implements the hook method '; code: '#go'.
		html text: '. We store the users choice in an instance variable named '; code: 'cheese.'.
	].

	self renderGoCodeOn: html.
	
	html paragraph with: [
		html text: 'To let the user choose from a famous Swiss cheese we use the convenience method '; code: '#chooseFrom:caption:'; text: ' which returns the chosen element from a collection or nil if the user cancelled the dialog. In this case we simply ask again.'
		].
	
	self renderChooseCheeseCodeOn: html.
	
	html paragraph: [
		html text: 'Then we let the user confirm his choice. '; code: '#confirm:'; text: ' answers a '; code: 'boolean'; text: ', '; code: 'true'; text:' or '; code: 'false'; text:':'.
		].
	
	self renderConfirmCheeseCodeOn: html.
	
	html paragraph: [
		html text: 'Finally we display the user''s choice using '; code: '#inform:.'.
		].
	
	self renderInformCheeseCodeOn: html.
	
	html paragraph: 'As simple as that. And yes, the back button still works.'
		
